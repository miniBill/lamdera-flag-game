module Evergreen.V36.Types exposing (..)

import Evergreen.V36.Bridge
import Evergreen.V36.Main


type alias FrontendModel =
    Evergreen.V36.Main.Model


type alias BackendModel =
    {}


type alias FrontendMsg =
    Evergreen.V36.Main.Msg


type alias ToBackend =
    Evergreen.V36.Bridge.ToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
