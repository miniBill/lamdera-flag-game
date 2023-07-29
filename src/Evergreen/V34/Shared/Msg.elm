module Evergreen.V34.Shared.Msg exposing (..)

import Evergreen.V34.Cldr
import Evergreen.V34.Shared.Model
import Random


type Msg
    = Seed Random.Seed
    | Locale Evergreen.V34.Cldr.Locale
    | ChangeOptions Evergreen.V34.Shared.Model.GameOptions
    | Play
    | Finished
        { score : Int
        }
    | Nop
