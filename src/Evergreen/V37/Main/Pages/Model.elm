module Evergreen.V37.Main.Pages.Model exposing (..)

import Evergreen.V37.Pages.Finished
import Evergreen.V37.Pages.Home_
import Evergreen.V37.Pages.NotFound_
import Evergreen.V37.Pages.Play
import Evergreen.V37.Pages.Sort


type Model
    = Home_ Evergreen.V37.Pages.Home_.Model
    | Finished Evergreen.V37.Pages.Finished.Model
    | Play Evergreen.V37.Pages.Play.Model
    | Sort Evergreen.V37.Pages.Sort.Model
    | NotFound_ Evergreen.V37.Pages.NotFound_.Model
    | Redirecting_
    | Loading_
