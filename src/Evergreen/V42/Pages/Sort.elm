module Evergreen.V42.Pages.Sort exposing (..)

import Evergreen.V42.Shared.Model


type alias Model =
    { groups : List (List Evergreen.V42.Shared.Model.Country)
    , selected : Maybe Evergreen.V42.Shared.Model.Country
    }


type Msg
    = Move Evergreen.V42.Shared.Model.Country Int
    | SelectForMove Evergreen.V42.Shared.Model.Country
