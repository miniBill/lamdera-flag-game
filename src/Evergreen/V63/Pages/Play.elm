module Evergreen.V63.Pages.Play exposing (..)

import Evergreen.V63.Shared.Model


type alias InnerModel =
    { current : Evergreen.V63.Shared.Model.Card
    , picked : Maybe Evergreen.V63.Shared.Model.Country
    , queue : List Evergreen.V63.Shared.Model.Card
    , score : Int
    }


type alias Model =
    Maybe InnerModel


type Msg
    = Pick Evergreen.V63.Shared.Model.Country
    | Next
