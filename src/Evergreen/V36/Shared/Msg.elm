module Evergreen.V36.Shared.Msg exposing (..)

import Evergreen.V36.Cldr
import Evergreen.V36.Shared.Model
import Random


type Msg
    = Seed Random.Seed
    | Locale Evergreen.V36.Cldr.Locale
    | ChangeOptions Evergreen.V36.Shared.Model.GameOptions
    | Play
    | Finished
        { score : Int
        }
    | Nop
