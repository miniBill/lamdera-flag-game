port module PkgPorts exposing (loadLocalStorage, loadLocale, loadedLocalStorage, ports, saveToLocalStorage)

import Json.Decode


ports :
    { loadLocalStorage : String -> Cmd msg
    , loadLocale : String -> Cmd msg
    , loadedLocalStorage : ({ key : String, value : Json.Decode.Value } -> msg) -> Sub msg
    , saveToLocalStorage : { key : String, value : Json.Decode.Value } -> Cmd msg
    }
ports =
    { loadLocalStorage = loadLocalStorage
    , loadLocale = loadLocale
    , loadedLocalStorage = loadedLocalStorage
    , saveToLocalStorage = saveToLocalStorage
    }


port loadLocalStorage : String -> Cmd msg


port loadLocale : String -> Cmd msg


port loadedLocalStorage : ({ key : String, value : Json.Decode.Value } -> msg) -> Sub msg


port saveToLocalStorage : { key : String, value : Json.Decode.Value } -> Cmd msg
