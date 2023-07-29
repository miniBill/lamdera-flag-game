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
import Codec exposing (Codec)
import Dict
import Effect exposing (Effect)
import Flags
import Json.Decode
import PkgPorts
import Random
import Route exposing (Route)
import Route.Path
import Shared.Model exposing (Context, Difficulty(..), GameOptions, Model, Property(..))
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
    , Effect.batch
        [ Effect.loadLocale storageKeys.locale
        , Effect.loadLocalStorage storageKeys.gameOptions
        , Effect.sendCmd (Random.generate Shared.Msg.Seed Random.independentSeed)
        ]
    )



-- UPDATE


type alias Msg =
    Shared.Msg.Msg


storageKeys : { locale : String, gameOptions : String }
storageKeys =
    { locale = "locale"
    , gameOptions = "gameOptions"
    }


update : Route () -> Msg -> Model -> ( Model, Effect Msg )
update _ msg model =
    case msg of
        Shared.Msg.Seed seed ->
            ( { model | seed = seed }
            , Effect.none
            )

        Shared.Msg.Locale locale ->
            ( { model | context = { locale = locale } }
            , Effect.saveToLocalStorage
                { key = storageKeys.locale
                , value = Codec.encodeToValue localeCodec locale
                }
            )

        Shared.Msg.ChangeOptions options ->
            ( { model | options = fixOptions options }
            , Effect.saveToLocalStorage
                { key = storageKeys.gameOptions
                , value = Codec.encodeToValue gameOptionsCodec options
                }
            )

        Shared.Msg.Finished { score } ->
            ( model
            , Effect.replaceRoute
                { path = Route.Path.Finished
                , query = Dict.empty
                , hash = Just <| String.fromInt score
                }
            )

        Shared.Msg.Play ->
            ( model
            , Effect.pushRoute
                { path = Route.Path.Play
                , query = Dict.empty
                , hash = Nothing
                }
            )

        Shared.Msg.Nop ->
            ( model, Effect.none )


gameOptionsCodec : Codec GameOptions
gameOptionsCodec =
    Codec.object
        (\gameLength difficulty answersPerCard guessPatterns sovereignOnly ->
            { gameLength = gameLength
            , difficulty = difficulty
            , answersPerCard = answersPerCard
            , guessPatterns = guessPatterns
            , sovereignOnly = sovereignOnly
            }
        )
        |> Codec.field "gameLength" .gameLength Codec.int
        |> Codec.field "difficulty" .difficulty difficultyCodec
        |> Codec.field "answersPerCard" .answersPerCard Codec.int
        |> Codec.field "guessPatterns" .guessPatterns (Codec.list (Codec.tuple propertyCodec propertyCodec))
        |> Codec.field "sovereignOnly" .sovereignOnly Codec.bool
        |> Codec.buildObject


propertyCodec : Codec Property
propertyCodec =
    Codec.custom
        (\fflag fname value ->
            case value of
                Flag ->
                    fflag

                Name ->
                    fname
        )
        |> Codec.variant0 "Flag" Flag
        |> Codec.variant0 "Name" Name
        |> Codec.buildCustom


difficultyCodec : Codec Difficulty
difficultyCodec =
    Codec.custom
        (\feasy fnormal fhard value ->
            case value of
                Easy ->
                    feasy

                Normal ->
                    fnormal

                Hard ->
                    fhard
        )
        |> Codec.variant0 "Easy" Easy
        |> Codec.variant0 "Normal" Normal
        |> Codec.variant0 "Hard" Hard
        |> Codec.buildCustom


localeCodec : Codec Cldr.Locale
localeCodec =
    Codec.andThen
        (\localeString ->
            case Cldr.localeFromAlpha2 localeString of
                Just locale ->
                    Codec.succeed locale

                Nothing ->
                    Codec.fail <| "\"" ++ localeString ++ "\" is not a valid locale"
        )
        Cldr.localeToAlpha2
        Codec.string


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
    PkgPorts.loadedLocalStorage
        (\{ key, value } ->
            if key == storageKeys.locale then
                case Codec.decodeValue localeCodec value of
                    Ok locale ->
                        Shared.Msg.Locale locale

                    Err _ ->
                        Shared.Msg.Nop

            else if key == storageKeys.gameOptions then
                case Codec.decodeValue gameOptionsCodec value of
                    Ok gameOptions ->
                        Shared.Msg.ChangeOptions gameOptions

                    Err _ ->
                        Shared.Msg.Nop

            else
                Shared.Msg.Nop
        )
