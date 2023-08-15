module Evergreen.V42.Shared.Msg exposing (..)

import Evergreen.V42.Shared.Model
import Random


type Msg
    = Seed Random.Seed
    | Locale String
    | ChangeOptions Evergreen.V42.Shared.Model.GameOptions
    | Play
    | Finished
        { score : Int
        }
    | Nop
    | Resized Int Int
