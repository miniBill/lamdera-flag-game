module Evergreen.V63.Shared.Msg exposing (..)

import Evergreen.V63.Shared.Model
import Random


type Msg
    = Seed Random.Seed
    | Locale String
    | ChangeOptions Evergreen.V63.Shared.Model.GameOptions
    | Play
    | Finished
        { score : Int
        }
    | Nop
    | Resized Int Int
