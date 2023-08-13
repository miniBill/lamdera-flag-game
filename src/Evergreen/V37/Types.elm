module Evergreen.V37.Types exposing (..)

import Evergreen.V37.Bridge
import Evergreen.V37.Main


type alias FrontendModel =
    Evergreen.V37.Main.Model


type alias BackendModel =
    {}


type alias FrontendMsg =
    Evergreen.V37.Main.Msg


type alias ToBackend =
    Evergreen.V37.Bridge.ToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
