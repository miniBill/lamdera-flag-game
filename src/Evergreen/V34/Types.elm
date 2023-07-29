module Evergreen.V34.Types exposing (..)

import Evergreen.V34.Bridge
import Evergreen.V34.Main


type alias FrontendModel =
    Evergreen.V34.Main.Model


type alias BackendModel =
    {}


type alias FrontendMsg =
    Evergreen.V34.Main.Msg


type alias ToBackend =
    Evergreen.V34.Bridge.ToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
