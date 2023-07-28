module Evergreen.V32.Main exposing (..)

import Browser
import Browser.Navigation
import Evergreen.V32.Main.Layouts.Model
import Evergreen.V32.Main.Layouts.Msg
import Evergreen.V32.Main.Pages.Model
import Evergreen.V32.Main.Pages.Msg
import Evergreen.V32.Shared
import Url


type alias Model =
    { key : Browser.Navigation.Key
    , url : Url.Url
    , page : Evergreen.V32.Main.Pages.Model.Model
    , layout : Maybe Evergreen.V32.Main.Layouts.Model.Model
    , shared : Evergreen.V32.Shared.Model
    }


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
    | Page Evergreen.V32.Main.Pages.Msg.Msg
    | Layout Evergreen.V32.Main.Layouts.Msg.Msg
    | Shared Evergreen.V32.Shared.Msg
    | Batch (List Msg)
