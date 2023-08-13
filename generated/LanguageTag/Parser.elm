module LanguageTag.Parser exposing (parseBcp47, parseLanguageTag)

{-| Parse BCP 47 language tags.

@docs parseBcp47, parseLanguageTag

-}

import LanguageTag exposing (LanguageTag(..))
import LanguageTag.Country exposing (Country)
import LanguageTag.ExtendedLanguage exposing (ExtendedLanguage)
import LanguageTag.Internal as Internal
import LanguageTag.Language exposing (Language)
import LanguageTag.PrivateUse exposing (PrivateUse)
import LanguageTag.Script exposing (Script)
import LanguageTag.Variant exposing (Variant)


{-| This will attempt to parse the tag as a BCP47 tag. If it fails, it will construct a `LanguageTag` using `custom`, with no validation.
-}
parseLanguageTag : String -> LanguageTag
parseLanguageTag inputString =
    case parseBcp47 inputString of
        Just ( language, options ) ->
            LanguageTag.build options language

        Nothing ->
            LanguageTag.custom inputString


{-| Parse a BCP47 language tag.
-}
parseBcp47 : String -> Maybe ( Language, LanguageTag.Options )
parseBcp47 inputString =
    inputString
        |> String.split "-"
        |> parser
        |> Maybe.andThen
            (\( r, leftover ) ->
                if List.isEmpty leftover then
                    Just r

                else
                    Nothing
            )


type alias Parser v =
    List String -> Maybe ( v, List String )


parser : Parser ( Language, LanguageTag.Options )
parser =
    -- All parsers pretty much verbatim from RFC5646.
    succeed
        (\language script region variants extensions privateUse ->
            let
                options : LanguageTag.Options
                options =
                    { script = script
                    , region = region
                    , variants = variants
                    , extensions = extensions
                    , privateUse = privateUse
                    }
            in
            ( language
            , options
            )
        )
        |> keep languageParser
        |> keep (maybe scriptParser)
        |> keep (maybe regionParser)
        |> keep (many variantParser)
        |> keep (many extensionParser)
        |> keep (maybe privateUseParser)


languageParser : Parser Language
languageParser =
    [ succeed
        (\h t ->
            [ Just h, t ]
                |> List.filterMap identity
                |> String.join "-"
        )
        |> keep (xyAlpha 2 3)
        |> keep (maybe extlangParser)
    , xAlpha 4
    , xyAlpha 5 8
    ]
        |> oneOf
        |> map Internal.Language


extlangParser : Parser String
extlangParser =
    succeed
        (\h t1 t2 ->
            [ Just h, t1, t2 ]
                |> List.filterMap identity
                |> String.join "-"
        )
        |> keep (xAlpha 3)
        |> keep (maybe (xAlpha 3))
        |> keep (maybe (xAlpha 3))


scriptParser : Parser Script
scriptParser =
    xAlpha 4
        |> map Internal.Script


regionParser : Parser Country
regionParser =
    oneOf
        [ xAlpha 2
        , repeat 3 3 Char.isDigit
        ]
        |> map Internal.Country


variantParser : Parser Variant
variantParser =
    repeat 4 8 Char.isAlphaNum
        |> map Internal.Variant


extensionParser : Parser ExtendedLanguage
extensionParser =
    succeed (\h t -> h :: t |> String.join "-")
        |> keep singletonParser
        |> keep
            (some
                (repeat 2 8 Char.isAlphaNum)
            )
        |> map Internal.ExtendedLanguage


singletonParser : Parser String
singletonParser =
    pop <|
        \head ->
            case String.toList head of
                [ c ] ->
                    c /= 'x' && Char.isAlphaNum c

                _ ->
                    False


privateUseParser : Parser PrivateUse
privateUseParser =
    succeed identity
        |> ignore (symbol "x")
        |> keep (many (repeat 1 8 Char.isAlphaNum))
        |> map Internal.PrivateUse



-- HELPERS --


oneOf : List (Parser a) -> Parser a
oneOf parsers input =
    case parsers of
        [] ->
            Nothing

        head :: tail ->
            case head input of
                Nothing ->
                    oneOf tail input

                Just r ->
                    Just r


{-| Parser zero or one instances, prefixed by "-".
-}
maybe : Parser a -> Parser (Maybe a)
maybe p =
    oneOf
        [ succeed Just
            |> keep p
        , succeed Nothing
        ]


succeed : a -> Parser a
succeed value input =
    Just ( value, input )


map : (a -> b) -> Parser a -> Parser b
map f p input =
    p input
        |> Maybe.map (\( r, l ) -> ( f r, l ))


{-| `xALPHA`, where `x` is an integer.
-}
xAlpha : Int -> Parser String
xAlpha n =
    xyAlpha n n


xyAlpha : Int -> Int -> Parser String
xyAlpha from to =
    repeat from to Char.isAlpha


repeat : Int -> Int -> (Char -> Bool) -> Parser String
repeat from to cond =
    pop <|
        \head ->
            let
                len : Int
                len =
                    String.length head
            in
            (from <= len)
                && (len <= to)
                && List.all cond (String.toList head)


pop : (String -> Bool) -> Parser String
pop check input =
    case input of
        [] ->
            Nothing

        head :: tail ->
            if check head then
                Just ( head, tail )

            else
                Nothing


{-| Parser one or plus instances, prefixed by "-".
-}
some : Parser a -> Parser (List a)
some p =
    succeed (::)
        |> keep p
        |> keep (many p)


keep : Parser a -> Parser (a -> b) -> Parser b
keep second first input =
    first input
        |> Maybe.andThen
            (\( f, tail ) ->
                map f second tail
            )


ignore : Parser ignore -> Parser keep -> Parser keep
ignore second first input =
    first input
        |> Maybe.andThen
            (\( x, tail ) ->
                map (\_ -> x) second tail
            )


{-| Parse zero or plus instances, prefixed by "-".
-}
many : Parser a -> Parser (List a)
many p input =
    case p input of
        Nothing ->
            Just ( [], input )

        Just ( r, tail ) ->
            Maybe.map
                (\( tr, ttail ) -> ( r :: tr, ttail ))
                (many p tail)


symbol : String -> Parser String
symbol s =
    pop <| \head -> head == s
