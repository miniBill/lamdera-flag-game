module Ui.WithContext.Shadow exposing (shadows)

import Ui.Shadow
import Ui.WithContext.Internal exposing (pureAttribute)
import Ui.WithContext exposing (Color)
import Ui.WithContext exposing (Attribute)


{-| -}
shadows :
    List
        { x : Float
        , y : Float
        , size : Float
        , blur : Float
        , color : Color
        }
    -> Attribute context msg
shadows values =
    pureAttribute (Ui.Shadow.shadows values)
