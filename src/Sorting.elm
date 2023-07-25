module Sorting exposing (init, view)

import Cldr exposing (CountryCode(..))
import Element.WithContext as Element exposing (alignTop, centerX, el, fill, height, px, text, width)
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Flags
import Html
import List.Extra
import Set
import Theme exposing (Element)
import Types exposing (Country(..), FrontendMsg(..), SortingModel)


view : SortingModel -> Element FrontendMsg
view ({ groups } as model) =
    Theme.column [ Theme.padding ]
        (List.indexedMap (viewGroup model) ([] :: groups) ++ [ toText groups ])


viewGroup : SortingModel -> Int -> List Country -> Element FrontendMsg
viewGroup { selected } index codes =
    let
        inner : Element FrontendMsg
        inner =
            if List.isEmpty codes then
                el [ height <| px 40 ] <| text "<new>"

            else
                codes
                    |> List.Extra.gatherEqualsBy Flags.toContinent
                    |> List.sortBy (\( first, _ ) -> Flags.continentToString <| Flags.toContinent first)
                    |> List.map
                        (\( first, rest ) ->
                            Theme.column [ alignTop, width fill ]
                                [ text <| Flags.continentToString <| Flags.toContinent first
                                , Theme.wrappedRow [] <| List.map viewFlag (first :: rest)
                                ]
                        )
                    |> Theme.row []
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
                { background = Theme.colors.buttonBackground
                , label = inner
                , onPress = Just <| Move countryCode index
                }


viewFlag : Country -> Element FrontendMsg
viewFlag country =
    Theme.button []
        { background = Theme.colors.buttonBackground
        , label =
            Theme.column
                [ width fill
                , Font.center
                ]
                [ Theme.viewFlag [ centerX ]
                    { country = country
                    , width = 50
                    }
                , el [ Font.center, width fill ] <| text <| Types.countryToAlpha2 country
                ]
        , onPress = Just <| SelectForMove country
        }


toText : List (List Country) -> Element FrontendMsg
toText groups =
    let
        content : String
        content =
            groups
                |> List.sortBy
                    (Types.countryToAlpha2
                        << Maybe.withDefault (Iso3166 AD)
                        << List.head
                    )
                |> List.map groupToText
                |> String.join "\n    , "
                |> (\l ->
                        "similarityGroups =\n    ["
                            ++ l
                            ++ "\n    ]"
                   )
    in
    Html.pre []
        [ Html.text content ]
        |> Element.html
        |> el []


groupToText : List Country -> String
groupToText group =
    "[" ++ String.join ", " (List.map countryToText group) ++ "]"


countryToText : Country -> String
countryToText country =
    case country of
        Iso3166 _ ->
            "Iso3166 " ++ toUpper country

        PartiallyRecognized _ ->
            "PartiallyRecognized " ++ toUpper country


toUpper : Country -> String
toUpper country =
    country
        |> Types.countryToAlpha2
        |> String.toUpper
        |> String.replace "GT" "GT_"
        |> String.replace "LT" "LT_"


init : { groups : List (List Country), selected : Maybe Country }
init =
    { groups =
        Flags.all { sovereignOnly = False }
            |> List.foldl
                (\country ( acc, setAcc ) ->
                    if Set.member (Types.countryToAlpha2 country) setAcc then
                        ( acc, setAcc )

                    else
                        let
                            similar : List Country
                            similar =
                                Flags.getSimilarFlags { sovereignOnly = False } country
                        in
                        ( (country :: similar) :: acc
                        , (country :: similar)
                            |> List.map Types.countryToAlpha2
                            |> Set.fromList
                            |> Set.union setAcc
                        )
                )
                ( [], Set.empty )
            |> Tuple.first
    , selected = Nothing
    }
