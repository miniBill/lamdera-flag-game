module Evergreen.V42.Main.Pages.Model exposing (..)

import Evergreen.V42.Pages.Finished
import Evergreen.V42.Pages.Home_
import Evergreen.V42.Pages.NotFound_
import Evergreen.V42.Pages.Play
import Evergreen.V42.Pages.Sort


type Model
    = Home_ Evergreen.V42.Pages.Home_.Model
    | Finished Evergreen.V42.Pages.Finished.Model
    | Play Evergreen.V42.Pages.Play.Model
    | Sort Evergreen.V42.Pages.Sort.Model
    | NotFound_ Evergreen.V42.Pages.NotFound_.Model
    | Redirecting_
    | Loading_
