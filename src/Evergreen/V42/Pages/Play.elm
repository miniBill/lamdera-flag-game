module Evergreen.V42.Pages.Play exposing (..)

import Evergreen.V42.Shared.Model


type alias InnerModel =
    { current : Evergreen.V42.Shared.Model.Card
    , picked : Maybe Evergreen.V42.Shared.Model.Country
    , queue : List Evergreen.V42.Shared.Model.Card
    , score : Int
    }


type alias Model =
    Maybe InnerModel


type Msg
    = Pick Evergreen.V42.Shared.Model.Country
    | Next
