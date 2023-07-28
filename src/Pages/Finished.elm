module Pages.Finished exposing (Model, Msg, page)

import Dict
import Effect exposing (Effect)
import Element.WithContext as Element exposing (centerX, centerY, el, fill, width)
import Element.WithContext.Font as Font
import Page exposing (Page)
import Route exposing (Route)
import Route.Path
import Shared
import Theme exposing (text)
import Translations
import View exposing (View)


page : Shared.Model -> Route () -> Page Model Msg
page shared _ =
    Page.new
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view shared
        }



-- INIT


type alias Model =
    Maybe { score : Int }


init : () -> ( Model, Effect Msg )
init () =
    ( Nothing, Effect.goHome )



-- UPDATE


type Msg
    = Play


update : Msg -> Model -> ( Model, Effect Msg )
update msg model =
    case msg of
        Play ->
            ( model, Effect.goHome )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Shared.Model -> Model -> View Msg
view shared maybeModel =
    case maybeModel of
        Nothing ->
            Element.none

        Just model ->
            Theme.column
                [ centerX
                , centerY
                , Element.spacing <| 2 * Theme.rythm
                ]
                [ el [ width fill, Font.center ] <|
                    text <|
                        Translations.finalScore
                            { points = String.fromInt model.score
                            , total = String.fromInt shared.options.gameLength
                            }
                , Theme.button [ centerX ]
                    { background = Theme.colors.buttonBackground
                    , label = text Translations.playAgain
                    , onPress = Just Play
                    }
                ]
