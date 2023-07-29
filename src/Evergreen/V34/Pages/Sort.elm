module Evergreen.V34.Pages.Sort exposing (..)

import Evergreen.V34.Shared.Model


type alias Model =
    { groups : List (List Evergreen.V34.Shared.Model.Country)
    , selected : Maybe Evergreen.V34.Shared.Model.Country
    }


type Msg
    = Move Evergreen.V34.Shared.Model.Country Int
    | SelectForMove Evergreen.V34.Shared.Model.Country
