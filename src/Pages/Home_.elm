module Pages.Home_ exposing (Model, Msg(..), page)

import Cldr
import Effect exposing (Effect)
import Element.WithContext as Element exposing (alignTop, centerX, centerY, el, fill, height, inFront, shrink, width)
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Flags
import Html.Attributes
import List.Extra
import Maybe.Extra
import Page exposing (Page)
import Route exposing (Route)
import Shared
import Shared.Model exposing (Continent(..), Difficulty(..), GameOptions, Property(..))
import Theme exposing (Element, text)
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
                            Cldr.localeToEnglishName locale
                                |> Maybe.Extra.filter
                                    (\name ->
                                        String.contains (String.toLower input) (String.toLower name)
                                    )
                                |> Maybe.map
                                    (\name ->
                                        Theme.button [ alignTop ]
                                            { background = Theme.colors.buttonBackground
                                            , label = Theme.textInvariant name
                                            , onPress = Just <| Locale locale
                                            }
                                    )
                        )
                    |> Theme.wrappedRow []
                ]


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
                                Cldr.localeToEnglishName context.locale
                                    -- This shouldn't happen?
                                    |> Maybe.withDefault "Unknown language"
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
