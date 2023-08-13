module Evergreen.V37.Pages.Play exposing (..)

import Evergreen.V37.Shared.Model


type alias InnerModel =
    { current : Evergreen.V37.Shared.Model.Card
    , picked : Maybe Evergreen.V37.Shared.Model.Country
    , queue : List Evergreen.V37.Shared.Model.Card
    , score : Int
    }


type alias Model =
    Maybe InnerModel


type Msg
    = Pick Evergreen.V37.Shared.Model.Country
    | Next
