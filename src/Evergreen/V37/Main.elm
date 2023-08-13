module Evergreen.V37.Main exposing (..)

import Browser
import Browser.Navigation
import Evergreen.V37.Main.Layouts.Model
import Evergreen.V37.Main.Layouts.Msg
import Evergreen.V37.Main.Pages.Model
import Evergreen.V37.Main.Pages.Msg
import Evergreen.V37.Shared
import Url


type alias Model =
    { key : Browser.Navigation.Key
    , url : Url.Url
    , page : Evergreen.V37.Main.Pages.Model.Model
    , layout : Maybe Evergreen.V37.Main.Layouts.Model.Model
    , shared : Evergreen.V37.Shared.Model
    }


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
    | Page Evergreen.V37.Main.Pages.Msg.Msg
    | Layout Evergreen.V37.Main.Layouts.Msg.Msg
    | Shared Evergreen.V37.Shared.Msg
    | Batch (List Msg)
