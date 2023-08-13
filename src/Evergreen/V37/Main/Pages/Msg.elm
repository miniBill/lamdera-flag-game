module Evergreen.V37.Main.Pages.Msg exposing (..)

import Evergreen.V37.Pages.Finished
import Evergreen.V37.Pages.Home_
import Evergreen.V37.Pages.NotFound_
import Evergreen.V37.Pages.Play
import Evergreen.V37.Pages.Sort


type Msg
    = Home_ Evergreen.V37.Pages.Home_.Msg
    | Finished Evergreen.V37.Pages.Finished.Msg
    | Play Evergreen.V37.Pages.Play.Msg
    | Sort Evergreen.V37.Pages.Sort.Msg
    | NotFound_ Evergreen.V37.Pages.NotFound_.Msg
