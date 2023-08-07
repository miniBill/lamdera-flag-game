module Evergreen.V36.Main.Pages.Msg exposing (..)

import Evergreen.V36.Pages.Finished
import Evergreen.V36.Pages.Home_
import Evergreen.V36.Pages.NotFound_
import Evergreen.V36.Pages.Play
import Evergreen.V36.Pages.Sort


type Msg
    = Home_ Evergreen.V36.Pages.Home_.Msg
    | Finished Evergreen.V36.Pages.Finished.Msg
    | Play Evergreen.V36.Pages.Play.Msg
    | Sort Evergreen.V36.Pages.Sort.Msg
    | NotFound_ Evergreen.V36.Pages.NotFound_.Msg
