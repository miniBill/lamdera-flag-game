module Evergreen.V62.Pages.Sort exposing (..)

import Evergreen.V62.Shared.Model


type alias Model =
    { groups : List (List Evergreen.V62.Shared.Model.Country)
    , selected : Maybe Evergreen.V62.Shared.Model.Country
    }


type Msg
    = Move Evergreen.V62.Shared.Model.Country Int
    | SelectForMove Evergreen.V62.Shared.Model.Country
