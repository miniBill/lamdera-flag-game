module Evergreen.V42.Pages.Finished exposing (..)


type alias Model =
    Maybe
        { score : Int
        }


type Msg
    = Play
