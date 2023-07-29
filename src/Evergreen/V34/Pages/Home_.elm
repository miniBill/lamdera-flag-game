module Evergreen.V34.Pages.Home_ exposing (..)

import Evergreen.V34.Cldr
import Evergreen.V34.Shared.Model


type alias Model =
    { changingLocale : Maybe String
    }


type Msg
    = Play
    | ChangeOptions Evergreen.V34.Shared.Model.GameOptions
    | ChangingLocale String
    | Locale Evergreen.V34.Cldr.Locale
