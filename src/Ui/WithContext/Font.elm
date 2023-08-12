module Ui.WithContext.Font exposing (Font, center, color, family, sansSerif, size, typeface)

import Ui.Font
import Ui.WithContext exposing (Attribute, Color)
import Ui.WithContext.Internal exposing (pureAttribute)


type alias Font =
    Ui.Font.Font


color : Color -> Attribute context msg
color value =
    pureAttribute (Ui.Font.color value)


family : List Font -> Attribute context msg
family typefaces =
    pureAttribute (Ui.Font.family typefaces)


typeface : String -> Font
typeface =
    Ui.Font.typeface


sansSerif : Font
sansSerif =
    Ui.Font.sansSerif


center : Attribute context msg
center =
    pureAttribute Ui.Font.center


size : Int -> Attribute context msg
size value =
    pureAttribute (Ui.Font.size value)
