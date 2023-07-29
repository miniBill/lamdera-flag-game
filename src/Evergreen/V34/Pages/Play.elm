module Evergreen.V34.Pages.Play exposing (..)

import Evergreen.V34.Shared.Model


type alias InnerModel =
    { current : Evergreen.V34.Shared.Model.Card
    , picked : Maybe Evergreen.V34.Shared.Model.Country
    , queue : List Evergreen.V34.Shared.Model.Card
    , score : Int
    }


type alias Model =
    Maybe InnerModel


type Msg
    = Pick Evergreen.V34.Shared.Model.Country
    | Next
