module Evergreen.V32.Shared.Msg exposing (..)

import Evergreen.V32.Cldr
import Evergreen.V32.Shared.Model
import Random


type Msg
    = Seed Random.Seed
    | Locale Evergreen.V32.Cldr.Locale
    | ChangeOptions Evergreen.V32.Shared.Model.GameOptions
    | Play
    | Finished
        { score : Int
        }
