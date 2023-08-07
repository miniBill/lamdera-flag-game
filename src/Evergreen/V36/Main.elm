module Evergreen.V36.Main exposing (..)

import Browser
import Browser.Navigation
import Evergreen.V36.Main.Layouts.Model
import Evergreen.V36.Main.Layouts.Msg
import Evergreen.V36.Main.Pages.Model
import Evergreen.V36.Main.Pages.Msg
import Evergreen.V36.Shared
import Url


type alias Model =
    { key : Browser.Navigation.Key
    , url : Url.Url
    , page : Evergreen.V36.Main.Pages.Model.Model
    , layout : Maybe Evergreen.V36.Main.Layouts.Model.Model
    , shared : Evergreen.V36.Shared.Model
    }


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
    | Page Evergreen.V36.Main.Pages.Msg.Msg
    | Layout Evergreen.V36.Main.Layouts.Msg.Msg
    | Shared Evergreen.V36.Shared.Msg
    | Batch (List Msg)
