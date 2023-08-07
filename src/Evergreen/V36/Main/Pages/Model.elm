module Evergreen.V36.Main.Pages.Model exposing (..)

import Evergreen.V36.Pages.Finished
import Evergreen.V36.Pages.Home_
import Evergreen.V36.Pages.NotFound_
import Evergreen.V36.Pages.Play
import Evergreen.V36.Pages.Sort


type Model
    = Home_ Evergreen.V36.Pages.Home_.Model
    | Finished Evergreen.V36.Pages.Finished.Model
    | Play Evergreen.V36.Pages.Play.Model
    | Sort Evergreen.V36.Pages.Sort.Model
    | NotFound_ Evergreen.V36.Pages.NotFound_.Model
    | Redirecting_
    | Loading_
