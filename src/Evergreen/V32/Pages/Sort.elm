module Evergreen.V32.Pages.Sort exposing (..)

import Evergreen.V32.Shared.Model


type alias Model =
    { groups : List (List Evergreen.V32.Shared.Model.Country)
    , selected : Maybe Evergreen.V32.Shared.Model.Country
    }


type Msg
    = Move Evergreen.V32.Shared.Model.Country Int
    | SelectForMove Evergreen.V32.Shared.Model.Country
