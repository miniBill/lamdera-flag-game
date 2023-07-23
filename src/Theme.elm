module Theme exposing (Attribute, Element, Gradient, button, colors, column, gradient, grid, padding, row, rythm, spacing, viewFlag, wrappedRow)

import Element.WithContext as Element exposing (Color, Length, centerX, el, fill, height, image, paddingEach, px, rgb, rgb255, rgba, shrink, width)
import Element.WithContext.Background as Background
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Html.Attributes
import Iso3166 exposing (CountryCode)
import List.Extra
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
        (padding
            :: Border.rounded (3 * rythm)
            :: gradient colors.buttonBackground
            :: Font.color (rgb 1 1 1)
            :: Element.mouseOver [ Background.color <| rgb255 0x9B 0x9B 0xFB ]
            :: attrs
        )
        config


gradient : Gradient -> Attribute msg
gradient { from, to } =
    ("radial-gradient("
        ++ colorToCss from
        ++ ", "
        ++ colorToCss to
        ++ ")"
    )
        |> Html.Attributes.style "background"
        |> Element.htmlAttribute


colorToCss : Color -> String
colorToCss color =
    let
        { red, green, blue, alpha } =
            Element.toRgb color

        colorString : String
        colorString =
            [ red
            , green
            , blue
            ]
                |> List.map
                    (\f ->
                        String.fromInt <| round (f * 255)
                    )
                |> String.join " "
    in
    if alpha == 1 then
        "rgb(" ++ colorString ++ ")"

    else
        "rgb(" ++ colorString ++ " / " ++ String.fromFloat alpha ++ ")"


type alias Gradient =
    { from : Color
    , to : Color
    }


colors :
    { buttonBackground : Gradient
    , greenButtonBackground : Gradient
    , redButtonBackground : Gradient
    }
colors =
    { buttonBackground =
        { from = rgb255 0xC7 0x9D 0x69
        , to = rgb255 0x98 0x78 0x50
        }
    , greenButtonBackground =
        { from = rgb255 0x8B 0xD1 0x78
        , to = rgb255 0x72 0xB0 0x61
        }
    , redButtonBackground =
        { from = rgb255 0xDC 0x4E 0x3B
        , to = rgb255 0xAB 0x3A 0x2B
        }
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


grid :
    List (Attribute msg)
    ->
        { widths : List Length
        , elements : List (List (Element msg))
        }
    -> Element msg
grid attrs { widths, elements } =
    let
        columnCount : Int
        columnCount =
            List.map List.length elements
                |> List.maximum
                |> Maybe.withDefault 0

        columns :
            List
                { header : Element msg
                , width : Length
                , view : List (Element msg) -> Element msg
                }
        columns =
            List.map
                (\i ->
                    { header = Element.none
                    , width =
                        widths
                            |> List.Extra.getAt i
                            |> Maybe.withDefault shrink
                    , view =
                        \elementsRow ->
                            elementsRow
                                |> List.Extra.getAt i
                                |> Maybe.withDefault Element.none
                    }
                )
                (List.range 0 (columnCount - 1))
    in
    Element.table (spacing :: attrs)
        { data = elements
        , columns = columns
        }


viewFlag :
    { countryCode : CountryCode, width : Int }
    -> Element msg
viewFlag config =
    let
        src : String
        src =
            "/" ++ Iso3166.toAlpha2 config.countryCode ++ ".svg"
    in
    el
        [ width <| px config.width
        , height <| px <| 2 * config.width // 3
        ]
    <|
        image
            [ width fill
            , centerX
            , Border.shadow
                { offset = ( 10, 10 )
                , size = 5
                , blur = 2
                , color = rgba 0 0 0 0.2
                }
            ]
            { src = src
            , description = "A country flag"
            }
