module Evergreen.V34.Main.Pages.Model exposing (..)

import Evergreen.V34.Pages.Finished
import Evergreen.V34.Pages.Home_
import Evergreen.V34.Pages.NotFound_
import Evergreen.V34.Pages.Play
import Evergreen.V34.Pages.Sort


type Model
    = Home_ Evergreen.V34.Pages.Home_.Model
    | Finished Evergreen.V34.Pages.Finished.Model
    | Play Evergreen.V34.Pages.Play.Model
    | Sort Evergreen.V34.Pages.Sort.Model
    | NotFound_ Evergreen.V34.Pages.NotFound_.Model
    | Redirecting_
    | Loading_
