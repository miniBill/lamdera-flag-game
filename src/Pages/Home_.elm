module Pages.Home_ exposing (Model, Msg(..), page)

import Cldr
import Effect exposing (Effect)
import Element.WithContext as Element exposing (alignTop, centerX, centerY, el, fill, height, image, inFront, px, rgb, rgb255, rgba, shrink, width)
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Flags
import Html.Attributes
import LanguageTag.Country
import LanguageTag.Parser
import List.Extra
import Maybe.Extra
import Page exposing (Page)
import Route exposing (Route)
import Shared
import Shared.Model exposing (Continent(..), Country(..), Difficulty(..), GameOptions, Property(..))
import String.Extra
import Theme exposing (Attribute, Element, text)
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


changingLocalePopup : Maybe String -> Element Msg
changingLocalePopup maybeInput =
    let
        nonButton : List (Attribute msg) -> Element msg -> Element msg
        nonButton attrs label =
            el
                ([ alignTop
                 , height <| Element.minimum 52 shrink
                 , Border.rounded 40
                 , Border.width 1
                 , Border.color <| rgb255 0x98 0x78 0x50
                 , Font.color (rgb 1 1 1)
                 , Theme.padding
                 ]
                    ++ attrs
                )
                label

        localeButton : Maybe String -> Element Msg -> Element Msg
        localeButton maybeLocale label =
            case maybeLocale of
                Just locale ->
                    Theme.button
                        [ alignTop
                        , height <| Element.minimum 52 shrink
                        ]
                        { background = Theme.colors.buttonBackground
                        , label = label
                        , onPress = Just <| Locale locale
                        }

                Nothing ->
                    nonButton [] label

        flagLabel : String -> { locale : String, nativeName : String } -> Maybe (Element msg)
        flagLabel title { locale, nativeName } =
            let
                cutName : String
                cutName =
                    nativeName
                        |> String.dropLeft (String.length title + 3)

                flagWidth : number
                flagWidth =
                    40
            in
            case localeToCountry locale of
                Just alpha2 ->
                    case Cldr.fromAlpha2 alpha2 of
                        Just countryCode ->
                            Theme.row
                                [ centerX
                                , centerY
                                , height <| px 26
                                ]
                                [ Theme.viewFlag [ centerX, centerY ]
                                    { country = Iso3166 countryCode
                                    , width = flagWidth
                                    }
                                , if
                                    String.contains "(" cutName
                                        && not (String.contains "DRC" cutName)
                                  then
                                    cutName
                                        |> String.Extra.leftOfBack ")"
                                        |> String.Extra.rightOf "("
                                        |> String.Extra.toSentenceCase
                                        |> Theme.textInvariant

                                  else
                                    Element.none
                                ]
                                |> Just

                        Nothing ->
                            if alpha2 == "001" then
                                image
                                    [ Border.shadow
                                        { offset = ( 5, 5 )
                                        , size = 5
                                        , blur = 5
                                        , color = rgba 0 0 0 0.15
                                        }
                                    , width <| px (flagWidth * 2 // 3)
                                    , height <| px (flagWidth * 2 // 3)
                                    , centerX
                                    , centerY
                                    ]
                                    { src = "/favicon.svg"
                                    , description = "The world symbol"
                                    }
                                    |> Just

                            else if String.isEmpty cutName then
                                Nothing

                            else
                                Theme.textInvariant cutName |> Just

                Nothing ->
                    if String.isEmpty cutName then
                        Nothing

                    else if Just nativeName == Cldr.localeToNativeName "el-polyton" then
                        Theme.row
                            [ centerX
                            , centerY
                            ]
                            [ Theme.viewFlag [ centerX, centerY ]
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

            else
                nativeName
                    |> String.split "-"
                    |> List.head
                    |> Maybe.withDefault ""
                    |> String.trim
    in
    case maybeInput of
        Nothing ->
            Element.none

        Just input ->
            Theme.column
                [ Theme.padding
                , width fill
                , height fill
                , Theme.gradient Theme.colors.buttonBackground
                ]
                [ Input.text []
                    { onChange = ChangingLocale
                    , text = input
                    , placeholder = Nothing
                    , label = Input.labelAbove [] <| Theme.text Translations.search
                    }
                , Cldr.allNontrivialLocales
                    |> List.filterMap
                        (\locale ->
                            Maybe.map
                                (\nativeName ->
                                    { locale = locale
                                    , nativeName = String.Extra.toSentenceCase nativeName
                                    }
                                )
                                (Cldr.localeToNativeName locale)
                        )
                    |> List.filter
                        (\{ nativeName } ->
                            String.contains (String.toLower input) (String.toLower nativeName)
                        )
                    |> List.sortBy .nativeName
                    |> List.Extra.gatherEqualsBy (\{ nativeName } -> nativeNameToTitle nativeName)
                    |> List.concatMap
                        (\( first, rest ) ->
                            let
                                title : String
                                title =
                                    nativeNameToTitle first.nativeName

                                group : List { locale : String, nativeName : String }
                                group =
                                    first :: rest
                            in
                            case
                                List.partition
                                    (\{ nativeName } -> nativeName == title)
                                    group
                            of
                                ( [ pair ], [] ) ->
                                    [ localeButton (Just pair.locale)
                                        (Theme.column []
                                            [ Theme.textInvariant title
                                            , flagLabel title pair
                                                |> Maybe.map (nonButton [ centerX ])
                                                |> Maybe.withDefault Element.none
                                            ]
                                        )
                                    ]

                                ( mains, others ) ->
                                    let
                                        flagsFirst : { a | locale : String } -> number
                                        flagsFirst { locale } =
                                            if
                                                (localeToCountry locale
                                                    |> Maybe.andThen Cldr.fromAlpha2
                                                )
                                                    == Nothing
                                            then
                                                1

                                            else
                                                0

                                        otherRows : List (Element Msg)
                                        otherRows =
                                            (mains ++ List.sortBy flagsFirst others)
                                                |> List.map
                                                    (\pair ->
                                                        localeButton
                                                            (Just pair.locale)
                                                            (Maybe.withDefault Element.none <| flagLabel title pair)
                                                    )
                                                -- This is actually just for Spanish
                                                |> List.Extra.greedyGroupsOf 13
                                                |> List.concatMap (List.Extra.greedyGroupsOf 7)
                                                |> List.map (Theme.row [])
                                    in
                                    [ localeButton Nothing
                                        (Theme.column [] <|
                                            Theme.textInvariant title
                                                :: otherRows
                                        )
                                    ]
                        )
                    |> Theme.wrappedRow []
                ]


localeToCountry : String -> Maybe String
localeToCountry locale =
    let
        extractCountry : String -> Maybe String
        extractCountry input =
            input
                |> LanguageTag.Parser.parseBcp47
                |> Maybe.andThen (\( _, { region } ) -> Maybe.map LanguageTag.Country.toCodeString region)
    in
    locale
        |> extractCountry
        |> Maybe.Extra.orElseLazy
            (\_ ->
                locale
                    |> Cldr.likelySubtags
                    |> Maybe.andThen extractCountry
            )


view : Shared.Model -> Model -> View Msg
view shared model =
    el
        [ width fill
        , height fill
        , inFront <| changingLocalePopup model.changingLocale
        ]
    <|
        el [ centerX, centerY ] <|
            Theme.grid [ centerX, centerY ]
                { elements = startButtons shared.options
                , widths = [ shrink ]
                }


startButtons :
    GameOptions
    -> List (List (Element Msg))
startButtons options =
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
    , radios Translations.include
        { toLabel =
            \sovereignOnly ->
                if sovereignOnly then
                    Translations.states

                else
                    Translations.statesAndTerritories
        , all = [ True, False ]
        , get = .sovereignOnly
        , set = \v -> { options | sovereignOnly = v }
        }
    , radios Translations.gameLength
        { toLabel = \i _ -> String.fromInt i
        , all = [ Shared.Model.defaultGameLength, 100, List.length <| Flags.all options ]
        , get = .gameLength
        , set = \v -> { options | gameLength = v }
        }
    , ( Translations.gameLanguage
      , \_ ->
            [ Element.withContext
                (\context ->
                    Theme.selectableButton [ Font.center, width fill ]
                        { selected = True
                        , label =
                            \_ ->
                                Cldr.localeToNativeName context.locale
                                    |> Maybe.withDefault "English"
                                    |> String.Extra.toSentenceCase
                        , onPress = Locale context.locale
                        }
                )
            , Theme.selectableButton [ Font.center, width fill ]
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

                    Antartica ->
                        Translations.antartica

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
            filler : Element msg
            filler =
                Theme.button
                    [ width fill
                    , Element.htmlAttribute <| Html.Attributes.style "visibility" "hidden"
                    ]
                    { background = [], label = Element.none, onPress = Nothing }
        in
        \_ ->
            [ filler
            , Theme.button [ width fill, Font.center ]
                { background = Theme.colors.buttonBackground
                , label = text Translations.play
                , onPress = Just Play
                }
            , filler
            ]
      )
    ]
        |> List.map
            (\( label, cells ) ->
                [ el [ centerY ] (text label)
                , Theme.row [] (cells options)
                ]
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
        , GameOptions -> List (Element Msg)
        )
checkboxes label config =
    ( label
    , \options ->
        let
            current : List v
            current =
                config.get options

            toButton : v -> Element Msg
            toButton value =
                let
                    selected : Bool
                    selected =
                        List.member value current
                in
                Theme.selectableButton [ Font.center, width fill ]
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
        config.all
            |> List.Extra.greedyGroupsOf 4
            |> List.map (\group -> Theme.row [ width fill ] <| List.map toButton group)
            |> Theme.column [ width fill ]
            |> List.singleton
    )


radios :
    (I18n -> String)
    ->
        { get : GameOptions -> v
        , toLabel : v -> I18n -> String
        , set : v -> GameOptions
        , all : List v
        }
    -> ( I18n -> String, GameOptions -> List (Element Msg) )
radios label config =
    ( label
    , \options ->
        let
            current : v
            current =
                config.get options
        in
        List.map
            (\value ->
                let
                    selected : Bool
                    selected =
                        value == current
                in
                Theme.selectableButton [ Font.center, width fill ]
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
