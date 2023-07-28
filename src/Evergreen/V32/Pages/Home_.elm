module Evergreen.V32.Pages.Home_ exposing (..)

import Evergreen.V32.Cldr
import Evergreen.V32.Shared.Model


type alias Model =
    { changingLocale : Maybe String
    }


type Msg
    = Play
    | ChangeOptions Evergreen.V32.Shared.Model.GameOptions
    | ChangingLocale String
    | Locale Evergreen.V32.Cldr.Locale
