module Evergreen.V37.Pages.Sort exposing (..)

import Evergreen.V37.Shared.Model


type alias Model =
    { groups : List (List Evergreen.V37.Shared.Model.Country)
    , selected : Maybe Evergreen.V37.Shared.Model.Country
    }


type Msg
    = Move Evergreen.V37.Shared.Model.Country Int
    | SelectForMove Evergreen.V37.Shared.Model.Country
