module Evergreen.V37.Shared.Msg exposing (..)

import Evergreen.V37.Shared.Model
import Random


type Msg
    = Seed Random.Seed
    | Locale String
    | ChangeOptions Evergreen.V37.Shared.Model.GameOptions
    | Play
    | Finished
        { score : Int
        }
    | Nop
