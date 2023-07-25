module Frontend.Playing exposing (view)

import Cldr.Arabic
import Cldr.Armenian
import Cldr.Basque
import Cldr.Bulgarian
import Cldr.Chinese
import Cldr.Chinese.Traditional
import Cldr.Croatian
import Cldr.Czech
import Cldr.Danish
import Cldr.Dutch
import Cldr.English
import Cldr.Estonian
import Cldr.Finnish
import Cldr.French
import Cldr.German
import Cldr.Greek
import Cldr.Hungarian
import Cldr.Italian
import Cldr.Japanese
import Cldr.Korean
import Cldr.Lithuanian
import Cldr.Norwegian
import Cldr.Polish
import Cldr.Portuguese
import Cldr.Romanian
import Cldr.Russian
import Cldr.Serbian
import Cldr.Slovak
import Cldr.Slovenian
import Cldr.Spanish
import Cldr.Swedish
import Cldr.Thai
import Cldr.Ukrainian
import Element.WithContext as Element exposing (Color, alignRight, alignTop, centerX, centerY, column, el, fill, height, inFront, moveDown, moveLeft, paddingXY, paragraph, px, rgb, rgba, shrink, text, width)
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import List.Extra
import Theme exposing (Attribute, Element, Gradient, viewFlag)
import Types exposing (Country(..), FrontendMsg(..), Language(..), PlayingModel, Property(..))


view : PlayingModel -> Element FrontendMsg
view model =
    el
        [ width fill
        , height fill
        , inFront <| viewScore model
        ]
    <|
        Theme.column
            [ centerX
            , centerY
            , Theme.padding
            , Theme.spacing
            ]
            [ case model.current.guessFrom of
                Name ->
                    viewNameClue model

                Flag ->
                    viewFlagClue model
            , case model.current.guessTo of
                Name ->
                    viewNameAnswers model

                Flag ->
                    viewFlagAnswers model
            , nextButton model
            ]


viewFlagClue : { a | current : Types.Card } -> Element msg
viewFlagClue { current } =
    viewFlag [ centerX ]
        { country = current.guessing
        , width = 240
        }


viewNameClue : { a | current : Types.Card } -> Element msg
viewNameClue { current } =
    paragraph
        [ Font.center
        , width fill
        , Font.size 50
        ]
        [ viewCountryName current.guessing ]


viewFlagAnswers : PlayingModel -> Element FrontendMsg
viewFlagAnswers ({ current } as model) =
    el [ centerX ] <|
        Theme.grid [ width fill ]
            { elements =
                current.answers
                    |> List.map (viewFlagButton model)
                    |> List.Extra.greedyGroupsOf 2
                    |> List.concatMap List.Extra.transpose
            , widths = [ shrink, shrink ]
            }


viewNameAnswers : PlayingModel -> Element FrontendMsg
viewNameAnswers ({ current } as model) =
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


nextButton : { a | picked : Maybe Country } -> Element FrontendMsg
nextButton { picked } =
    Theme.button [ centerX ]
        { background =
            if picked == Nothing then
                [ ( 0, rgb 0.7 0.7 0.7 ) ]

            else
                Theme.colors.buttonBackground
        , label = text "Next"
        , onPress =
            if picked == Nothing then
                Nothing

            else
                Just Next
        }


viewNameButton : PlayingModel -> Country -> Element FrontendMsg
viewNameButton { current, picked } country =
    let
        attrs : List (Attribute msg)
        attrs =
            [ width <| Element.maximum 200 fill
            , height fill
            , Font.center
            , if green then
                Font.color Theme.colors.black

              else
                Font.color Theme.colors.white
            ]

        green : Bool
        green =
            picked /= Nothing && country == current.guessing

        red : Bool
        red =
            Just country == picked
    in
    Theme.button
        attrs
        { background =
            if green then
                Theme.colors.greenButtonBackground

            else if red then
                Theme.colors.redButtonBackground

            else
                Theme.colors.buttonBackground
        , onPress =
            if picked == Nothing then
                Just <| Pick country

            else
                Nothing
        , label =
            paragraph []
                [ viewCountryName country ]
        }


viewFlagButton : PlayingModel -> Country -> List (Element FrontendMsg)
viewFlagButton { picked, current } country =
    let
        badge : String -> Color -> Gradient -> List (Element msg)
        badge label font gradient =
            [ el
                (if picked == Nothing then
                    [ Border.rounded 9999
                    , paddingXY 6 2
                    ]

                 else
                    [ Font.color font
                    , Theme.gradient gradient
                    , Border.rounded 9999
                    , paddingXY 6 2
                    ]
                )
                (text label)
            , text " "
            ]

        maybeBadge : List (Element msg)
        maybeBadge =
            if country == current.guessing then
                badge "✓" Theme.colors.black Theme.colors.greenButtonBackground

            else if Just country == picked then
                badge "✗" Theme.colors.white Theme.colors.redButtonBackground

            else
                badge "-" Theme.colors.white Theme.colors.buttonBackground

        nameAndBadge : Element msg
        nameAndBadge =
            paragraph
                (if picked == Nothing then
                    [ Font.center
                    , centerX
                    , Font.color <| rgba 0 0 0 0
                    , width <| Element.maximum 150 fill
                    ]

                 else
                    [ Font.center
                    , centerX
                    , width <| Element.maximum 150 fill
                    ]
                )
                (maybeBadge
                    ++ [ viewCountryName country ]
                )

        flag : Element msg
        flag =
            viewFlag [ centerX ]
                { country = country
                , width = 150
                }
    in
    case picked of
        Nothing ->
            [ Input.button [ width fill, centerY ]
                { onPress = Just <| Pick country
                , label = flag
                }
            , nameAndBadge
            ]

        Just _ ->
            [ el [ width fill, centerY ]
                flag
            , nameAndBadge
            ]


viewScore : PlayingModel -> Element msg
viewScore model =
    column
        [ alignTop
        , alignRight
        , moveDown Theme.rythm
        , moveLeft Theme.rythm
        ]
        [ el
            [ Theme.gradient Theme.colors.greenButtonBackground
            , Border.rounded 999
            , width <| px 100
            , height <| px 100
            ]
            (el [ centerX, centerY ] <|
                text <|
                    String.fromInt (model.options.gameLength - List.length model.queue)
                        ++ "/"
                        ++ String.fromInt model.options.gameLength
            )
        , paragraph [ Font.center ] [ text <| "score: " ++ String.fromInt model.score ]
        ]


viewCountryName : Country -> Element msg
viewCountryName country =
    case country of
        PartiallyRecognized ever ->
            never ever

        Iso3166 countryCode ->
            Element.with .language <|
                \language ->
                    case language of
                        Arabic ->
                            text <| Cldr.Arabic.countryCodeToName countryCode

                        Chinese ->
                            text <| Cldr.Chinese.countryCodeToName countryCode

                        Czech ->
                            text <| Cldr.Czech.countryCodeToName countryCode

                        Danish ->
                            text <| Cldr.Danish.countryCodeToName countryCode

                        Dutch ->
                            text <| Cldr.Dutch.countryCodeToName countryCode

                        English ->
                            text <| Cldr.English.countryCodeToName countryCode

                        Estonian ->
                            text <| Cldr.Estonian.countryCodeToName countryCode

                        French ->
                            text <| Cldr.French.countryCodeToName countryCode

                        German ->
                            text <| Cldr.German.countryCodeToName countryCode

                        Greek ->
                            text <| Cldr.Greek.countryCodeToName countryCode

                        Hungarian ->
                            text <| Cldr.Hungarian.countryCodeToName countryCode

                        Italian ->
                            text <| Cldr.Italian.countryCodeToName countryCode

                        Japanese ->
                            text <| Cldr.Japanese.countryCodeToName countryCode

                        Lithuanian ->
                            text <| Cldr.Lithuanian.countryCodeToName countryCode

                        Norwegian ->
                            text <| Cldr.Norwegian.countryCodeToName countryCode

                        Polish ->
                            text <| Cldr.Polish.countryCodeToName countryCode

                        Portuguese ->
                            text <| Cldr.Portuguese.countryCodeToName countryCode

                        Romanian ->
                            text <| Cldr.Romanian.countryCodeToName countryCode

                        Russian ->
                            text <| Cldr.Russian.countryCodeToName countryCode

                        Slovak ->
                            text <| Cldr.Slovak.countryCodeToName countryCode

                        Spanish ->
                            text <| Cldr.Spanish.countryCodeToName countryCode

                        Thai ->
                            text <| Cldr.Thai.countryCodeToName countryCode

                        Ukrainian ->
                            text <| Cldr.Ukrainian.countryCodeToName countryCode

                        Armenian ->
                            text <| Cldr.Armenian.countryCodeToName countryCode

                        Basque ->
                            text <| Cldr.Basque.countryCodeToName countryCode

                        Bulgarian ->
                            text <| Cldr.Bulgarian.countryCodeToName countryCode

                        ChineseTraditional ->
                            text <| Cldr.Chinese.Traditional.countryCodeToName countryCode

                        Croatian ->
                            text <| Cldr.Croatian.countryCodeToName countryCode

                        Finnish ->
                            text <| Cldr.Finnish.countryCodeToName countryCode

                        Korean ->
                            text <| Cldr.Korean.countryCodeToName countryCode

                        Serbian ->
                            text <| Cldr.Serbian.countryCodeToName countryCode

                        Slovenian ->
                            text <| Cldr.Slovenian.countryCodeToName countryCode

                        Swedish ->
                            text <| Cldr.Swedish.countryCodeToName countryCode
