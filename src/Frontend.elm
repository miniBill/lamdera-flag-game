module Frontend exposing (app)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Element.WithContext as Element exposing (Color, alignBottom, alignRight, alignTop, centerX, centerY, el, fill, height, inFront, moveDown, moveLeft, paddingXY, paragraph, px, rgb, rgb255, rgba, scrollbarY, text, width)
import Element.WithContext.Background as Background
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Flags exposing (allCards)
import Iso3166 exposing (CountryCode)
import Iso3166.Arabic
import Iso3166.Chinese
import Iso3166.Czech
import Iso3166.Danish
import Iso3166.Dutch
import Iso3166.English
import Iso3166.Estonian
import Iso3166.French
import Iso3166.German
import Iso3166.Greek
import Iso3166.Hungarian
import Iso3166.Italian
import Iso3166.Japanese
import Iso3166.Lithuanian
import Iso3166.Norwegian
import Iso3166.Polish
import Iso3166.Portuguese
import Iso3166.Romanian
import Iso3166.Russian
import Iso3166.Slovak
import Iso3166.Spanish
import Iso3166.Thai
import Iso3166.Ukrainian
import Lamdera
import List.Extra
import Random
import Set
import Sorting
import Theme exposing (Attribute, Element, viewFlag)
import Types exposing (Context, Difficulty(..), FrontendModel, FrontendMsg(..), GameOptions, InnerModel(..), Language(..), PlayingModel, Property(..), ToFrontend(..))
import Url


app :
    { init : Lamdera.Url -> Nav.Key -> ( FrontendModel, Cmd FrontendMsg )
    , view : FrontendModel -> Browser.Document FrontendMsg
    , update : FrontendMsg -> FrontendModel -> ( FrontendModel, Cmd FrontendMsg )
    , updateFromBackend : ToFrontend -> FrontendModel -> ( FrontendModel, Cmd FrontendMsg )
    , subscriptions : FrontendModel -> Sub FrontendMsg
    , onUrlRequest : UrlRequest -> FrontendMsg
    , onUrlChange : Url.Url -> FrontendMsg
    }
app =
    Lamdera.frontend
        { init = init
        , onUrlRequest = UrlClicked
        , onUrlChange = UrlChanged
        , update = update
        , updateFromBackend = updateFromBackend
        , subscriptions = subscriptions
        , view = view
        }


init : Url.Url -> Nav.Key -> ( FrontendModel, Cmd FrontendMsg )
init url key =
    let
        context : Context
        context =
            { language = English }
    in
    ( { key = key
      , context = context
      , inner =
            if url.path == "/sort" then
                Sorting
                    { groups =
                        Flags.all
                            |> List.foldl
                                (\( countryCode, similar, _ ) ( acc, setAcc ) ->
                                    if Set.member (Iso3166.toAlpha2 countryCode) setAcc then
                                        ( acc, setAcc )

                                    else
                                        ( (countryCode :: similar) :: acc
                                        , (countryCode :: similar)
                                            |> List.map Iso3166.toAlpha2
                                            |> Set.fromList
                                            |> Set.union setAcc
                                        )
                                )
                                ( [], Set.empty )
                            |> Tuple.first
                    , selected = Nothing
                    }

            else
                Homepage defaultGameOptions
      , seed = Random.initialSeed 0
      }
    , Random.generate Seed Random.independentSeed
    )


defaultGameOptions : GameOptions
defaultGameOptions =
    { count = 20
    , difficulty = Normal
    , answersCount = 6
    , guessFrom = Types.allProperties
    , guessTo = Types.allProperties
    }


update : FrontendMsg -> FrontendModel -> ( FrontendModel, Cmd FrontendMsg )
update msg model =
    case msg of
        UrlClicked urlRequest ->
            case urlRequest of
                Internal url ->
                    ( model
                    , Nav.pushUrl model.key (Url.toString url)
                    )

                External url ->
                    ( model
                    , Nav.load url
                    )

        UrlChanged _ ->
            ( model, Cmd.none )

        Seed seed ->
            ( { model | seed = seed }, Cmd.none )

        ChangeOptions options ->
            ( { model
                | inner =
                    case model.inner of
                        Finished finished ->
                            Finished { finished | options = options }

                        Homepage _ ->
                            Homepage options

                        Playing _ ->
                            -- Can't change options while playing
                            model.inner

                        Sorting _ ->
                            model.inner
              }
            , Cmd.none
            )

        Play ->
            let
                maybeOptions : Maybe GameOptions
                maybeOptions =
                    getGameOptions model.inner
            in
            case maybeOptions of
                Just options ->
                    case allCards options model.seed of
                        ( [], _ ) ->
                            ( model, Cmd.none )

                        ( head :: tail, newSeed ) ->
                            let
                                playingModel : PlayingModel
                                playingModel =
                                    { options = options
                                    , current = head
                                    , queue = tail
                                    , picked = Nothing
                                    , score = 0
                                    }
                            in
                            ( { model
                                | inner =
                                    Playing playingModel
                                , seed = newSeed
                              }
                            , Cmd.none
                            )

                Nothing ->
                    ( model, Cmd.none )

        Pick countryCode ->
            case model.inner of
                Playing playing ->
                    ( { model
                        | inner =
                            Playing
                                { playing
                                    | picked = Just countryCode
                                    , score =
                                        if countryCode == playing.current.guessing then
                                            playing.score + 1

                                        else
                                            playing.score
                                }
                      }
                    , Cmd.none
                    )

                _ ->
                    ( model, Cmd.none )

        Next ->
            case model.inner of
                Playing playing ->
                    case playing.queue of
                        [] ->
                            ( { model
                                | inner =
                                    Finished
                                        { options = playing.options
                                        , score = playing.score
                                        , total = playing.options.count
                                        }
                              }
                            , Cmd.none
                            )

                        head :: tail ->
                            ( { model
                                | inner =
                                    Playing
                                        { playing
                                            | current = head
                                            , queue = tail
                                            , picked = Nothing
                                        }
                              }
                            , Cmd.none
                            )

                _ ->
                    ( model, Cmd.none )

        SelectForMove countryCode ->
            case model.inner of
                Sorting sorting ->
                    ( { model
                        | inner =
                            Sorting
                                { sorting
                                    | selected = Just countryCode
                                }
                      }
                    , Cmd.none
                    )

                _ ->
                    ( model, Cmd.none )

        Move countryCode index ->
            case model.inner of
                Sorting sorting ->
                    ( { model
                        | inner =
                            Sorting
                                { selected = Nothing
                                , groups =
                                    sorting.groups
                                        |> List.map (List.Extra.remove countryCode)
                                        |> (::) []
                                        |> List.Extra.updateAt index ((::) countryCode)
                                        |> List.Extra.filterNot List.isEmpty
                                        |> List.sortBy List.length
                                        |> List.map (List.sortBy Iso3166.toAlpha2)
                                }
                      }
                    , Cmd.none
                    )

                _ ->
                    ( model, Cmd.none )


getGameOptions : InnerModel -> Maybe GameOptions
getGameOptions model =
    case model of
        Homepage options ->
            Just options

        Playing { options } ->
            Just options

        Finished { options } ->
            Just options

        Sorting _ ->
            Nothing


updateFromBackend : ToFrontend -> FrontendModel -> ( FrontendModel, Cmd FrontendMsg )
updateFromBackend msg model =
    case msg of
        NoOpToFrontend ->
            ( model, Cmd.none )


view : FrontendModel -> Browser.Document FrontendMsg
view model =
    { title = ""
    , body =
        [ Element.layout
            model.context
            [ width fill
            , height fill
            , Background.color <| rgb255 0x94 0xBB 0xF8
            , scrollbarY
            ]
            (innerView model.inner)
        ]
    }


innerView : InnerModel -> Element FrontendMsg
innerView model =
    case model of
        Homepage options ->
            viewHomepage options

        Playing playing ->
            viewPlaying playing

        Finished finished ->
            viewFinished finished

        Sorting groups ->
            Sorting.view groups


viewHomepage : GameOptions -> Element FrontendMsg
viewHomepage options =
    el
        [ centerX
        , centerY
        ]
        (startButtons options)


viewPlaying : PlayingModel -> Element FrontendMsg
viewPlaying ({ options, score, current, picked } as model) =
    el
        [ width fill
        , height fill
        , inFront <| viewScore score options.count
        ]
    <|
        Theme.column
            [ centerX
            , centerY
            ]
            [ case current.guessFrom of
                Flag ->
                    el [ centerX ] <|
                        viewFlag
                            { countryCode = current.guessing
                            , width = 200
                            }

                Name ->
                    el
                        [ Font.center
                        , width fill
                        , Font.size 50
                        ]
                        (viewCountryName current.guessing)
            , case current.guessTo of
                Name ->
                    Element.table [ width fill, Theme.spacing ]
                        { data =
                            current.answers
                                |> List.map (viewNameButton model)
                                |> List.Extra.greedyGroupsOf 2
                        , columns =
                            [ { header = Element.none
                              , view =
                                    \lst ->
                                        lst
                                            |> List.head
                                            |> Maybe.withDefault Element.none
                              , width = fill
                              }
                            , { header = Element.none
                              , view =
                                    \lst ->
                                        lst
                                            |> List.drop 1
                                            |> List.head
                                            |> Maybe.withDefault Element.none
                              , width = fill
                              }
                            ]
                        }

                Flag ->
                    current.answers
                        |> List.map (viewFlagButton model)
                        |> List.Extra.greedyGroupsOf 2
                        |> List.map (\group -> Theme.row [ width fill ] group)
                        |> Theme.column [ width fill ]
            , Theme.button
                (if picked == Nothing then
                    [ Background.color <| rgb 0.7 0.7 0.7
                    , centerX
                    ]

                 else
                    [ centerX ]
                )
                { label = text "Next"
                , onPress =
                    if picked == Nothing then
                        Nothing

                    else
                        Just Next
                }
            ]


viewNameButton : PlayingModel -> CountryCode -> Element FrontendMsg
viewNameButton { current, picked } countryCode =
    let
        common : List (Attribute msg)
        common =
            [ width fill ]

        attrs : List (Attribute msg)
        attrs =
            if picked /= Nothing && countryCode == current.guessing then
                Background.color (rgb 0.8 0.9 0.8) :: common

            else if Just countryCode == picked then
                Background.color (rgb 0.9 0.7 0.7) :: common

            else
                common
    in
    Theme.button
        attrs
        { onPress =
            if picked == Nothing then
                Just <| Pick countryCode

            else
                Nothing
        , label = viewCountryName countryCode
        }


viewFlagButton : PlayingModel -> CountryCode -> Element FrontendMsg
viewFlagButton { picked, current } countryCode =
    let
        badge : String -> Color -> List (Element msg)
        badge label color =
            [ el
                [ Font.color <| rgb 1 1 1
                , Background.color color
                , Border.rounded 9999
                , paddingXY 6 2
                ]
                (text label)
            , text " "
            ]
    in
    Theme.column
        [ width fill
        , height fill
        , Theme.padding
        ]
    <|
        case picked of
            Nothing ->
                [ Input.button
                    [ width fill
                    ]
                    { onPress = Just <| Pick countryCode
                    , label =
                        el [ centerX ] <|
                            viewFlag
                                { countryCode = countryCode
                                , width = 150
                                }
                    }
                , paragraph
                    [ Font.center
                    , Font.color <| rgba 0 0 0 0
                    , alignBottom
                    ]
                    (badge " " (rgba 0 0 0 0)
                        ++ [ viewCountryName countryCode ]
                    )
                ]

            Just pickedCountryCode ->
                let
                    maybeBadge : List (Element msg)
                    maybeBadge =
                        if countryCode == current.guessing then
                            badge "✓" <| rgb 0.2 0.6 0.2

                        else if countryCode == pickedCountryCode then
                            badge "✗" <| rgb 0.6 0.2 0.2

                        else
                            badge "-" <| rgb 0.9 0.9 0.9
                in
                [ el [ centerX ] <|
                    viewFlag
                        { countryCode = countryCode
                        , width = 150
                        }
                , paragraph [ Font.center, alignBottom ]
                    (maybeBadge
                        ++ [ viewCountryName countryCode ]
                    )
                ]


viewFinished : { options : GameOptions, score : Int, total : Int } -> Element FrontendMsg
viewFinished finished =
    Theme.column
        [ centerX
        , centerY
        ]
        [ el [ width fill, Font.center ] <|
            text <|
                "Final score: "
                    ++ String.fromInt finished.score
                    ++ "/"
                    ++ String.fromInt finished.total
        , el [ width fill, Font.center ] <| text "Play again"
        , startButtons finished.options
        ]


startButtons : GameOptions -> Element FrontendMsg
startButtons options =
    let
        button :
            { selected : Bool
            , label : String
            , onPress : GameOptions
            }
            -> Element FrontendMsg
        button config =
            Theme.button
                [ Font.center
                , width fill
                , if config.selected then
                    Background.color Theme.colors.selectedButtonBackground

                  else
                    Background.color Theme.colors.buttonBackground
                ]
                { label = text config.label
                , onPress = Just <| ChangeOptions config.onPress
                }

        checkboxes :
            String
            ->
                { get : GameOptions -> List v
                , toLabel : v -> String
                , set : List v -> GameOptions
                , all : List v
                }
            -> ( String, List (Element FrontendMsg) )
        checkboxes label config =
            let
                current =
                    config.get options
            in
            ( label
            , List.map
                (\value ->
                    let
                        selected =
                            List.member value current
                    in
                    button
                        { label = config.toLabel value
                        , selected = selected
                        , onPress =
                            config.set <|
                                if selected then
                                    List.Extra.remove value current

                                else
                                    value :: current
                        }
                )
                config.all
            )

        radios :
            String
            ->
                { get : GameOptions -> v
                , toLabel : v -> String
                , set : v -> GameOptions
                , all : List v
                }
            -> ( String, List (Element FrontendMsg) )
        radios label config =
            let
                current =
                    config.get options
            in
            ( label
            , List.map
                (\value ->
                    let
                        selected =
                            value == current
                    in
                    button
                        { label = config.toLabel value
                        , selected = selected
                        , onPress = config.set value
                        }
                )
                config.all
            )

        optionsGrid : Element FrontendMsg
        optionsGrid =
            [ radios "Difficulty"
                { toLabel = difficultyToString
                , all = [ Easy, Normal, Hard ]
                , get = .difficulty
                , set = \v -> { options | difficulty = v }
                }
            , checkboxes "Guess from"
                { toLabel = Types.propertyToString
                , all = Types.allProperties
                , get = .guessFrom
                , set = \v -> { options | guessFrom = v }
                }
            , checkboxes "Guess to"
                { toLabel = Types.propertyToString
                , all = Types.allProperties
                , get = .guessTo
                , set = \v -> { options | guessTo = v }
                }
            , radios "Possible answers"
                { toLabel = String.fromInt
                , all = [ 4, 6, 8 ]
                , get = .answersCount
                , set = \v -> { options | answersCount = v }
                }
            , radios "Game length"
                { toLabel = String.fromInt
                , all = [ 20, 100, List.length Flags.all ]
                , get = .count
                , set = \v -> { options | count = v }
                }
            ]
                |> List.map
                    (\( label, cells ) ->
                        el [ centerY ] (text label)
                            :: cells
                    )
                |> Theme.grid []
    in
    Theme.column []
        [ optionsGrid
        , Theme.button [ centerX ]
            { label = text "Play"
            , onPress = Just Play
            }
        ]


difficultyToString : Difficulty -> String
difficultyToString difficulty =
    case difficulty of
        Easy ->
            "Easy"

        Normal ->
            "Normal"

        Hard ->
            "Hard"


viewScore : Int -> Int -> Element msg
viewScore score total =
    el
        [ alignTop
        , alignRight
        , Background.color <| rgb 0.2 0.9 0.2
        , Border.rounded 999
        , width <| px 100
        , height <| px 100
        , moveDown Theme.rythm
        , moveLeft Theme.rythm
        ]
        (el [ centerX, centerY ] <|
            text <|
                String.fromInt score
                    ++ "/"
                    ++ String.fromInt total
        )


viewCountryName : CountryCode -> Element msg
viewCountryName countryCode =
    Element.with .language <|
        \language ->
            case language of
                Arabic ->
                    text <| Iso3166.Arabic.toName countryCode

                Chinese ->
                    text <| Iso3166.Chinese.toName countryCode

                Czech ->
                    text <| Iso3166.Czech.toName countryCode

                Danish ->
                    text <| Iso3166.Danish.toName countryCode

                Dutch ->
                    text <| Iso3166.Dutch.toName countryCode

                English ->
                    text <| Iso3166.English.toName countryCode

                Estonian ->
                    text <| Iso3166.Estonian.toName countryCode

                French ->
                    text <| Iso3166.French.toName countryCode

                German ->
                    text <| Iso3166.German.toName countryCode

                Greek ->
                    text <| Iso3166.Greek.toName countryCode

                Hungarian ->
                    text <| Iso3166.Hungarian.toName countryCode

                Italian ->
                    text <| Iso3166.Italian.toName countryCode

                Japanese ->
                    text <| Iso3166.Japanese.toName countryCode

                Lithuanian ->
                    text <| Iso3166.Lithuanian.toName countryCode

                Norwegian ->
                    text <| Iso3166.Norwegian.toName countryCode

                Polish ->
                    text <| Iso3166.Polish.toName countryCode

                Portuguese ->
                    text <| Iso3166.Portuguese.toName countryCode

                Romanian ->
                    text <| Iso3166.Romanian.toName countryCode

                Russian ->
                    text <| Iso3166.Russian.toName countryCode

                Slovak ->
                    text <| Iso3166.Slovak.toName countryCode

                Spanish ->
                    text <| Iso3166.Spanish.toName countryCode

                Thai ->
                    text <| Iso3166.Thai.toName countryCode

                Ukrainian ->
                    text <| Iso3166.Ukrainian.toName countryCode


subscriptions : FrontendModel -> Sub FrontendMsg
subscriptions _ =
    Sub.none
