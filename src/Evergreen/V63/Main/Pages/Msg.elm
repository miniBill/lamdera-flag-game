module Evergreen.V63.Main.Pages.Msg exposing (..)

import Evergreen.V63.Pages.Finished
import Evergreen.V63.Pages.Home_
import Evergreen.V63.Pages.NotFound_
import Evergreen.V63.Pages.Play
import Evergreen.V63.Pages.Sort


type Msg
    = Home_ Evergreen.V63.Pages.Home_.Msg
    | Finished Evergreen.V63.Pages.Finished.Msg
    | Play Evergreen.V63.Pages.Play.Msg
    | Sort Evergreen.V63.Pages.Sort.Msg
    | NotFound_ Evergreen.V63.Pages.NotFound_.Msg
