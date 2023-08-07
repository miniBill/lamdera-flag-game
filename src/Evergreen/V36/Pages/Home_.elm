module Evergreen.V36.Pages.Home_ exposing (..)

import Evergreen.V36.Cldr
import Evergreen.V36.Shared.Model


type alias Model =
    { changingLocale : Maybe String
    }


type Msg
    = Play
    | ChangeOptions Evergreen.V36.Shared.Model.GameOptions
    | ChangingLocale String
    | Locale Evergreen.V36.Cldr.Locale
