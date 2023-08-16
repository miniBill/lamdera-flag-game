module Pages.Home_ exposing (Model, Msg(..), page)

import Cldr
import Effect exposing (Effect)
import Element.WithContext as Element exposing (alignTop, centerX, centerY, el, fill, height, inFront, rgb, rgb255, scrollbarY, shrink, width)
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
import Shared.Model exposing (Continent(..), Country(..), Difficulty(..), GameOptions, Property(..), Screen)
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


changingLocalePopup : Screen -> Maybe String -> Element Msg
changingLocalePopup screen maybeInput =
    let
        nonButton : List (Attribute msg) -> Element msg -> Element msg
        nonButton attrs label =
            el
                ([ alignTop
                 , Border.rounded 40
                 , Border.width 1
                 , Border.color <| rgb255 0x98 0x78 0x50
                 , Font.color (rgb 1 1 1)
                 , Theme.padding
                 ]
                    ++ attrs
                )
                label

        localeButton : String -> List (Attribute Msg) -> Element Msg -> Element Msg
        localeButton locale attrs label =
            Theme.button
                (alignTop :: attrs)
                { background = Theme.colors.buttonBackground
                , label = label
                , onPress = Just <| Locale locale
                }

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

                parensContent : Element msg
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
                        Element.none

                unsafeFlag : String -> ( Int, Int ) -> Element msg
                unsafeFlag alpha2 aspectRatio =
                    Theme.row
                        [ centerX
                        , centerY
                        , height <| Element.minimum 26 shrink
                        ]
                        [ Theme.viewFlagUnsafe
                            []
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
                                [ centerX
                                , centerY
                                , height <| Element.minimum 26 shrink
                                ]
                                [ Theme.viewFlag [ centerX, centerY ]
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

                FoundRegion "ES-EA" ->
                    Element.row []
                        [ unsafeFlag "ES-EA-CEUTA" ( 3, 2 )
                        , Theme.textInvariant " / "
                        , unsafeFlag "ES-EA-MELILLA" ( 3, 2 )
                        ]
                        |> Just

                FoundRegion alpha2 ->
                    Just <| unsafeFlag alpha2 ( 3, 2 )

                NotFound ->
                    if String.isEmpty cutName then
                        -- let _ = Debug.log "ALPHA2 NOT FOUND" { locale = locale } in
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

        viewGroup : ( { locale : String, nativeName : String }, List { locale : String, nativeName : String } ) -> Element Msg
        viewGroup ( first, rest ) =
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
                    localeButton pair.locale
                        [ width fill ]
                        (Theme.row [ centerY ]
                            [ Theme.textInvariant title
                            , flagLabel title pair
                                |> Maybe.map (nonButton [ centerX ])
                                |> Maybe.withDefault Element.none
                            ]
                        )

                ( mains, others ) ->
                    let
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

                        count : Int
                        count =
                            1 + List.length others

                        otherItems : Element Msg
                        otherItems =
                            (mains ++ List.sortBy flagsFirst others)
                                |> List.filterMap
                                    (\pair ->
                                        flagLabel title pair
                                            |> Maybe.map
                                                (localeButton pair.locale [])
                                    )
                                |> Theme.wrappedRow [ width fill ]
                    in
                    nonButton [ width fill ]
                        ((if count <= 2 then
                            Theme.row

                          else
                            Theme.column
                         )
                            [ width fill ]
                            [ Theme.textInvariant title
                            , otherItems
                            ]
                        )

        columnWidth : number
        columnWidth =
            500

        localeColumn : List (Attribute Msg) -> List { locale : String, nativeName : String } -> Element Msg
        localeColumn attrs locales =
            locales
                |> List.Extra.gatherEqualsBy (\{ nativeName } -> nativeNameToTitle nativeName)
                |> List.map viewGroup
                |> Theme.column
                    ([ centerX
                     , width <| Element.maximum columnWidth shrink
                     ]
                        ++ attrs
                    )
    in
    case maybeInput of
        Nothing ->
            Element.none

        Just input ->
            let
                filteredLocales : List { locale : String, nativeName : String }
                filteredLocales =
                    Cldr.allNontrivialLocales
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
            in
            el
                [ width fill
                , height fill
                , scrollbarY
                , Theme.gradient Theme.colors.buttonBackground
                ]
            <|
                Theme.column
                    [ Theme.padding
                    , centerX
                    , height fill
                    ]
                    [ Input.text [ width fill ]
                        { onChange = ChangingLocale
                        , text = input
                        , placeholder = Nothing
                        , label = Input.labelAbove [] <| Theme.text Translations.search
                        }
                    , if screen.width > columnWidth * 2 + Theme.rythm * 3 then
                        filteredLocales
                            |> List.Extra.gatherEqualsBy
                                (\{ nativeName } ->
                                    case String.uncons nativeName of
                                        Nothing ->
                                            1

                                        Just ( h, _ ) ->
                                            if Char.isAlpha h then
                                                0

                                            else
                                                1
                                )
                            |> List.map (\( head, tail ) -> localeColumn [] (head :: tail))
                            |> Theme.row []

                      else
                        localeColumn [ Theme.padding ] filteredLocales
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
                |> Maybe.andThen (\( _, { region } ) -> Maybe.map LanguageTag.Country.toCodeString region)
                |> Maybe.map FoundCountry
    in
    case String.split "-" locale of
        "cy" :: _ ->
            FoundRegion "GB-WLS"

        "gd" :: _ ->
            FoundRegion "GB-SCT"

        "ca" :: _ ->
            FoundRegion "ES-CT"

        "es" :: "IC" :: _ ->
            FoundRegion "ES-IC"

        "es" :: "EA" :: _ ->
            FoundRegion "ES-EA"

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
    el
        [ width fill
        , height fill
        , inFront <| changingLocalePopup shared.screen model.changingLocale
        ]
    <|
        el
            [ centerX
            , centerY
            , Theme.padding
            , scrollbarY
            ]
        <|
            if shared.screen.width > 500 + Theme.rythm * 2 then
                Theme.grid []
                    { elements =
                        mainMenuRows shared.options
                            |> List.map (\( label, options ) -> [ label, Theme.row [] options ])
                    , widths = [ shrink ]
                    }

            else
                mainMenuRows shared.options
                    |> List.concatMap (\( label, options ) -> [ label, Theme.wrappedRow [ width fill ] options ])
                    |> Theme.column []


mainMenuRows :
    GameOptions
    -> List ( Element Msg, List (Element Msg) )
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
                ( el [ centerY ] (text label)
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
