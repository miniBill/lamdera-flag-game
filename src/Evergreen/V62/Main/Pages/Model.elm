module Evergreen.V62.Main.Pages.Model exposing (..)

import Evergreen.V62.Pages.Finished
import Evergreen.V62.Pages.Home_
import Evergreen.V62.Pages.NotFound_
import Evergreen.V62.Pages.Play
import Evergreen.V62.Pages.Sort


type Model
    = Home_ Evergreen.V62.Pages.Home_.Model
    | Finished Evergreen.V62.Pages.Finished.Model
    | Play Evergreen.V62.Pages.Play.Model
    | Sort Evergreen.V62.Pages.Sort.Model
    | NotFound_ Evergreen.V62.Pages.NotFound_.Model
    | Redirecting_
    | Loading_
