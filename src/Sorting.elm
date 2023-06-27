module Sorting exposing (view)

import Element.WithContext exposing (alignTop, el, fill, height, paragraph, px, text, textColumn, width)
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Flags
import Iso3166 exposing (CountryCode)
import List.Extra
import Theme exposing (Element)
import Types exposing (FrontendMsg(..), SortingModel)


view : SortingModel -> Element FrontendMsg
view ({ groups } as model) =
    Theme.column [ Theme.padding ]
        (List.indexedMap (viewGroup model) ([] :: groups) ++ [ toText groups ])


viewGroup : SortingModel -> Int -> List CountryCode -> Element FrontendMsg
viewGroup { selected } index codes =
    let
        inner : Element FrontendMsg
        inner =
            if List.isEmpty codes then
                el [ height <| px 40 ] <| text "<new>"

            else
                codes
                    |> List.Extra.gatherEqualsBy toContinent
                    |> List.sortBy (\( first, _ ) -> Flags.continentToString <| toContinent first)
                    |> List.map
                        (\( first, rest ) ->
                            Theme.column [ alignTop ]
                                [ text <| Flags.continentToString <| toContinent first
                                , Theme.wrappedRow [] <| List.map viewFlag (first :: rest)
                                ]
                        )
                    |> Theme.wrappedRow []
    in
    case selected of
        Nothing ->
            Input.button
                [ Border.width 1
                , Theme.padding
                , width fill
                , alignTop
                ]
                { label = inner
                , onPress = Nothing
                }

        Just countryCode ->
            Theme.button
                [ width fill
                , alignTop
                ]
                { label = inner
                , onPress = Just <| Move countryCode index
                }


viewFlag : CountryCode -> Element FrontendMsg
viewFlag countryCode =
    Theme.button []
        { label =
            Theme.column
                [ width fill
                , Font.center
                ]
                [ el [ Font.size 80 ] <| text <| Flags.toEmoji countryCode
                , el [ Font.center, width fill ] <| text <| Iso3166.toAlpha2 countryCode
                ]
        , onPress = Just <| SelectForMove countryCode
        }


toText : List (List CountryCode) -> Element FrontendMsg
toText groups =
    groups
        |> List.concatMap
            (\group ->
                List.map
                    (\element -> ( element, List.Extra.remove element group ))
                    group
            )
        |> List.sortBy (Iso3166.toAlpha2 << Tuple.first)
        |> List.map groupToText
        |> textColumn []


groupToText : ( CountryCode, List CountryCode ) -> Element msg
groupToText ( first, group ) =
    paragraph []
        [ text <|
            "( "
                ++ toUpper first
                ++ ", ["
                ++ String.join ", " (List.map toUpper group)
                ++ "], "
                ++ String.replace " " "" (Flags.continentToString <| toContinent first)
                ++ ")"
        ]


toContinent : CountryCode -> Flags.Continent
toContinent first =
    Flags.all
        |> List.Extra.find (\( cc, _, _ ) -> cc == first)
        |> Maybe.map (\( _, _, c ) -> c)
        |> Maybe.withDefault Flags.Antartica


toUpper : CountryCode -> String
toUpper countryCode =
    countryCode
        |> Iso3166.toAlpha2
        |> String.toUpper
        |> String.replace "GT" "GT_"
        |> String.replace "LT" "LT_"
