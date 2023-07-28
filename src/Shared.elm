module Shared exposing
    ( Flags, decoder
    , Model, Msg
    , init, update, subscriptions
    )

{-|

@docs Flags, decoder
@docs Model, Msg
@docs init, update, subscriptions

-}

import Cldr
import Dict
import Effect exposing (Effect)
import Flags
import Json.Decode
import Random
import Route exposing (Route)
import Route.Path
import Shared.Model exposing (Context, GameOptions, Model)
import Shared.Msg exposing (Msg)



-- FLAGS


type alias Flags =
    {}


decoder : Json.Decode.Decoder Flags
decoder =
    Json.Decode.succeed {}



-- INIT


type alias Model =
    Shared.Model.Model


init : Result Json.Decode.Error Flags -> Route () -> ( Model, Effect Msg )
init _ _ =
    let
        context : Context
        context =
            { locale = Cldr.En }

        model : Model
        model =
            { context = context
            , options = Shared.Model.defaultGameOptions
            , seed = Random.initialSeed 0
            }
    in
    ( model
    , Effect.sendCmd (Random.generate Shared.Msg.Seed Random.independentSeed)
    )



-- UPDATE


type alias Msg =
    Shared.Msg.Msg


update : Route () -> Msg -> Model -> ( Model, Effect Msg )
update _ msg model =
    case msg of
        Shared.Msg.Seed seed ->
            ( { model | seed = seed }
            , Effect.none
            )

        Shared.Msg.Locale locale ->
            ( { model | context = { locale = locale } }
            , Effect.none
            )

        Shared.Msg.ChangeOptions options ->
            ( { model | options = fixOptions options }
            , Effect.none
            )

        Shared.Msg.Finished { score } ->
            Debug.todo "branch 'Finished' not implemented"

        Shared.Msg.Play ->
            ( model
            , Effect.pushRoute
                { path = Route.Path.Play
                , query = Dict.empty
                , hash = Nothing
                }
            )


fixOptions : GameOptions -> GameOptions
fixOptions options =
    -- TODO: FIX THIS
    if options.gameLength > 100 then
        { options
            | gameLength =
                List.length <| Flags.all options
        }

    else
        options



-- SUBSCRIPTIONS


subscriptions : Route () -> Model -> Sub Msg
subscriptions _ _ =
    Sub.none
