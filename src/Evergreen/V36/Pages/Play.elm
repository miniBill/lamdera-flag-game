module Evergreen.V36.Pages.Play exposing (..)

import Evergreen.V36.Shared.Model


type alias InnerModel =
    { current : Evergreen.V36.Shared.Model.Card
    , picked : Maybe Evergreen.V36.Shared.Model.Country
    , queue : List Evergreen.V36.Shared.Model.Card
    , score : Int
    }


type alias Model =
    Maybe InnerModel


type Msg
    = Pick Evergreen.V36.Shared.Model.Country
    | Next
