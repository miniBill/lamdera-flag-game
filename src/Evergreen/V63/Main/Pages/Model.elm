module Evergreen.V63.Main.Pages.Model exposing (..)

import Evergreen.V63.Pages.Finished
import Evergreen.V63.Pages.Home_
import Evergreen.V63.Pages.NotFound_
import Evergreen.V63.Pages.Play
import Evergreen.V63.Pages.Sort


type Model
    = Home_ Evergreen.V63.Pages.Home_.Model
    | Finished Evergreen.V63.Pages.Finished.Model
    | Play Evergreen.V63.Pages.Play.Model
    | Sort Evergreen.V63.Pages.Sort.Model
    | NotFound_ Evergreen.V63.Pages.NotFound_.Model
    | Redirecting_
    | Loading_
