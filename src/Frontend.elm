module Frontend exposing (app)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Element.WithContext as Element exposing (alignRight, alignTop, centerX, centerY, el, fill, height, inFront, moveDown, moveLeft, px, rgb, rgb255, text, width)
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
import Theme exposing (Attribute, Element)
import Types exposing (CardKind(..), Context, FrontendModel, FrontendMsg(..), InnerModel(..), Language(..), PlayingModel, ToFrontend(..))
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
init _ key =
    let
        context : Context
        context =
            { language = English }
    in
    ( { key = key
      , context = context
      , inner = Homepage
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

        Play kind ->
            case allCards kind model.seed of
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


viewHomepage : Element FrontendMsg
viewHomepage =
    Theme.column
        [ centerX
        , centerY
        ]
        [ Theme.button
            [ Font.center
            , width fill
            ]
            { label = text "GUESS NAMES"
            , onPress = Just <| Play GuessName
            }
        , Theme.button
            [ Font.center
            , width fill
            ]
            { label = text "GUESS FLAGS"
            , onPress = Just <| Play GuessFlag
            }
        ]


viewPlaying : PlayingModel -> Element FrontendMsg
viewPlaying { score, total, current, picked } =
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
            , current.options
                |> List.map
                    (\countryCode ->
                        case current.kind of
                            GuessName ->
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

                            GuessFlag ->
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
                    )
                |> List.Extra.greedyGroupsOf 2
                |> List.map (\group -> Theme.wrappedRow [] group)
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
        , Theme.button
            [ Font.center
            , width fill
            ]
            { label = text "GUESS NAMES"
            , onPress = Just <| Play GuessName
            }
        , Theme.button
            [ Font.center
            , width fill
            ]
            { label = text "GUESS FLAGS"
            , onPress = Just <| Play GuessFlag
            }
        ]


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
        ]
        (text <| toFlag countryCode)


toFlag : CountryCode -> String
toFlag countryCode =
    countryCode
        |> Iso3166.toAlpha2
        |> String.toList
        |> List.map (\c -> Char.fromCode <| Char.toCode c - Char.toCode 'a' + 0x0001F1E6)
        |> String.fromList


subscriptions : FrontendModel -> Sub FrontendMsg
subscriptions _ =
    Sub.none
