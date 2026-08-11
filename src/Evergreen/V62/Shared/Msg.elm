module Evergreen.V62.Shared.Msg exposing (..)

import Evergreen.V62.Shared.Model
import Random


type Msg
    = Seed Random.Seed
    | Locale String
    | ChangeOptions Evergreen.V62.Shared.Model.GameOptions
    | Play
    | Finished
        { score : Int
        }
    | Nop
    | Resized Int Int
