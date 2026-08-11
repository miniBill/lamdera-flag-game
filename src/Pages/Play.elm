module Pages.Play exposing (InnerModel, Model, Msg, page)

import Cldr.English
import Cldr.Localized
import Color exposing (Color)
import Effect exposing (Effect)
import Flags
import Html.WithContext as Html
import Html.WithContext.Attributes as Attributes
import Html.WithContext.Events as Events
import Page exposing (Page)
import Route exposing (Route)
import Shared
import Shared.Model exposing (Card, Country(..), NonIso3166(..), Property(..))
import Theme exposing (Attribute, Gradient, Html, column, text, textInvariant, viewFlag)
import Translations
import View exposing (View)


page : Shared.Model -> Route () -> Page Model Msg
page shared _ =
    Page.new
        { init = init shared
        , update = update
        , subscriptions = subscriptions
        , view = view shared
        }



-- INIT


type alias Model =
    Maybe InnerModel


type alias InnerModel =
    { current : Card
    , picked : Maybe Country
    , queue : List Card
    , score : Int
    }


init : Shared.Model -> () -> ( Model, Effect Msg )
init shared () =
    case Flags.allCards shared.options shared.seed of
        ( [], _ ) ->
            ( Nothing, Effect.goHome )

        ( head :: tail, newSeed ) ->
            let
                model : InnerModel
                model =
                    { current = head
                    , queue = tail
                    , picked = Nothing
                    , score = 0
                    }
            in
            ( Just model
            , Effect.seed newSeed
            )



-- UPDATE


type Msg
    = Pick Country
    | Next


update : Msg -> Model -> ( Model, Effect Msg )
update msg maybeModel =
    case maybeModel of
        Nothing ->
            ( maybeModel, Effect.goHome )

        Just model ->
            case msg of
                Pick countryCode ->
                    ( { model
                        | picked = Just countryCode
                        , score =
                            if countryCode == model.current.guessing then
                                model.score + 1

                            else
                                model.score
                      }
                        |> Just
                    , Effect.none
                    )

                Next ->
                    case model.queue of
                        [] ->
                            ( maybeModel
                            , Effect.finished { score = model.score }
                            )

                        head :: tail ->
                            ( { model
                                | current = head
                                , queue = tail
                                , picked = Nothing
                              }
                                |> Just
                            , Effect.none
                            )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Shared.Model -> Model -> View Msg
view shared maybeModel =
    case maybeModel of
        Nothing ->
            []

        Just model ->
            [ viewScore shared model
            , Theme.column
                [ Theme.padding
                , Attributes.style "gap" Theme.rhythmDouble
                ]
                [ case model.current.guessFrom of
                    Name ->
                        viewNameClue model

                    Flag ->
                        viewFlagClue model
                , case model.current.guessTo of
                    Name ->
                        viewNameAnswers shared model

                    Flag ->
                        viewFlagAnswers model
                , nextButton model
                ]
            ]


viewFlagClue : { a | current : Card } -> Html msg
viewFlagClue { current } =
    viewFlag []
        { country = current.guessing
        , width = 240
        }


viewNameClue : { a | current : Card } -> Html msg
viewNameClue { current } =
    Html.p [] [ viewCountryName current.guessing ]


viewFlagAnswers : InnerModel -> Html Msg
viewFlagAnswers ({ current } as model) =
    Theme.grid []
        { elements = List.map (viewFlagButton model) current.answers
        , widths = [ "auto", "auto" ]
        }


viewNameAnswers : Shared.Model -> InnerModel -> Html Msg
viewNameAnswers shared ({ current } as model) =
    Theme.grid []
        { widths =
            if shared.screen.width > 500 then
                [ "auto", "auto" ]

            else
                [ "auto" ]
        , elements =
            List.map (viewNameButton model) current.answers
        }


nextButton : { a | picked : Maybe Country } -> Html Msg
nextButton { picked } =
    Theme.button []
        { background = Nothing
        , label = text Translations.next
        , onPress =
            if picked == Nothing then
                Nothing

            else
                Just Next
        }


viewNameButton : InnerModel -> Country -> Html Msg
viewNameButton { current, picked } country =
    let
        attrs : List (Attribute msg)
        attrs =
            [ if green then
                Attributes.style "color" "black"

              else
                Attributes.style "color" "white"
            ]

        green : Bool
        green =
            picked /= Nothing && country == current.guessing
    in
    Theme.button
        attrs
        { background =
            if green then
                Just Theme.colors.greenButtonBackground

            else if Just country == picked then
                Just Theme.colors.redButtonBackground

            else
                Just Theme.colors.buttonBackground
        , onPress =
            if picked == Nothing then
                Just <| Pick country

            else
                Nothing
        , label =
            Html.p []
                [ viewCountryName country ]
        }


viewFlagButton : InnerModel -> Country -> Html Msg
viewFlagButton { picked, current } country =
    let
        badge : String -> Color -> Gradient -> Html msg
        badge label font gradient =
            Html.div
                (if picked == Nothing then
                    [ Attributes.style "border-radius" "9999px"
                    , Attributes.style "padding" "6px 2px"
                    , Attributes.style "width" "30px"
                    , Attributes.style "height" "30px"
                    , Attributes.style "text-align" "center"
                    ]

                 else
                    [ Attributes.style "color" (Color.toCssString font)
                    , Theme.gradient gradient
                    , Attributes.style "border-radius" "9999px"
                    , Attributes.style "padding" "6px 2px"
                    , Attributes.style "width" "30px"
                    , Attributes.style "height" "30px"
                    , Attributes.style "text-align" "center"
                    ]
                )
                [ textInvariant label ]

        maybeBadge : Html msg
        maybeBadge =
            if country == current.guessing then
                badge "✓" Color.black Theme.colors.greenButtonBackground

            else if Just country == picked then
                badge "✗" Color.white Theme.colors.redButtonBackground

            else
                badge "-" Color.white Theme.colors.buttonBackground

        nameAndBadge : Html msg
        nameAndBadge =
            Theme.row
                (if picked == Nothing then
                    [ Attributes.style "opacity" "0"
                    , Attributes.style "max-width" "150px"
                    ]

                 else
                    [ Attributes.style "color" "black"
                    , Attributes.style "max-width" "150px"
                    ]
                )
                [ maybeBadge, viewCountryName country ]

        flag : List (Attribute msg) -> Html msg
        flag attrs =
            viewFlag attrs
                { country = country
                , width = 150
                }
    in
    Theme.column []
        [ case picked of
            Nothing ->
                flag [ Events.onClick (Pick country) ]

            Just _ ->
                flag []
        , nameAndBadge
        ]


viewScore : Shared.Model -> InnerModel -> Html msg
viewScore shared model =
    Theme.column
        [ Theme.padding
        , Attributes.style "position" "absolute"
        , Attributes.style "top" Theme.rhythm
        , Attributes.style "right" Theme.rhythm
        ]
        [ Html.div
            [ Theme.gradient Theme.colors.greenButtonBackground
            , Attributes.style "border-radius" "999px"
            , Attributes.style "width" "100px"
            , Attributes.style "height" "100px"
            , Attributes.style "display" "flex"
            , Attributes.style "flex-direction" "column"
            , Attributes.style "place-content" "center"
            , Attributes.style "text-align" "center"
            ]
            [ Theme.textInvariant <|
                String.fromInt (shared.options.gameLength - List.length model.queue)
                    ++ "/"
                    ++ String.fromInt shared.options.gameLength
            ]
        , Html.p [] [ text <| Translations.score <| String.fromInt model.score ]
        ]


viewCountryName : Country -> Html msg
viewCountryName country =
    case country of
        Iso3166 countryCode ->
            Html.withContext <|
                \{ locale } ->
                    case Cldr.Localized.countryCodeToName locale countryCode of
                        Just name ->
                            Theme.textInvariant name

                        Nothing ->
                            Theme.textInvariant (Cldr.English.countryCodeToName countryCode)

        NonIso3166 Abkhazia ->
            -- TODO: translate
            Theme.textInvariant "Abkhazia"

        NonIso3166 NorthernCyprus ->
            -- TODO: translate
            Theme.textInvariant "Northern Cyprus"

        NonIso3166 Somaliland ->
            -- TODO: translate
            Theme.textInvariant "Somaliland"

        NonIso3166 SouthOssetia ->
            -- TODO: translate
            Theme.textInvariant "South Ossetia"

        NonIso3166 Transnistria ->
            -- TODO: translate
            Theme.textInvariant "Transnistria"
