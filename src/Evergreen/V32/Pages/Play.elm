module Evergreen.V32.Pages.Play exposing (..)

import Evergreen.V32.Shared.Model


type alias InnerModel =
    { current : Evergreen.V32.Shared.Model.Card
    , picked : Maybe Evergreen.V32.Shared.Model.Country
    , queue : List Evergreen.V32.Shared.Model.Card
    , score : Int
    }


type alias Model =
    Maybe InnerModel


type Msg
    = Pick Evergreen.V32.Shared.Model.Country
    | Next
