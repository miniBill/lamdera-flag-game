module Evergreen.V36.Pages.Finished exposing (..)


type alias Model =
    Maybe
        { score : Int
        }


type Msg
    = Play
