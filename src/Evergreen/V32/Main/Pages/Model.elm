module Evergreen.V32.Main.Pages.Model exposing (..)

import Evergreen.V32.Pages.Finished
import Evergreen.V32.Pages.Home_
import Evergreen.V32.Pages.NotFound_
import Evergreen.V32.Pages.Play
import Evergreen.V32.Pages.Sort


type Model
    = Home_ Evergreen.V32.Pages.Home_.Model
    | Finished Evergreen.V32.Pages.Finished.Model
    | Play Evergreen.V32.Pages.Play.Model
    | Sort Evergreen.V32.Pages.Sort.Model
    | NotFound_ Evergreen.V32.Pages.NotFound_.Model
    | Redirecting_
    | Loading_
