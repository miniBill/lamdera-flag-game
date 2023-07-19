module Theme exposing (Attribute, Element, button, colors, column, grid, padding, row, rythm, spacing, wrappedRow)

import Element.WithContext as Element exposing (Color, rgb255, shrink)
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
            :: Background.color colors.buttonBackground
            :: Font.color (rgb255 (0xD9 // 2) (0xB9 // 2) (0x9B // 2))
            :: Element.mouseOver [ Background.color <| rgb255 0x9B 0x9B 0xFB ]
            :: attrs
        )
        config


colors :
    { buttonBackground : Color
    , selectedButtonBackground : Color
    }
colors =
    { buttonBackground =
        rgb255 0xD9 0xB9 0x9B
    , selectedButtonBackground =
        rgb255 0xB8 0xB8 0xFF
    }


column : List (Attribute msg) -> List (Element msg) -> Element msg
column attrs children =
    Element.column (spacing :: attrs) children


row : List (Attribute msg) -> List (Element msg) -> Element msg
row attrs children =
    Element.row (spacing :: attrs) children


wrappedRow : List (Attribute msg) -> List (Element msg) -> Element msg
wrappedRow attrs children =
    Element.wrappedRow (spacing :: attrs) children


grid : List (Attribute msg) -> List (List (Element msg)) -> Element msg
grid attrs elements =
    let
        columnCount =
            List.map List.length elements
                |> List.maximum
                |> Maybe.withDefault 0

        columns =
            List.map
                (\i ->
                    { header = Element.none
                    , width = shrink
                    , view =
                        \elementsRow ->
                            List.drop i elementsRow
                                |> List.head
                                |> Maybe.withDefault Element.none
                    }
                )
                (List.range 0 (columnCount - 1))
    in
    Element.table (spacing :: attrs)
        { data = elements
        , columns = columns
        }
