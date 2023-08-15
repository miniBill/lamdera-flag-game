module Evergreen.V42.Main exposing (..)

import Browser
import Browser.Navigation
import Evergreen.V42.Main.Layouts.Model
import Evergreen.V42.Main.Layouts.Msg
import Evergreen.V42.Main.Pages.Model
import Evergreen.V42.Main.Pages.Msg
import Evergreen.V42.Shared
import Url


type alias Model =
    { key : Browser.Navigation.Key
    , url : Url.Url
    , page : Evergreen.V42.Main.Pages.Model.Model
    , layout : Maybe Evergreen.V42.Main.Layouts.Model.Model
    , shared : Evergreen.V42.Shared.Model
    }


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
    | Page Evergreen.V42.Main.Pages.Msg.Msg
    | Layout Evergreen.V42.Main.Layouts.Msg.Msg
    | Shared Evergreen.V42.Shared.Msg
    | Batch (List Msg)
