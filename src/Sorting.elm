module Sorting exposing (init, view)

import Element.WithContext as Element exposing (alignTop, el, fill, height, px, text, width)
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Flags
import Html
import Iso3166 exposing (CountryCode(..))
import List.Extra
import Set
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
                [ Theme.viewFlag
                    { countryCode = countryCode
                    , width = 50
                    }
                , el [ Font.center, width fill ] <| text <| Iso3166.toAlpha2 countryCode
                ]
        , onPress = Just <| SelectForMove countryCode
        }


toText : List (List CountryCode) -> Element FrontendMsg
toText groups =
    let
        content =
            groups
                |> List.sortBy
                    (Iso3166.toAlpha2
                        << Maybe.withDefault AD
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


groupToText : List CountryCode -> String
groupToText group =
    "["
        ++ String.join ", " (List.map toUpper group)
        ++ "]"


toUpper : CountryCode -> String
toUpper countryCode =
    countryCode
        |> Iso3166.toAlpha2
        |> String.toUpper
        |> String.replace "GT" "GT_"
        |> String.replace "LT" "LT_"


init : { groups : List (List CountryCode), selected : Maybe CountryCode }
init =
    { groups =
        Iso3166.all
            |> List.foldl
                (\countryCode ( acc, setAcc ) ->
                    if Set.member (Iso3166.toAlpha2 countryCode) setAcc then
                        ( acc, setAcc )

                    else
                        let
                            similar =
                                Flags.getSimilarFlags { sovereignOnly = False } countryCode
                        in
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
