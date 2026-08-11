module Evergreen.V63.Pages.Sort exposing (..)

import Evergreen.V63.Shared.Model


type alias Model =
    { groups : List (List Evergreen.V63.Shared.Model.Country)
    , selected : Maybe Evergreen.V63.Shared.Model.Country
    }


type Msg
    = Move Evergreen.V63.Shared.Model.Country Int
    | SelectForMove Evergreen.V63.Shared.Model.Country
