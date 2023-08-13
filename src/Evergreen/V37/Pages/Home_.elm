module Evergreen.V37.Pages.Home_ exposing (..)

import Evergreen.V37.Shared.Model


type alias Model =
    { changingLocale : Maybe String
    }


type Msg
    = Play
    | ChangeOptions Evergreen.V37.Shared.Model.GameOptions
    | ChangingLocale String
    | Locale String
