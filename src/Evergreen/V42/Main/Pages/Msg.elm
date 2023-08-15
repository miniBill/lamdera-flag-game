module Evergreen.V42.Main.Pages.Msg exposing (..)

import Evergreen.V42.Pages.Finished
import Evergreen.V42.Pages.Home_
import Evergreen.V42.Pages.NotFound_
import Evergreen.V42.Pages.Play
import Evergreen.V42.Pages.Sort


type Msg
    = Home_ Evergreen.V42.Pages.Home_.Msg
    | Finished Evergreen.V42.Pages.Finished.Msg
    | Play Evergreen.V42.Pages.Play.Msg
    | Sort Evergreen.V42.Pages.Sort.Msg
    | NotFound_ Evergreen.V42.Pages.NotFound_.Msg
