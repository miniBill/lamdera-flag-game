module Frontend.Playing exposing (view)

import Element.WithContext as Element exposing (Color, alignRight, alignTop, centerX, centerY, column, el, fill, height, inFront, moveDown, moveLeft, paddingXY, paragraph, px, rgb, rgba, shrink, text, width)
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
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
import List.Extra
import Theme exposing (Attribute, Element, Gradient, viewFlag)
import Types exposing (Country(..), FrontendMsg(..), Language(..), PartiallyRecognized(..), PlayingModel, Property(..))


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
        PartiallyRecognized XK ->
            text "Kosovo"

        Iso3166 countryCode ->
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
