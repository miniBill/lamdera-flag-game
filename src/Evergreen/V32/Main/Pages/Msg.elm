module Evergreen.V32.Main.Pages.Msg exposing (..)

import Evergreen.V32.Pages.Finished
import Evergreen.V32.Pages.Home_
import Evergreen.V32.Pages.NotFound_
import Evergreen.V32.Pages.Play
import Evergreen.V32.Pages.Sort


type Msg
    = Home_ Evergreen.V32.Pages.Home_.Msg
    | Finished Evergreen.V32.Pages.Finished.Msg
    | Play Evergreen.V32.Pages.Play.Msg
    | Sort Evergreen.V32.Pages.Sort.Msg
    | NotFound_ Evergreen.V32.Pages.NotFound_.Msg
