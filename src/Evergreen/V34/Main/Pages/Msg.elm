module Evergreen.V34.Main.Pages.Msg exposing (..)

import Evergreen.V34.Pages.Finished
import Evergreen.V34.Pages.Home_
import Evergreen.V34.Pages.NotFound_
import Evergreen.V34.Pages.Play
import Evergreen.V34.Pages.Sort


type Msg
    = Home_ Evergreen.V34.Pages.Home_.Msg
    | Finished Evergreen.V34.Pages.Finished.Msg
    | Play Evergreen.V34.Pages.Play.Msg
    | Sort Evergreen.V34.Pages.Sort.Msg
    | NotFound_ Evergreen.V34.Pages.NotFound_.Msg
