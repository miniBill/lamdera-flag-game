module Evergreen.V42.Pages.Home_ exposing (..)

import Evergreen.V42.Shared.Model


type alias Model =
    { changingLocale : Maybe String
    }


type Msg
    = Play
    | ChangeOptions Evergreen.V42.Shared.Model.GameOptions
    | ChangingLocale String
    | Locale String
