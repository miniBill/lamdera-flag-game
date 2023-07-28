module Types exposing
    ( BackendModel
    , BackendMsg(..)
    , FrontendModel
    , FrontendMsg
    , ToBackend
    , ToFrontend(..)
    )

import Bridge
import Browser.Navigation exposing (Key)
import Main as ElmLand
import Translations exposing (I18n)


type alias FrontendModel =
    ElmLand.Model


type alias BackendModel =
    {}


type alias FrontendMsg =
    ElmLand.Msg


type alias ToBackend =
    Bridge.ToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
