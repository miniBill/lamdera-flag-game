module Evergreen.V32.Types exposing (..)

import Evergreen.V32.Bridge
import Evergreen.V32.Main


type alias FrontendModel =
    Evergreen.V32.Main.Model


type alias BackendModel =
    {}


type alias FrontendMsg =
    Evergreen.V32.Main.Msg


type alias ToBackend =
    Evergreen.V32.Bridge.ToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
