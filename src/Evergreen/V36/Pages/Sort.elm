module Evergreen.V36.Pages.Sort exposing (..)

import Evergreen.V36.Shared.Model


type alias Model =
    { groups : List (List Evergreen.V36.Shared.Model.Country)
    , selected : Maybe Evergreen.V36.Shared.Model.Country
    }


type Msg
    = Move Evergreen.V36.Shared.Model.Country Int
    | SelectForMove Evergreen.V36.Shared.Model.Country
