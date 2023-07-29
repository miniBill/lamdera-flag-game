module Evergreen.V34.Pages.Finished exposing (..)


type alias Model =
    Maybe
        { score : Int
        }


type Msg
    = Play
