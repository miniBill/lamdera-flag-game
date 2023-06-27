module Frontend exposing (app)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Element.WithContext as Element exposing (alignRight, alignTop, centerX, centerY, el, fill, height, inFront, moveDown, moveLeft, px, rgb, rgb255, shrink, text, width)
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
import Theme exposing (Attribute, Element)
import Types exposing (CardKind(..), Context, Difficulty(..), FrontendModel, FrontendMsg(..), InnerModel(..), Language(..), PlayingModel, ToFrontend(..))
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
                Homepage
      , seed = Random.initialSeed 0
      }
    , Random.generate Seed Random.independentSeed
    )


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

        Play kind difficulty ->
            case allCards kind difficulty model.seed of
                ( [], _ ) ->
                    ( model, Cmd.none )

                ( head :: tail, newSeed ) ->
                    ( { model
                        | inner =
                            Playing
                                { current = head
                                , queue = tail
                                , picked = Nothing
                                , score = 0
                                , total = 1 + List.length tail
                                }
                        , seed = newSeed
                      }
                    , Cmd.none
                    )

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
                                        { score = playing.score
                                        , total = playing.total
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
            ]
            (innerView model.inner)
        ]
    }


innerView : InnerModel -> Element FrontendMsg
innerView model =
    case model of
        Homepage ->
            viewHomepage

        Playing playing ->
            viewPlaying playing

        Finished finished ->
            viewFinished finished

        Sorting groups ->
            Sorting.view groups


viewHomepage : Element FrontendMsg
viewHomepage =
    el
        [ centerX
        , centerY
        ]
        startButtons


viewPlaying : PlayingModel -> Element FrontendMsg
viewPlaying ({ score, total, current, picked } as model) =
    el
        [ width fill
        , height fill
        , inFront <| viewScore score total
        ]
    <|
        Theme.column
            [ centerX
            , centerY
            ]
            [ case current.kind of
                GuessName ->
                    viewFlag current.guessing

                GuessFlag ->
                    el
                        [ Font.center
                        , width fill
                        , Font.size 50
                        ]
                        (viewCountryName current.guessing)
            , case current.kind of
                GuessName ->
                    Element.table [ width fill, Theme.spacing ]
                        { data =
                            current.options
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

                GuessFlag ->
                    current.options
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
        , label =
            case current.kind of
                GuessName ->
                    viewCountryName countryCode

                GuessFlag ->
                    viewFlag countryCode
        }


viewFlagButton : PlayingModel -> CountryCode -> Element FrontendMsg
viewFlagButton { picked, current } countryCode =
    if picked == Nothing then
        Input.button
            [ width fill
            , Theme.padding
            ]
            { onPress = Just <| Pick countryCode
            , label = viewFlag countryCode
            }

    else
        el
            [ width fill
            , Theme.padding
            , inFront <|
                if countryCode == current.guessing then
                    el
                        [ Font.size 80
                        , centerX
                        , centerY
                        , Font.color <| rgb 1 1 1
                        , Background.color <| rgb 0.2 0.6 0.2
                        , Border.rounded 9999
                        , Theme.padding
                        ]
                        (text "✓")

                else if Just countryCode == picked then
                    el
                        [ Font.size 80
                        , centerX
                        , centerY
                        , Font.color <| rgb 1 1 1
                        , Background.color <| rgb 0.6 0.2 0.2
                        , Border.rounded 9999
                        , Theme.padding
                        ]
                        (text "✗")

                else
                    Element.none
            ]
            (viewFlag countryCode)


viewFinished : { score : Int, total : Int } -> Element FrontendMsg
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
        , startButtons
        ]


startButtons : Element FrontendMsg
startButtons =
    Element.table [ Theme.spacing ]
        { data =
            [ ( "Easy", Easy )
            , ( "Normal", Normal )
            , ( "Hard", Hard )
            ]
        , columns =
            [ { header = Element.none
              , width = shrink
              , view = \( label, _ ) -> el [ centerY ] <| text label
              }
            , { header = Element.none
              , width = fill
              , view =
                    \( _, difficulty ) ->
                        Theme.button
                            [ Font.center
                            , width fill
                            ]
                            { label = text "GUESS NAMES"
                            , onPress = Just <| Play GuessName difficulty
                            }
              }
            , { header = Element.none
              , width = fill
              , view =
                    \( _, difficulty ) ->
                        Theme.button
                            [ Font.center
                            , width fill
                            ]
                            { label = text "GUESS FLAGS"
                            , onPress = Just <| Play GuessFlag difficulty
                            }
              }
            ]
        }


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


viewFlag : CountryCode -> Element msg
viewFlag countryCode =
    el
        [ width fill
        , Font.center
        , Font.size 200
        , Font.shadow
            { offset = ( 8, 8 )
            , blur = 4
            , color = rgb 0 0 0
            }
        ]
        (text <| Flags.toEmoji countryCode)


subscriptions : FrontendModel -> Sub FrontendMsg
subscriptions _ =
    Sub.none
