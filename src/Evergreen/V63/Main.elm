module Evergreen.V63.Main exposing (..)

import Browser
import Browser.Navigation
import Evergreen.V63.Main.Layouts.Model
import Evergreen.V63.Main.Layouts.Msg
import Evergreen.V63.Main.Pages.Model
import Evergreen.V63.Main.Pages.Msg
import Evergreen.V63.Shared
import Url


type alias Model =
    { key : Browser.Navigation.Key
    , url : Url.Url
    , page : Evergreen.V63.Main.Pages.Model.Model
    , layout : Maybe Evergreen.V63.Main.Layouts.Model.Model
    , shared : Evergreen.V63.Shared.Model
    }


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
    | Page Evergreen.V63.Main.Pages.Msg.Msg
    | Layout Evergreen.V63.Main.Layouts.Msg.Msg
    | Shared Evergreen.V63.Shared.Msg
    | Batch (List Msg)
