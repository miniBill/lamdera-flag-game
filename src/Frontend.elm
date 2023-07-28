module Frontend exposing (app)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Cldr
import Element.WithContext as Element exposing (alignTop, centerX, centerY, el, fill, height, inFront, rgb255, scrollbarY, width)
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Flags exposing (allCards)
import Frontend.Homepage
import Frontend.Playing
import Lamdera
import List.Extra
import Random
import Sorting
import Theme exposing (Element, text)
import Translations
import Types exposing (Context, Difficulty(..), FrontendModel, FrontendMsg(..), GameOptions, HomepageMsg(..), InnerModel(..), PlayingModel, ToFrontend(..))
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
            { locale = Cldr.En }

        model : FrontendModel
        model =
            { key = key
            , context = context
            , changingLocale = Nothing
            , inner =
                if url.path == "/sort" then
                    Sorting Sorting.init

                else
                    Homepage Frontend.Homepage.init
            , seed = Random.initialSeed 0
            }
    in
    ( model
    , Random.generate Seed Random.independentSeed
    )


update : FrontendMsg -> FrontendModel -> ( FrontendModel, Cmd FrontendMsg )
update msg ({ context } as model) =
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

        HomepageMsg (ChangeOptions options) ->
            ( { model
                | inner =
                    case model.inner of
                        Homepage _ ->
                            Homepage <| fixOptions options

                        _ ->
                            model.inner
              }
            , Cmd.none
            )

        Locale locale ->
            ( { model
                | context = { context | locale = locale }
                , changingLocale = Nothing
              }
            , Cmd.none
            )

        ChangingLocale input ->
            ( { model | changingLocale = Just input }
            , Cmd.none
            )

        Back ->
            case model.inner of
                Playing { options } ->
                    ( { model | inner = Homepage options }
                    , Cmd.none
                    )

                _ ->
                    ( model, Cmd.none )

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

                Finished { options } ->
                    ( { model | inner = Homepage options }
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
                                        |> List.map (List.sortBy Types.countryToAlpha2)
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
    { title =
        Translations.title <|
            Translations.init <|
                Theme.localeToLanguage model.context.locale
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
            , inFront <| changingLocalePopup model.changingLocale
            ]
            (innerView model.inner)
        ]
    }


changingLocalePopup : Maybe String -> Element FrontendMsg
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
                , Cldr.allLocales
                    |> List.filterMap
                        (\locale ->
                            let
                                name : String
                                name =
                                    Cldr.localeToName locale
                            in
                            if String.contains (String.toLower input) (String.toLower name) then
                                Theme.button [ alignTop ]
                                    { background = Theme.colors.buttonBackground
                                    , label = Theme.textInvariant name
                                    , onPress = Just <| Locale locale
                                    }
                                    |> Just

                            else
                                Nothing
                        )
                    |> Theme.wrappedRow []
                ]


innerView : InnerModel -> Element FrontendMsg
innerView model =
    case model of
        Homepage options ->
            Frontend.Homepage.view options

        Playing playing ->
            Frontend.Playing.view playing

        Finished finished ->
            viewFinished finished

        Sorting groups ->
            Sorting.view groups


viewFinished : { options : GameOptions, score : Int, total : Int } -> Element FrontendMsg
viewFinished finished =
    Theme.column
        [ centerX
        , centerY
        , Element.spacing <| 2 * Theme.rythm
        ]
        [ el [ width fill, Font.center ] <|
            text <|
                Translations.finalScore
                    { points = String.fromInt finished.score
                    , total = String.fromInt finished.total
                    }
        , Theme.button [ centerX ]
            { background = Theme.colors.buttonBackground
            , label = text Translations.playAgain
            , onPress = Just Next
            }
        ]


subscriptions : FrontendModel -> Sub FrontendMsg
subscriptions _ =
    Sub.none
