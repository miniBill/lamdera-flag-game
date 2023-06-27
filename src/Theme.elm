module Theme exposing (Attribute, Element, button, column, padding, rythm, wrappedRow)

import Element.WithContext as Element exposing (rgb255)
import Element.WithContext.Background as Background
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Types exposing (Context)


type alias Element msg =
    Element.Element Context msg


type alias Attribute msg =
    Element.Attribute Context msg


rythm : number
rythm =
    10


spacing : Attribute msg
spacing =
    Element.spacing rythm


padding : Attribute msg
padding =
    Element.padding rythm


button :
    List (Attribute msg)
    ->
        { label : Element msg
        , onPress : Maybe msg
        }
    -> Element msg
button attrs config =
    Input.button
        (Border.width 1
            :: padding
            :: Border.rounded rythm
            :: Background.color (rgb255 0xD9 0xB9 0x9B)
            :: Font.color (rgb255 (0xD9 // 2) (0xB9 // 2) (0x9B // 2))
            :: Element.mouseOver [ Background.color <| rgb255 0xD9 0x4B 0x4B ]
            :: attrs
        )
        config


column : List (Attribute msg) -> List (Element msg) -> Element msg
column attrs children =
    Element.column (spacing :: attrs) children


wrappedRow : List (Attribute msg) -> List (Element msg) -> Element msg
wrappedRow attrs children =
    Element.wrappedRow (spacing :: attrs) children
