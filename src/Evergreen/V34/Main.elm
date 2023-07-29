module Evergreen.V34.Main exposing (..)

import Browser
import Browser.Navigation
import Evergreen.V34.Main.Layouts.Model
import Evergreen.V34.Main.Layouts.Msg
import Evergreen.V34.Main.Pages.Model
import Evergreen.V34.Main.Pages.Msg
import Evergreen.V34.Shared
import Url


type alias Model =
    { key : Browser.Navigation.Key
    , url : Url.Url
    , page : Evergreen.V34.Main.Pages.Model.Model
    , layout : Maybe Evergreen.V34.Main.Layouts.Model.Model
    , shared : Evergreen.V34.Shared.Model
    }


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
    | Page Evergreen.V34.Main.Pages.Msg.Msg
    | Layout Evergreen.V34.Main.Layouts.Msg.Msg
    | Shared Evergreen.V34.Shared.Msg
    | Batch (List Msg)
