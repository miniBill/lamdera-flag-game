module Effect exposing
    ( Effect
    , none
    , sendCmd, changeOptions, locale, play, finished, seed
    , pushRoute, replaceRoute, goBack, goHome, loadExternalUrl
    , map, toCmd
    )

{-|

@docs Effect
@docs none
@docs sendCmd, changeOptions, locale, play, finished, seed
@docs pushRoute, replaceRoute, goBack, goHome, loadExternalUrl

@docs map, toCmd

-}

import Browser.Navigation
import Cldr exposing (Locale)
import Dict exposing (Dict)
import Random exposing (Seed)
import Route
import Route.Path
import Shared.Model
import Shared.Msg
import Task
import Url exposing (Url)


type Effect msg
    = -- BASICS
      None
    | SendCmd (Cmd msg)
      -- ROUTING
    | PushUrl String
    | ReplaceUrl String
    | LoadExternalUrl String
    | GoBack
      -- SHARED
    | SendSharedMsg Shared.Msg.Msg



-- BASICS


{-| Don't send any effect.
-}
none : Effect msg
none =
    None


{-| Send a normal `Cmd msg` as an effect, something like `Http.get` or `Random.generate`.
-}
sendCmd : Cmd msg -> Effect msg
sendCmd =
    SendCmd


changeOptions : Shared.Model.GameOptions -> Effect msg
changeOptions options =
    SendSharedMsg <| Shared.Msg.ChangeOptions options


locale : Locale -> Effect msg
locale newLocale =
    SendSharedMsg <| Shared.Msg.Locale newLocale


play : Effect msg
play =
    SendSharedMsg Shared.Msg.Play


finished : { score : Int } -> Effect msg
finished score =
    SendSharedMsg <| Shared.Msg.Finished score


seed : Seed -> Effect msg
seed newSeed =
    SendSharedMsg <| Shared.Msg.Seed newSeed


goHome : Effect msg
goHome =
    replaceRoute
        { path = Route.Path.Home_
        , query = Dict.empty
        , hash = Nothing
        }


goBack : Effect msg
goBack =
    GoBack



-- ROUTING


{-| Set the new route, and make the back button go back to the current route.
-}
pushRoute :
    { path : Route.Path.Path
    , query : Dict String String
    , hash : Maybe String
    }
    -> Effect msg
pushRoute route =
    PushUrl (Route.toString route)


{-| Set the new route, but replace the previous one, so clicking the back
button **won't** go back to the previous route.
-}
replaceRoute :
    { path : Route.Path.Path
    , query : Dict String String
    , hash : Maybe String
    }
    -> Effect msg
replaceRoute route =
    ReplaceUrl (Route.toString route)


{-| Redirect users to a new URL, somewhere external your web application.
-}
loadExternalUrl : String -> Effect msg
loadExternalUrl =
    LoadExternalUrl



-- INTERNALS


{-| Elm Land depends on this function to connect pages and layouts
together into the overall app.
-}
map : (msg1 -> msg2) -> Effect msg1 -> Effect msg2
map fn effect =
    case effect of
        None ->
            None

        SendCmd cmd ->
            SendCmd (Cmd.map fn cmd)

        PushUrl url ->
            PushUrl url

        ReplaceUrl url ->
            ReplaceUrl url

        GoBack ->
            GoBack

        LoadExternalUrl url ->
            LoadExternalUrl url

        SendSharedMsg sharedMsg ->
            SendSharedMsg sharedMsg


{-| Elm Land depends on this function to perform your effects.
-}
toCmd :
    { key : Browser.Navigation.Key
    , url : Url
    , shared : Shared.Model.Model
    , fromSharedMsg : Shared.Msg.Msg -> msg
    , batch : List msg -> msg
    , toCmd : msg -> Cmd msg
    }
    -> Effect msg
    -> Cmd msg
toCmd options effect =
    case effect of
        None ->
            Cmd.none

        SendCmd cmd ->
            cmd

        PushUrl url ->
            Browser.Navigation.pushUrl options.key url

        GoBack ->
            Browser.Navigation.back options.key 1

        ReplaceUrl url ->
            Browser.Navigation.replaceUrl options.key url

        LoadExternalUrl url ->
            Browser.Navigation.load url

        SendSharedMsg sharedMsg ->
            Task.succeed sharedMsg
                |> Task.perform options.fromSharedMsg
