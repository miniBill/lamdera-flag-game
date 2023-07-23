module Frontend exposing (app)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Element.WithContext as Element exposing (centerX, centerY, el, fill, height, rgb255, scrollbarY, shrink, text, width)
import Element.WithContext.Font as Font
import Flags exposing (allCards)
import Frontend.Playing
import Html.Attributes
import Iso3166
import Lamdera
import List.Extra
import Random
import Sorting
import Theme exposing (Element)
import Types exposing (Context, Difficulty(..), FrontendModel, FrontendMsg(..), GameOptions, InnerModel(..), Language(..), PlayingModel, ToFrontend(..))
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
                Sorting Sorting.init

            else
                Homepage defaultGameOptions
      , seed = Random.initialSeed 0
      }
    , Random.generate Seed Random.independentSeed
    )


defaultGameLength : Int
defaultGameLength =
    20


defaultGameOptions : GameOptions
defaultGameOptions =
    { gameLength = defaultGameLength
    , difficulty = Normal
    , answersPerCard = 6
    , guessPatterns = Types.allGuessPatterns
    , sovereignOnly = True
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
                            Finished { finished | options = fixOptions options }

                        Homepage _ ->
                            Homepage <| fixOptions options

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
                                        , total = playing.options.gameLength
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


fixOptions : GameOptions -> GameOptions
fixOptions options =
    -- TODO: FIX THIS
    if options.gameLength > 100 then
        { options
            | gameLength =
                List.length <| Flags.all options
        }

    else
        options


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
            , Theme.gradient
                [ ( 20, rgb255 0xFD 0xED 0xD6 )
                , ( 100, rgb255 0x9F 0x88 0x67 )
                ]
            , scrollbarY
            , Font.family [ Font.typeface "urbane-rounded", Font.sansSerif ]
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
            Frontend.Playing.view playing

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
                ]
                { background =
                    if config.selected then
                        Theme.colors.greenButtonBackground

                    else
                        Theme.colors.buttonBackground
                , label = text config.label
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
                current : List v
                current =
                    config.get options
            in
            ( label
            , List.map
                (\value ->
                    let
                        selected : Bool
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
                current : v
                current =
                    config.get options
            in
            ( label
            , List.map
                (\value ->
                    let
                        selected : Bool
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

        optionsGrid : List (List (Element FrontendMsg))
        optionsGrid =
            [ radios "Difficulty"
                { toLabel = difficultyToString
                , all = [ Easy, Normal, Hard ]
                , get = .difficulty
                , set = \v -> { options | difficulty = v }
                }
            , checkboxes "Guess"
                { toLabel =
                    \( f, t ) ->
                        Types.propertyToString f
                            ++ " → "
                            ++ Types.propertyToString t
                , all = Types.allGuessPatterns
                , get = .guessPatterns
                , set = \v -> { options | guessPatterns = v }
                }
            , radios "Possible answers"
                { toLabel = String.fromInt
                , all = [ 4, 6, 8 ]
                , get = .answersPerCard
                , set = \v -> { options | answersPerCard = v }
                }
            , radios "Include"
                { toLabel =
                    \sovereignOnly ->
                        if sovereignOnly then
                            "States"

                        else
                            "States and territories"
                , all = [ True, False ]
                , get = .sovereignOnly
                , set = \v -> { options | sovereignOnly = v }
                }
            , radios "Game length"
                { toLabel = String.fromInt
                , all = [ defaultGameLength, 100, List.length <| Flags.all options ]
                , get = .gameLength
                , set = \v -> { options | gameLength = v }
                }
            , ( ""
              , let
                    filler : Element msg
                    filler =
                        Theme.button
                            [ width fill
                            , Element.htmlAttribute <| Html.Attributes.style "visibility" "hidden"
                            ]
                            { background = [], label = Element.none, onPress = Nothing }
                in
                [ filler
                , Theme.button [ width fill, Font.center ]
                    { background = Theme.colors.buttonBackground
                    , label = text "Play"
                    , onPress = Just Play
                    }
                , filler
                ]
              )
            ]
                |> List.map
                    (\( label, cells ) ->
                        [ el [ centerY ] (text label)
                        , Theme.row [] cells
                        ]
                    )
    in
    Theme.grid []
        { elements = optionsGrid
        , widths = [ shrink ]
        }


difficultyToString : Difficulty -> String
difficultyToString difficulty =
    case difficulty of
        Easy ->
            "Easy"

        Normal ->
            "Normal"

        Hard ->
            "Hard"


subscriptions : FrontendModel -> Sub FrontendMsg
subscriptions _ =
    Sub.none
