module Pages.Sort exposing (Model, Msg, page)

import Cldr exposing (CountryCode(..))
import Effect exposing (Effect)
import Element.WithContext as Element exposing (alignTop, centerX, el, fill, height, px, width)
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Flags
import Html
import List.Extra
import Page exposing (Page)
import Route exposing (Route)
import Set
import Shared
import Shared.Model exposing (Country(..), countryToAlpha2)
import Theme exposing (Element, textInvariant)
import View exposing (View)


page : Shared.Model -> Route () -> Page Model Msg
page _ _ =
    Page.new
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- INIT


type alias Model =
    { groups : List (List Country)
    , selected : Maybe Country
    }


init : () -> ( Model, Effect Msg )
init () =
    ( { groups =
            Flags.all { sovereignOnly = False }
                |> List.foldl
                    (\country ( acc, setAcc ) ->
                        if Set.member (countryToAlpha2 country) setAcc then
                            ( acc, setAcc )

                        else
                            let
                                similar : List Country
                                similar =
                                    Flags.getSimilarFlags { sovereignOnly = False } country
                            in
                            ( (country :: similar) :: acc
                            , (country :: similar)
                                |> List.map countryToAlpha2
                                |> Set.fromList
                                |> Set.union setAcc
                            )
                    )
                    ( [], Set.empty )
                |> Tuple.first
      , selected = Nothing
      }
    , Effect.none
    )



-- UPDATE


type Msg
    = Move Country Int
    | SelectForMove Country


update : Msg -> Model -> ( Model, Effect Msg )
update msg model =
    case msg of
        SelectForMove countryCode ->
            ( { model
                | selected = Just countryCode
              }
            , Effect.none
            )

        Move countryCode index ->
            ( { model
                | selected = Nothing
                , groups =
                    model.groups
                        |> List.map (List.Extra.remove countryCode)
                        |> (::) []
                        |> List.Extra.updateAt index ((::) countryCode)
                        |> List.Extra.filterNot List.isEmpty
                        |> List.sortBy List.length
                        |> List.map (List.sortBy countryToAlpha2)
              }
            , Effect.none
            )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> View Msg
view ({ groups } as model) =
    Theme.column [ Theme.padding ]
        (List.indexedMap (viewGroup model) ([] :: groups) ++ [ toText groups ])


viewGroup : Model -> Int -> List Country -> Element Msg
viewGroup { selected } index codes =
    let
        inner : Element Msg
        inner =
            if List.isEmpty codes then
                el [ height <| px 40 ] <| textInvariant "<new>"

            else
                codes
                    |> List.Extra.gatherEqualsBy Flags.toContinent
                    |> List.sortBy (\( first, _ ) -> Flags.continentToString <| Flags.toContinent first)
                    |> List.map
                        (\( first, rest ) ->
                            Theme.column
                                [ alignTop
                                , width fill
                                ]
                                [ textInvariant <| Flags.continentToString <| Flags.toContinent first
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


viewFlag : Country -> Element Msg
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
                , el [ Font.center, width fill ] <| textInvariant <| countryToAlpha2 country
                ]
        , onPress = Just <| SelectForMove country
        }


toText : List (List Country) -> Element Msg
toText groups =
    let
        content : String
        content =
            groups
                |> List.sortBy
                    (countryToAlpha2
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
        |> countryToAlpha2
        |> String.toUpper
        |> String.replace "GT" "GT_"
        |> String.replace "LT" "LT_"
