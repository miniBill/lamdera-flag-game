module Evergreen.V62.Main.Pages.Msg exposing (..)

import Evergreen.V62.Pages.Finished
import Evergreen.V62.Pages.Home_
import Evergreen.V62.Pages.NotFound_
import Evergreen.V62.Pages.Play
import Evergreen.V62.Pages.Sort


type Msg
    = Home_ Evergreen.V62.Pages.Home_.Msg
    | Finished Evergreen.V62.Pages.Finished.Msg
    | Play Evergreen.V62.Pages.Play.Msg
    | Sort Evergreen.V62.Pages.Sort.Msg
    | NotFound_ Evergreen.V62.Pages.NotFound_.Msg
