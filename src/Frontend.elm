module Frontend exposing (app)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Element.WithContext as Element exposing (alignRight, alignTop, centerX, centerY, el, fill, height, inFront, moveDown, moveLeft, px, rgb, text, width)
import Element.WithContext.Background as Background
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
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
import Random
import Theme exposing (Element)
import Types exposing (Context, FrontendModel, FrontendMsg(..), InnerModel(..), Language(..), ToFrontend(..))
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

        Play ->
            case allCards model.seed of
                ( [], _ ) ->
                    ( model, Cmd.none )

                ( head :: tail, newSeed ) ->
                    ( { model
                        | inner =
                            Picking
                                { current = head
                                , queue = tail
                                , score = 0
                                , total = 1 + List.length tail
                                }
                        , seed = newSeed
                      }
                    , Cmd.none
                    )

        Pick countryCode ->
            case model.inner of
                Picking picking ->
                    ( { model
                        | inner =
                            Picked
                                { current = picking.current
                                , picked = countryCode
                                , queue = picking.queue
                                , score =
                                    if countryCode == picking.current.guessing then
                                        picking.score + 1

                                    else
                                        picking.score
                                , total = picking.total
                                }
                      }
                    , Cmd.none
                    )

                _ ->
                    ( model, Cmd.none )

        Next ->
            case model.inner of
                Picked picked ->
                    case picked.queue of
                        [] ->
                            ( { model
                                | inner =
                                    Finished
                                        { score = picked.score
                                        , total = picked.total
                                        }
                              }
                            , Cmd.none
                            )

                        head :: tail ->
                            ( { model
                                | inner =
                                    Picking
                                        { current = head
                                        , queue = tail
                                        , score = picked.score
                                        , total = picked.total
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
            [ width fill, height fill ]
            (innerView model.inner)
        ]
    }


innerView : InnerModel -> Element FrontendMsg
innerView model =
    case model of
        Homepage ->
            Theme.button [ centerX, centerY ]
                { label = text "Play"
                , onPress = Just Play
                }

        Picking { current, score, total } ->
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
                    [ viewFlag current.guessing
                    , current.options
                        |> List.map
                            (\countryCode ->
                                Theme.button [ width fill ]
                                    { onPress = Just <| Pick countryCode
                                    , label = viewCountryName countryCode
                                    }
                            )
                        |> Theme.column [ width fill ]
                    , Theme.button
                        [ width fill
                        , Background.color <| rgb 0.8 0.8 0.8
                        ]
                        { label = text "Next"
                        , onPress = Nothing
                        }
                    ]

        Picked { current, picked, score, total } ->
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
                    [ viewFlag current.guessing
                    , current.options
                        |> List.map
                            (\countryCode ->
                                let
                                    common =
                                        [ width fill ]

                                    attrs =
                                        if countryCode == current.guessing then
                                            Background.color (rgb 0.8 0.9 0.8) :: common

                                        else if countryCode == picked then
                                            Background.color (rgb 0.9 0.7 0.7) :: common

                                        else
                                            common
                                in
                                Theme.button
                                    attrs
                                    { onPress = Nothing
                                    , label = viewCountryName countryCode
                                    }
                            )
                        |> Theme.column [ width fill ]
                    , Theme.button [ width fill ]
                        { label = text "Next"
                        , onPress = Just Next
                        }
                    ]

        Finished { score, total } ->
            Theme.column
                [ centerX
                , centerY
                ]
                [ text <| "Final score: " ++ String.fromInt score ++ "/" ++ String.fromInt total
                , Theme.button [ centerX ]
                    { label = text "Play again"
                    , onPress = Just Play
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
