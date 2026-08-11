module Pages.Home_ exposing (Model, Msg, page)

import Cldr
import Effect exposing (Effect)
import Flags
import Html.WithContext as Html
import Html.WithContext.Attributes as Attributes
import Html.WithContext.Events as Events
import LanguageTag.Parser
import LanguageTag.Region
import List.Extra
import Maybe.Extra
import Page exposing (Page)
import Route exposing (Route)
import Shared
import Shared.Model exposing (Category(..), Continent(..), Country(..), Difficulty(..), GameOptions, Property(..), Screen)
import String.Extra
import Theme exposing (Attribute, Html, text)
import Translations exposing (I18n)
import View exposing (View)


page : Shared.Model -> Route () -> Page Model Msg
page shared _ =
    Page.new
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view shared
        }



-- INIT


type alias Model =
    { changingLocale : Maybe String }


init : () -> ( Model, Effect Msg )
init _ =
    ( { changingLocale = Nothing }
    , Effect.none
    )



-- UPDATE


type Msg
    = Play
    | ChangeOptions GameOptions
    | ChangingLocale String
    | Locale String


update : Msg -> Model -> ( Model, Effect Msg )
update msg model =
    case msg of
        ChangeOptions options ->
            ( model
            , Effect.changeOptions options
            )

        Locale locale ->
            ( { model | changingLocale = Nothing }
            , Effect.locale locale
            )

        Play ->
            ( model
            , Effect.play
            )

        ChangingLocale locale ->
            ( { model | changingLocale = Just locale }
            , Effect.none
            )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


propertyToString : Property -> I18n -> String
propertyToString property =
    case property of
        Name ->
            Translations.name

        Flag ->
            Translations.flag


changingLocalePopup : String -> Html Msg
changingLocalePopup input =
    let
        nonButton : List (Attribute msg)
        nonButton =
            [ Attributes.style "border-radius" "40px"
            , Attributes.style "border" "1px solid #987850"
            , Attributes.style "color" "white"
            , Theme.padding
            ]

        localeButton : String -> List (Attribute Msg) -> Html Msg -> Html Msg
        localeButton locale attrs label =
            Theme.button attrs
                { background = Nothing
                , label = label
                , onPress = Just <| Locale locale
                }

        flagLabel : String -> { locale : String, nativeName : String, englishName : String } -> Maybe (Html msg)
        flagLabel title { locale, nativeName } =
            let
                cutName : String
                cutName =
                    nativeName
                        |> String.dropLeft (String.length title + 3)

                flagWidth : number
                flagWidth =
                    40

                parensContent : Html msg
                parensContent =
                    if
                        String.contains "(" cutName
                            && not (String.contains "DRC" cutName)
                    then
                        cutName
                            |> String.Extra.leftOfBack ")"
                            |> String.Extra.rightOf "("
                            |> String.Extra.toSentenceCase
                            |> Theme.textInvariant

                    else
                        Theme.textInvariant ""

                unsafeFlag : String -> ( Int, Int ) -> Html msg
                unsafeFlag alpha2 aspectRatio =
                    Theme.row
                        [ Attributes.style "min-height" "26px"
                        ]
                        [ Theme.viewFlagUnsafe
                            [ Attributes.title alpha2 ]
                            { filename = String.toLower alpha2
                            , aspectRatio = aspectRatio
                            , width = flagWidth
                            }
                        , parensContent
                        ]
            in
            case localeToCountry locale of
                FoundCountry "001" ->
                    Just <| unsafeFlag "001" ( 1, 1 )

                FoundCountry alpha2 ->
                    case Cldr.fromAlpha2 alpha2 of
                        Just countryCode ->
                            Theme.row
                                [ Attributes.style "min-height" "26px"
                                ]
                                [ Theme.viewFlag
                                    [ Attributes.title alpha2
                                    ]
                                    { country = Iso3166 countryCode
                                    , width = flagWidth
                                    }
                                , parensContent
                                ]
                                |> Just

                        Nothing ->
                            if alpha2 == "419" then
                                Nothing

                            else if String.isEmpty cutName then
                                -- let _ = Debug.log "ALPHA2 NOT FOUND" { alpha2 = alpha2, locale = locale } in
                                Nothing

                            else
                                Theme.textInvariant cutName |> Just

                FoundRegion "GB-WLS" ->
                    Just <| unsafeFlag "GB-WLS" ( 5, 3 )

                FoundRegion "GB-SCT" ->
                    Just <| unsafeFlag "GB-SCT" ( 5, 3 )

                FoundRegion "ES-EU" ->
                    Just <| unsafeFlag "ES-EU" ( 25, 14 )

                FoundRegion alpha2 ->
                    Just <| unsafeFlag alpha2 ( 3, 2 )

                NotFound ->
                    if String.isEmpty cutName then
                        -- let _ = Debug.log "ALPHA2 NOT FOUND" { locale = locale } in
                        Nothing

                    else if Just nativeName == Cldr.localeToNativeName "el-polyton" then
                        Theme.row
                            []
                            [ Theme.viewFlag []
                                { country = Iso3166 Cldr.GR
                                , width = flagWidth
                                }
                            , Theme.textInvariant "Πολυτονικό"
                            ]
                            |> Just

                    else
                        Theme.textInvariant cutName |> Just

        nativeNameToTitle : String -> String
        nativeNameToTitle nativeName =
            if Just nativeName == Cldr.localeToNativeName "el-polyton" then
                Maybe.withDefault "" (Cldr.localeToNativeName "el")

            else if nativeName == "Српски" then
                "Српски (ћирилица)"

            else
                nativeName
                    |> String.split "-"
                    |> List.head
                    |> Maybe.withDefault ""
                    |> String.trim

        viewGroup :
            ( { locale : String, nativeName : String, englishName : String }
            , List { locale : String, nativeName : String, englishName : String }
            )
            -> Html Msg
        viewGroup ( first, rest ) =
            let
                title : String
                title =
                    nativeNameToTitle first.nativeName

                mainTitle : String
                mainTitle =
                    if title == first.englishName then
                        title

                    else
                        title ++ " (" ++ first.englishName ++ ")"
            in
            if List.isEmpty rest then
                localeButton first.locale
                    [ Attributes.title mainTitle
                    ]
                    (Theme.column
                        [ Attributes.lang first.locale
                        ]
                        (case flagLabel title first of
                            Nothing ->
                                [ Theme.textInvariant title ]

                            Just label ->
                                [ Theme.textInvariant title
                                , Html.div nonButton [ label ]
                                ]
                        )
                    )

            else
                let
                    group : List { locale : String, nativeName : String, englishName : String }
                    group =
                        first :: rest

                    ( mains, others ) =
                        List.partition (\{ nativeName } -> nativeName == title) group

                    flagsFirst : { a | locale : String } -> number
                    flagsFirst { locale } =
                        case localeToCountry locale of
                            FoundCountry alpha2 ->
                                if Cldr.fromAlpha2 alpha2 == Nothing then
                                    1

                                else
                                    0

                            FoundRegion _ ->
                                0

                            NotFound ->
                                1

                    otherItems : List (Html Msg)
                    otherItems =
                        (mains ++ List.sortBy flagsFirst others)
                            |> List.filterMap
                                (\pair ->
                                    flagLabel title pair
                                        |> Maybe.map
                                            (localeButton pair.locale
                                                [ Attributes.style "align-self" "center" ]
                                            )
                                )
                in
                Theme.column
                    (Attributes.title mainTitle
                        :: Attributes.lang first.locale
                        :: nonButton
                    )
                    [ Theme.textInvariant title
                    , Theme.wrappedRow [] otherItems
                    ]
    in
    Theme.column
        [ Theme.padding, Attributes.style "background" "#C79D69" ]
        [ Html.label
            [ Attributes.style "display" "flex"
            , Attributes.style "flex-wrap" "wrap"
            , Theme.spacing
            ]
            [ Theme.text Translations.search
            , Html.input
                [ Events.onInput ChangingLocale
                , Attributes.value input
                , Attributes.style "flex" "1 0"
                ]
                []
            ]
        , Cldr.allNontrivialLocales
            |> List.filterMap
                (\locale ->
                    Maybe.map2
                        (\nativeName englishName ->
                            { locale = locale
                            , nativeName = String.Extra.toSentenceCase nativeName
                            , englishName = String.Extra.toSentenceCase englishName
                            }
                        )
                        (Cldr.localeToNativeName locale)
                        (Cldr.localeToEnglishName locale)
                )
            |> List.filter
                (\{ nativeName } ->
                    String.contains (String.toLower input) (String.toLower nativeName)
                )
            |> List.sortBy .nativeName
            |> List.Extra.gatherEqualsBy (\{ nativeName } -> nativeNameToTitle nativeName)
            |> List.map viewGroup
            |> Theme.wrappedRow [ Theme.padding ]
        ]


type MaybeCountry
    = FoundCountry String
    | FoundRegion String
    | NotFound


localeToCountry : String -> MaybeCountry
localeToCountry locale =
    let
        extractCountry : String -> Maybe MaybeCountry
        extractCountry input =
            input
                |> LanguageTag.Parser.parseBcp47
                |> Maybe.andThen (\( _, { region } ) -> Maybe.map LanguageTag.Region.toCodeString region)
                |> Maybe.map FoundCountry
    in
    case String.split "-" locale of
        "ca" :: _ ->
            FoundRegion "ES-CT"

        "cy" :: _ ->
            FoundRegion "GB-WLS"

        "eu" :: _ ->
            FoundRegion "ES-EU"

        "gd" :: _ ->
            FoundRegion "GB-SCT"

        "gl" :: _ ->
            FoundRegion "ES-GA"

        _ ->
            extractCountry locale
                |> Maybe.Extra.orElseLazy
                    (\_ ->
                        locale
                            |> Cldr.likelySubtags
                            |> Maybe.andThen extractCountry
                    )
                |> Maybe.withDefault NotFound


view : Shared.Model -> Model -> View Msg
view shared model =
    [ case model.changingLocale of
        Just changing ->
            changingLocalePopup changing

        Nothing ->
            Theme.grid [ Theme.padding ]
                { elements =
                    mainMenuRows shared.options
                        |> List.concatMap
                            (\( label, options ) ->
                                let
                                    elements =
                                        case List.length options |> modBy 3 of
                                            2 ->
                                                let
                                                    ( lasts, previous ) =
                                                        options
                                                            |> List.reverse
                                                            |> List.Extra.splitAt 2
                                                            |> Tuple.mapBoth List.reverse List.reverse
                                                in
                                                List.map (\f -> f 2) previous
                                                    ++ List.map (\f -> f 3) lasts

                                            1 ->
                                                let
                                                    ( lasts, previous ) =
                                                        options
                                                            |> List.reverse
                                                            |> List.Extra.splitAt 4
                                                            |> Tuple.mapBoth List.reverse List.reverse
                                                in
                                                List.map (\f -> f 2) previous
                                                    ++ List.map (\f -> f 3) lasts

                                            _ ->
                                                List.map (\f -> f 2) options
                                in
                                [ Html.div
                                    [ Attributes.style "align-self" "center"
                                    , if shared.screen.width > 750 then
                                        Attributes.style "justify-self" "start"

                                      else
                                        Attributes.style "justify-self" "center"
                                    ]
                                    [ label ]
                                , Theme.grid
                                    [ Attributes.style "justify-self" "stretch" ]
                                    { widths = List.repeat 6 "auto"
                                    , elements = elements
                                    }
                                ]
                            )
                , widths =
                    if shared.screen.width > 750 then
                        [ "auto 1fr" ]

                    else
                        [ "1fr" ]
                }
    ]


mainMenuRows :
    GameOptions
    -> List ( Html Msg, List (Int -> Html Msg) )
mainMenuRows options =
    [ radios Translations.difficulty
        { toLabel = difficultyToString
        , all = [ Easy, Normal, Hard ]
        , get = .difficulty
        , set = \v -> { options | difficulty = v }
        }
    , checkboxes Translations.guess
        { toLabel =
            \( f, t ) i18n ->
                propertyToString f i18n
                    ++ " → "
                    ++ propertyToString t i18n
        , all = Shared.Model.allGuessPatterns
        , get = .guessPatterns
        , set = \v -> { options | guessPatterns = v }
        }
    , radios Translations.possibleAnswers
        { toLabel = \i _ -> String.fromInt i
        , all = [ 4, 6, 8 ]
        , get = .answersPerCard
        , set = \v -> { options | answersPerCard = v }
        }
    , checkboxes Translations.include
        { toLabel =
            \sovereignty ->
                case sovereignty of
                    State ->
                        Translations.states

                    Territory ->
                        Translations.territories

                    PartiallyRecognized ->
                        Translations.partiallyRecognized

                    Historical ->
                        Translations.historical
        , all = Shared.Model.allCategories
        , get = .categories
        , set = \v -> { options | categories = v }
        }
    , radios Translations.gameLength
        { toLabel = \i _ -> String.fromInt i
        , all =
            let
                maxLength : Int
                maxLength =
                    List.length <| Flags.all options
            in
            [ Shared.Model.defaultGameLength, 100, maxLength ]
                |> List.map (min maxLength)
                |> List.Extra.unique
        , get = .gameLength
        , set = \v -> { options | gameLength = v }
        }
    , ( Translations.gameLanguage
      , \_ ->
            [ \span ->
                Html.withContext
                    (\context ->
                        Theme.selectableButton
                            [ Attributes.style "grid-column-end" ("span " ++ String.fromInt span) ]
                            { selected = True
                            , label =
                                \_ ->
                                    Cldr.localeToNativeName context.locale
                                        |> Maybe.withDefault "English"
                                        |> String.Extra.toSentenceCase
                            , onPress = Locale context.locale
                            }
                    )
            , \span ->
                Theme.selectableButton
                    [ Attributes.style "grid-column-end" ("span " ++ String.fromInt span) ]
                    { selected = False
                    , label = Translations.change
                    , onPress = ChangingLocale ""
                    }
            ]
      )
    , checkboxes Translations.continents
        { toLabel =
            \continent ->
                case continent of
                    Africa ->
                        Translations.africa

                    Antarctica ->
                        Translations.antarctica

                    Asia ->
                        Translations.asia

                    Europe ->
                        Translations.europe

                    NorthAmerica ->
                        Translations.northAmerica

                    Oceania ->
                        Translations.oceania

                    SouthAmerica ->
                        Translations.southAmerica
        , all = [ Africa, Asia, Europe, NorthAmerica, Oceania, SouthAmerica ]
        , get = .continents
        , set = \v -> { options | continents = v }
        }
    , ( \_ -> ""
      , let
            filler : Int -> Html msg
            filler span =
                Theme.button
                    [ Attributes.style "visibility" "hidden"
                    , Attributes.style "grid-column-end" ("span " ++ String.fromInt span)
                    ]
                    { background = Nothing
                    , label = Theme.textInvariant ""
                    , onPress = Nothing
                    }
        in
        \_ ->
            [ filler
            , \span ->
                Theme.button [ Attributes.style "grid-column-end" ("span " ++ String.fromInt span) ]
                    { background = Nothing
                    , label = text Translations.play
                    , onPress = Just Play
                    }
            , filler
            ]
      )
    ]
        |> List.map
            (\( label, cells ) ->
                ( Html.p [] [ text label ]
                , cells options
                )
            )


checkboxes :
    (I18n -> String)
    ->
        { get : GameOptions -> List v
        , toLabel : v -> I18n -> String
        , set : List v -> GameOptions
        , all : List v
        }
    ->
        ( I18n -> String
        , GameOptions -> List (Int -> Html Msg)
        )
checkboxes label config =
    ( label
    , \options ->
        let
            current : List v
            current =
                config.get options

            toButton : v -> Int -> Html Msg
            toButton value span =
                let
                    selected : Bool
                    selected =
                        List.member value current
                in
                Theme.selectableButton [ Attributes.style "grid-column-end" ("span " ++ String.fromInt span) ]
                    { label = config.toLabel value
                    , selected = selected
                    , onPress =
                        ChangeOptions <|
                            config.set <|
                                if selected then
                                    List.Extra.remove value current

                                else
                                    value :: current
                    }
        in
        List.map toButton config.all
    )


radios :
    (I18n -> String)
    ->
        { get : GameOptions -> v
        , toLabel : v -> I18n -> String
        , set : v -> GameOptions
        , all : List v
        }
    -> ( I18n -> String, GameOptions -> List (Int -> Html Msg) )
radios label config =
    ( label
    , \options ->
        let
            current : v
            current =
                config.get options
        in
        List.map
            (\value span ->
                let
                    selected : Bool
                    selected =
                        value == current
                in
                Theme.selectableButton
                    [ Attributes.style "grid-column-end" ("span " ++ String.fromInt span) ]
                    { label = config.toLabel value
                    , selected = selected
                    , onPress = ChangeOptions <| config.set value
                    }
            )
            config.all
    )


difficultyToString : Difficulty -> I18n -> String
difficultyToString difficulty =
    case difficulty of
        Easy ->
            Translations.easy

        Normal ->
            Translations.normal

        Hard ->
            Translations.hard
