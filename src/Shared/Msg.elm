module Shared.Msg exposing (Msg(..))

{-| -}

import Random
import Shared.Model exposing (GameOptions)


{-| Normally, this value would live in "Shared.elm"
but that would lead to a circular dependency import cycle.

For that reason, both `Shared.Model` and `Shared.Msg` are in their
own file, so they can be imported by `Effect.elm`

-}
type Msg
    = Seed Random.Seed
    | Locale String
    | ChangeOptions GameOptions
    | Play
    | Finished { score : Int }
    | Nop
    | Resized Int Int
