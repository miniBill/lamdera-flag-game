module Ui.WithContext.Layout exposing (AlignX, AlignY, centered, row)

import Ui.Layout
import Ui.WithContext.Internal as Internal exposing (Attribute, Element)


type alias AlignX =
    Ui.Layout.AlignX


type alias AlignY =
    Ui.Layout.AlignY


{-| -}
row :
    { wrap : Bool
    , align : ( AlignX, AlignY )
    }
    -> List (Attribute context msg)
    -> List (Element context msg)
    -> Element context msg
row config attrs children =
    Internal.containerMany (Ui.Layout.row config) attrs children


centered : ( AlignX, AlignY )
centered =
    Ui.Layout.centered
