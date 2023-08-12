module Pages.Play exposing (InnerModel, Model, Msg(..), page)

import Cldr.English
import Cldr.Localized
import Color
import Effect exposing (Effect)
import Flags
import List.Extra
import Page exposing (Page)
import Route exposing (Route)
import Shared
import Shared.Model exposing (Card, Country(..), Property(..))
import Theme exposing (Attribute, Element, Gradient, column, text, textInvariant, viewFlag)
import Translations
import Ui.WithContext as Ui exposing (Color, alignRight, alignTop, centerX, centerY, el, fill, height, inFront, paddingWith, px, rgba, width, widthMax)
import Ui.WithContext.Events as Events
import Ui.WithContext.Font as Font
import Ui.WithContext.Table as Table
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
            Ui.none

        Just model ->
            Theme.row
                [ width fill
                , height fill
                , inFront <| viewScore shared model
                ]
                [ Theme.column
                    [ centerX
                    , centerY
                    , Theme.padding
                    , Ui.spacing (Theme.rythm * 5 // 2)
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
                ]


viewFlagClue : { a | current : Card } -> Element msg
viewFlagClue { current } =
    viewFlag [ centerX ]
        { country = current.guessing
        , width = 240
        }


viewNameClue : { a | current : Card } -> Element msg
viewNameClue { current } =
    el
        [ Font.center
        , width fill
        , Font.size 50
        ]
    <|
        viewCountryName current.guessing


viewFlagAnswers : InnerModel -> Element Msg
viewFlagAnswers ({ current } as model) =
    el [ centerX ] <|
        Theme.grid [ width fill ]
            { elements =
                current.answers
                    |> List.map (viewFlagButton model)
                    |> List.Extra.greedyGroupsOf 2
                    |> List.concatMap List.Extra.transpose
            , widths = [ { fill = False }, { fill = False } ]
            }


viewNameAnswers : InnerModel -> Element Msg
viewNameAnswers ({ current } as model) =
    Table.view [ width fill, Theme.spacing ]
        tableConfig
        (current.answers
            |> List.map (viewNameButton model)
            |> List.Extra.greedyGroupsOf 2
        )


tableConfig : Table.Config Shared.Model.Context () (List (Element msg)) msg
tableConfig =
    Table.columns
        [ Table.column
            { header = Table.cell [] Ui.none
            , view =
                \lst ->
                    lst
                        |> List.head
                        |> Maybe.withDefault Ui.none
                        |> Table.cell []
            }
            |> Table.withWidth { fill = True, min = Nothing, max = Nothing }
        , Table.column
            { header = Table.cell [] Ui.none
            , view =
                \lst ->
                    lst
                        |> List.drop 1
                        |> List.head
                        |> Maybe.withDefault Ui.none
                        |> Table.cell []
            }
            |> Table.withWidth { fill = True, min = Nothing, max = Nothing }
        ]


nextButton : { a | picked : Maybe Country } -> Element Msg
nextButton { picked } =
    Theme.button [ centerX ]
        { background =
            if picked == Nothing then
                [ ( 0, Color.rgb255 0xB3 0xB3 0xB3 ) ]

            else
                Theme.colors.buttonBackground
        , label = text Translations.next
        , onPress =
            if picked == Nothing then
                Nothing

            else
                Just Next
        }


viewNameButton : InnerModel -> Country -> Element Msg
viewNameButton { current, picked } country =
    let
        attrs : List (Attribute msg)
        attrs =
            [ widthMax 200
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
    in
    Theme.button
        attrs
        { background =
            if green then
                Theme.colors.greenButtonBackground

            else if Just country == picked then
                Theme.colors.redButtonBackground

            else
                Theme.colors.buttonBackground
        , onPress =
            if picked == Nothing then
                Just <| Pick country

            else
                Nothing
        , label =
            viewCountryName country
        }


viewFlagButton : InnerModel -> Country -> List (Element Msg)
viewFlagButton { picked, current } country =
    let
        badge : String -> Color -> Gradient -> List (Element msg)
        badge label font gradient =
            [ el
                (if picked == Nothing then
                    [ Ui.rounded 9999
                    , paddingWith { left = 6, right = 6, top = 2, bottom = 2 }
                    ]

                 else
                    [ Font.color font
                    , Theme.gradient gradient
                    , Ui.rounded 9999
                    , paddingWith { left = 6, right = 6, top = 2, bottom = 2 }
                    ]
                )
                (textInvariant label)
            , textInvariant " "
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
            Ui.row
                (if picked == Nothing then
                    [ Font.center
                    , centerX
                    , Font.color <| rgba 0 0 0 0
                    , width fill
                    , Ui.widthMax 150
                    ]

                 else
                    [ Font.center
                    , centerX
                    , width fill
                    , Ui.widthMax 150
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
            [ el
                [ width fill
                , centerY
                , Events.onClick <| Pick country
                ]
                flag
            , nameAndBadge
            ]

        Just _ ->
            [ el
                [ width fill
                , centerY
                ]
                flag
            , nameAndBadge
            ]


viewScore : Shared.Model -> InnerModel -> Element msg
viewScore shared model =
    column
        [ alignTop
        , alignRight
        , Theme.padding
        ]
        [ el
            [ Theme.gradient Theme.colors.greenButtonBackground
            , Ui.rounded 999
            , width <| px 100
            , height <| px 100
            , centerX
            ]
            (el [ centerX, centerY ] <|
                textInvariant <|
                    String.fromInt (shared.options.gameLength - List.length model.queue)
                        ++ "/"
                        ++ String.fromInt shared.options.gameLength
            )
        , el [ Font.center ] <| text <| Translations.score <| String.fromInt model.score
        ]


viewCountryName : Country -> Element msg
viewCountryName country =
    case country of
        PartiallyRecognized ever ->
            never ever

        Iso3166 countryCode ->
            Ui.withContext <|
                \{ locale } ->
                    case Cldr.Localized.countryCodeToName locale countryCode of
                        Just name ->
                            Theme.textInvariant name

                        Nothing ->
                            Theme.textInvariant (Cldr.English.countryCodeToName countryCode)
