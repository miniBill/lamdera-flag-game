module Evergreen.V63.Pages.Home_ exposing (..)

import Evergreen.V63.Shared.Model


type alias Model =
    { changingLocale : Maybe String
    }


type Msg
    = Play
    | ChangeOptions Evergreen.V63.Shared.Model.GameOptions
    | ChangingLocale String
    | Locale String
