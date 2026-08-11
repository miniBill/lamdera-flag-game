module Evergreen.V62.Main exposing (..)

import Browser
import Browser.Navigation
import Evergreen.V62.Main.Layouts.Model
import Evergreen.V62.Main.Layouts.Msg
import Evergreen.V62.Main.Pages.Model
import Evergreen.V62.Main.Pages.Msg
import Evergreen.V62.Shared
import Url


type alias Model =
    { key : Browser.Navigation.Key
    , url : Url.Url
    , page : Evergreen.V62.Main.Pages.Model.Model
    , layout : Maybe Evergreen.V62.Main.Layouts.Model.Model
    , shared : Evergreen.V62.Shared.Model
    }


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
    | Page Evergreen.V62.Main.Pages.Msg.Msg
    | Layout Evergreen.V62.Main.Layouts.Msg.Msg
    | Shared Evergreen.V62.Shared.Msg
    | Batch (List Msg)
