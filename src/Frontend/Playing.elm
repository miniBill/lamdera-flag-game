module Frontend.Playing exposing (view)

import Element.WithContext as Element exposing (Color, alignBottom, alignRight, alignTop, centerX, centerY, el, fill, height, inFront, moveDown, moveLeft, paddingXY, paragraph, px, rgb, rgba, shrink, text, width)
import Element.WithContext.Background as Background
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Html.Attributes
import Iso3166 exposing (CountryCode(..))
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
import Theme exposing (Attribute, Element, viewFlag)
import Types exposing (FrontendMsg(..), Language(..), PlayingModel, Property(..))


view : PlayingModel -> Element FrontendMsg
view ({ options, score, current, picked } as model) =
    el
        [ width fill
        , height fill
        , inFront <| viewScore score options.gameLength
        , Font.family [ Font.typeface "urbane-rounded", Font.sansSerif ]
        ]
    <|
        Theme.column
            [ centerX
            , centerY
            , Theme.padding
            ]
            [ case current.guessFrom of
                Flag ->
                    el [ centerX ] <|
                        viewFlag
                            { countryCode = current.guessing
                            , width = 240
                            }

                Name ->
                    paragraph
                        [ Font.center
                        , width fill
                        , Font.size 50
                        ]
                        [ viewCountryName current.guessing ]
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
                        |> List.map
                            (\group ->
                                Theme.grid [ width fill ]
                                    { elements = List.Extra.transpose group
                                    , widths = [ fill, fill ]
                                    }
                            )
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
            [ width <| Element.maximum 200 fill
            , height fill
            , Font.center
            ]

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
            paragraph []
                [ viewCountryName countryCode ]
        }


viewFlagButton : PlayingModel -> CountryCode -> List (Element FrontendMsg)
viewFlagButton { picked, current } countryCode =
    let
        badge : String -> Color -> List (Element msg)
        badge label color =
            [ el
                (if picked == Nothing then
                    [ Border.rounded 9999
                    , paddingXY 6 2
                    ]

                 else
                    [ Font.color <| rgb 1 1 1
                    , Background.color color
                    , Border.rounded 9999
                    , paddingXY 6 2
                    ]
                )
                (text label)
            , text " "
            ]

        maybeBadge : List (Element msg)
        maybeBadge =
            if countryCode == current.guessing then
                badge "✓" <| rgb 0.2 0.6 0.2

            else if Just countryCode == picked then
                badge "✗" <| rgb 0.6 0.2 0.2

            else
                badge "-" <| rgb 0.9 0.9 0.9

        nameAndBadge : Element msg
        nameAndBadge =
            paragraph
                (if picked == Nothing then
                    [ Font.center
                    , Font.color <| rgba 0 0 0 0
                    ]

                 else
                    [ Font.center ]
                )
                (maybeBadge
                    ++ [ viewCountryName countryCode ]
                )

        flag : Element msg
        flag =
            el
                [ centerX
                , width shrink
                , alignBottom
                , Element.htmlAttribute <| Html.Attributes.id "flag"
                ]
            <|
                viewFlag
                    { countryCode = countryCode
                    , width = 150
                    }
    in
    case picked of
        Nothing ->
            [ Input.button [ centerX, alignBottom ]
                { onPress = Just <| Pick countryCode
                , label = flag
                }
            , nameAndBadge
            ]

        Just _ ->
            [ flag
            , nameAndBadge
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
