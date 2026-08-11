module Evergreen.V63.Types exposing (..)

import Evergreen.V63.Bridge
import Evergreen.V63.Main


type alias FrontendModel =
    Evergreen.V63.Main.Model


type alias BackendModel =
    {}


type alias FrontendMsg =
    Evergreen.V63.Main.Msg


type alias ToBackend =
    Evergreen.V63.Bridge.ToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
