module Theme exposing (Attribute, Element, Gradient, button, colors, column, gradient, grid, padding, row, rythm, spacing, viewFlag, wrappedRow)

import AspectRatios
import Element.WithContext as Element exposing (Color, Length, height, image, px, rgb, rgb255, rgba, shrink, width)
import Element.WithContext.Background as Background
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Html.Attributes
import List.Extra
import Types exposing (Context, Country)


type alias Element msg =
    Element.Element Context msg


type alias Attribute msg =
    Element.Attribute Context msg


rythm : number
rythm =
    16


spacing : Attribute msg
spacing =
    Element.spacing rythm


padding : Attribute msg
padding =
    Element.padding rythm


button :
    List (Attribute msg)
    ->
        { background : List ( Int, Color )
        , label : Element msg
        , onPress : Maybe msg
        }
    -> Element msg
button attrs config =
    Input.button
        (padding
            :: Border.rounded 40
            :: gradient config.background
            :: Font.color (rgb 1 1 1)
            :: Element.mouseOver [ Background.color <| rgb255 0x9B 0x9B 0xFB ]
            :: Border.shadow
                { offset = ( 2.5, 2.5 )
                , size = 2.5
                , blur = 2.5
                , color = rgba 0 0 0 0.15
                }
            :: attrs
        )
        { label = config.label
        , onPress = config.onPress
        }


gradient : Gradient -> Attribute msg
gradient stops =
    ("radial-gradient("
        ++ String.join ", " (List.map stopToCss stops)
        ++ ")"
    )
        |> Html.Attributes.style "background"
        |> Element.htmlAttribute


stopToCss : ( Int, Color ) -> String
stopToCss ( at, color ) =
    colorToCss color ++ " " ++ String.fromInt at ++ "%"


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
    List ( Int, Color )


colors :
    { buttonBackground : Gradient
    , greenButtonBackground : Gradient
    , redButtonBackground : Gradient
    , black : Color
    , white : Color
    }
colors =
    { buttonBackground =
        [ ( 40, rgb255 0xC7 0x9D 0x69 )
        , ( 100, rgb255 0x98 0x78 0x50 )
        ]
    , greenButtonBackground =
        [ ( 40, rgb255 0x8B 0xD1 0x78 )
        , ( 100, rgb255 0x72 0xB0 0x61 )
        ]
    , redButtonBackground =
        [ ( 40, rgb255 0xDC 0x4E 0x3B )
        , ( 100, rgb255 0xAB 0x3A 0x2B )
        ]
    , black = rgb 0 0 0
    , white = rgb 1 1 1
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
    List (Attribute msg)
    -> { country : Country, width : Int }
    -> Element msg
viewFlag attrs config =
    let
        src : String
        src =
            "/" ++ Types.countryToAlpha2 config.country ++ ".svg"

        ( aspectRatioWidth, aspectRatioHeight ) =
            AspectRatios.getAspectRatio config.country

        -- arw / arh = w / h
        -- w < config.width
        -- h < config.width * 2 / 3
        -- h = w * arh / arw
        -- w * arh / arw < config.width * 2 / 3
        -- w < config.width * arw * 2 / 3 / arh
        -- w = min config.width (config.width * arw * 2 / 3 / arh)
        -- h = w * arh / arw
        w =
            min config.width (config.width * aspectRatioWidth * 2 // (3 * aspectRatioHeight))

        h =
            w * aspectRatioHeight // aspectRatioWidth
    in
    image
        ([ Border.shadow
            { offset = ( 5, 5 )
            , size = 5
            , blur = 5
            , color = rgba 0 0 0 0.15
            }
         , width <| px w
         , height <| px h
         ]
            ++ attrs
        )
        { src = src
        , description = "A country flag"
        }
