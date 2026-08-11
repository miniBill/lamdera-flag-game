module Evergreen.V62.Pages.Home_ exposing (..)

import Evergreen.V62.Shared.Model


type alias Model =
    { changingLocale : Maybe String
    }


type Msg
    = Play
    | ChangeOptions Evergreen.V62.Shared.Model.GameOptions
    | ChangingLocale String
    | Locale String
