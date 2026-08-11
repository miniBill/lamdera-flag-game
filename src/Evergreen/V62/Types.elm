module Evergreen.V62.Types exposing (..)

import Evergreen.V62.Bridge
import Evergreen.V62.Main


type alias FrontendModel =
    Evergreen.V62.Main.Model


type alias BackendModel =
    {}


type alias FrontendMsg =
    Evergreen.V62.Main.Msg


type alias ToBackend =
    Evergreen.V62.Bridge.ToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
