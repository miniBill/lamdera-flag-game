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

import Browser.Events
import Codec exposing (Codec)
import Dict
import Effect exposing (Effect)
import Flags
import Json.Decode
import List.Extra
import PkgPorts
import Random
import Route exposing (Route)
import Route.Path
import Shared.Model exposing (Category, Context, Continent(..), Difficulty(..), GameOptions, Model, Property(..))
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
            { locale = "en-US"
            , countryNames = Dict.empty
            }

        model : Model
        model =
            { context = context
            , options = Shared.Model.defaultGameOptions
            , seed = Random.initialSeed 0
            , screen = { width = 1024, height = 768 }
            }
    in
    ( model
    , Effect.batch
        [ Effect.loadLocale storageKeys.locale
        , Effect.loadLocalStorage storageKeys.gameOptions
        , Effect.measureScreen
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
            let
                context : Context
                context =
                    model.context
            in
            ( { model | context = { context | locale = locale } }
            , Effect.batch
                [ Effect.saveToLocalStorage
                    { key = storageKeys.locale
                    , value = Codec.encodeToValue Codec.string locale
                    }
                , Effect.loadTranslationsFor locale Shared.Msg.LoadedTranslations
                ]
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

        Shared.Msg.Resized width height ->
            ( { model | screen = { width = width, height = height } }, Effect.none )

        Shared.Msg.LoadedTranslations (Err e) ->
            let
                _ =
                    Debug.log "Error loading translations" e
            in
            ( model, Effect.none )

        Shared.Msg.LoadedTranslations (Ok translations) ->
            let
                context : Context
                context =
                    model.context
            in
            ( { model | context = { context | countryNames = translations } }
            , Effect.none
            )


gameOptionsCodec : Codec GameOptions
gameOptionsCodec =
    Codec.object
        (\gameLength difficulty answersPerCard guessPatterns categories continents ->
            { gameLength = gameLength
            , difficulty = difficulty
            , answersPerCard = answersPerCard
            , guessPatterns = guessPatterns
            , categories = categories
            , continents = Maybe.withDefault [] continents
            }
                |> fixOptions
        )
        |> Codec.field "gameLength" .gameLength Codec.int
        |> Codec.field "difficulty" .difficulty difficultyCodec
        |> Codec.field "answersPerCard" .answersPerCard Codec.int
        |> Codec.field "guessPatterns" .guessPatterns (Codec.list (Codec.tuple propertyCodec propertyCodec))
        |> Codec.field "categories" .categories (Codec.list categoryCodec)
        |> Codec.maybeField "continents" (.continents >> Just) (Codec.list continentCodec)
        |> Codec.buildObject


categoryCodec : Codec Category
categoryCodec =
    Codec.enum Codec.string
        (List.map
            (\category -> ( Flags.categoryToString category, category ))
            Shared.Model.allCategories
        )


continentCodec : Codec Continent
continentCodec =
    Codec.enum Codec.string
        (List.map
            (\continent -> ( Flags.continentToString continent, continent ))
            Shared.Model.allContinents
        )


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


fixOptions : GameOptions -> GameOptions
fixOptions options =
    let
        withoutAntarctica : List Continent
        withoutAntarctica =
            List.Extra.remove Antarctica options.continents

        almostAll : Int
        almostAll =
            List.length Shared.Model.allContinents - 1

        fixed1 : GameOptions
        fixed1 =
            { options
                | continents =
                    if
                        List.isEmpty withoutAntarctica
                            || (List.length withoutAntarctica == almostAll)
                    then
                        Shared.Model.allContinents

                    else
                        withoutAntarctica
            }
    in
    -- TODO: FIX THIS
    if fixed1.gameLength > 100 then
        { fixed1
            | gameLength =
                List.length <| Flags.all fixed1
        }

    else
        fixed1



-- SUBSCRIPTIONS


subscriptions : Route () -> Model -> Sub Msg
subscriptions _ _ =
    Sub.batch
        [ Browser.Events.onResize Shared.Msg.Resized
        , PkgPorts.loadedLocalStorage
            (\{ key, value } ->
                if key == storageKeys.locale then
                    case Codec.decodeValue Codec.string value of
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
        ]
