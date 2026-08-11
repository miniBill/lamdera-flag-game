module Evergreen.V62.Pages.Play exposing (..)

import Evergreen.V62.Shared.Model


type alias InnerModel =
    { current : Evergreen.V62.Shared.Model.Card
    , picked : Maybe Evergreen.V62.Shared.Model.Country
    , queue : List Evergreen.V62.Shared.Model.Card
    , score : Int
    }


type alias Model =
    Maybe InnerModel


type Msg
    = Pick Evergreen.V62.Shared.Model.Country
    | Next
