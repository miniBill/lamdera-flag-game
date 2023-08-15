module Evergreen.V42.Types exposing (..)

import Evergreen.V42.Bridge
import Evergreen.V42.Main


type alias FrontendModel =
    Evergreen.V42.Main.Model


type alias BackendModel =
    {}


type alias FrontendMsg =
    Evergreen.V42.Main.Msg


type alias ToBackend =
    Evergreen.V42.Bridge.ToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
