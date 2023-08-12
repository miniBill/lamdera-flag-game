module Theme exposing (Attribute, Element, Gradient, button, colors, column, gradient, grid, localeToLanguage, padding, row, rythm, selectableButton, spacing, text, textInvariant, viewFlag, wrappedRow)

import AspectRatios
import Color
import Html.Attributes
import List.Extra
import Shared.Model exposing (Context, Country, countryToAlpha2)
import Translations exposing (I18n)
import Ui.WithContext as Ui exposing (Attribute, Color, Element, el, height, image, px, rgb, rgba, width)
import Ui.WithContext.Events as Events
import Ui.WithContext.Font as Font
import Ui.WithContext.Layout as Layout
import Ui.WithContext.Shadow as Shadow
import Ui.WithContext.Table as Table


type alias Element msg =
    Ui.Element Context msg


type alias Attribute msg =
    Ui.Attribute Context msg


rythm : number
rythm =
    16


spacing : Attribute msg
spacing =
    Ui.spacing rythm


padding : Attribute msg
padding =
    Ui.padding rythm


button :
    List (Attribute msg)
    ->
        { background : Gradient
        , label : Element msg
        , onPress : Maybe msg
        }
    -> Element msg
button attrs config =
    el
        (padding
            :: Ui.rounded 40
            :: gradient config.background
            :: Font.color (rgb 255 255 255)
            :: (let
                    _ =
                        Debug.todo

                    -- :: Ui.Anim.hovered (Ui.Anim.ms 100) [ Ui.Anim.backgroundColor <| rgb 0x9B 0x9B 0xFB ]
                in
                Shadow.shadows
                    [ { x = 2.5
                      , y = 2.5
                      , size = 2.5
                      , blur = 2.5
                      , color = rgba 0 0 0 0.15
                      }
                    ]
               )
            :: (case config.onPress of
                    Just msg ->
                        Events.onClick msg

                    Nothing ->
                        Ui.noAttr
               )
            :: attrs
        )
        config.label


gradient : Gradient -> Attribute msg
gradient stops =
    ("radial-gradient("
        ++ String.join ", " (List.map stopToCss stops)
        ++ ")"
    )
        |> Html.Attributes.style "background"
        |> Ui.htmlAttribute


stopToCss : ( Int, Color.Color ) -> String
stopToCss ( at, color ) =
    colorToCss color ++ " " ++ String.fromInt at ++ "%"


colorToCss : Color.Color -> String
colorToCss color =
    let
        { red, green, blue, alpha } =
            Color.toRgba color

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
    List ( Int, Color.Color )


colors :
    { buttonBackground : Gradient
    , greenButtonBackground : Gradient
    , redButtonBackground : Gradient
    , black : Color
    , white : Color
    }
colors =
    { buttonBackground =
        [ ( 40, Color.rgb255 0xC7 0x9D 0x69 )
        , ( 100, Color.rgb255 0x98 0x78 0x50 )
        ]
    , greenButtonBackground =
        [ ( 40, Color.rgb255 0x8B 0xD1 0x78 )
        , ( 100, Color.rgb255 0x72 0xB0 0x61 )
        ]
    , redButtonBackground =
        [ ( 40, Color.rgb255 0xDC 0x4E 0x3B )
        , ( 100, Color.rgb255 0xAB 0x3A 0x2B )
        ]
    , black = rgb 0 0 0
    , white = rgb 255 255 255
    }


column : List (Attribute msg) -> List (Element msg) -> Element msg
column attrs children =
    Ui.column (spacing :: attrs) children


row : List (Attribute msg) -> List (Element msg) -> Element msg
row attrs children =
    Ui.row (spacing :: attrs) children


wrappedRow : List (Attribute msg) -> List (Element msg) -> Element msg
wrappedRow attrs children =
    Layout.row
        { wrap = True
        , align = Layout.centered
        }
        (spacing :: attrs)
        children


grid :
    List (Attribute msg)
    ->
        { widths : List { fill : Bool }
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

        columns : List (Table.Column Context state (List (Element msg)) msg)
        columns =
            List.map
                (\i ->
                    Table.column
                        { header = Table.cell [] Ui.none
                        , view =
                            \elementsRow ->
                                elementsRow
                                    |> List.Extra.getAt i
                                    |> Maybe.withDefault Ui.none
                                    |> Table.cell []
                        }
                        |> Table.withWidth
                            { fill =
                                widths
                                    |> List.Extra.getAt i
                                    |> Maybe.map .fill
                                    |> Maybe.withDefault False
                            , min = Nothing
                            , max = Nothing
                            }
                )
                (List.range 0 (columnCount - 1))
    in
    Table.view
        (spacing :: attrs)
        (Table.columns columns)
        elements


viewFlag :
    List (Attribute msg)
    -> { country : Country, width : Int }
    -> Element msg
viewFlag attrs config =
    let
        src : String
        src =
            "/" ++ countryToAlpha2 config.country ++ ".svg"

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
        w : Int
        w =
            min config.width (config.width * aspectRatioWidth * 2 // (3 * aspectRatioHeight))

        h : Int
        h =
            w * aspectRatioHeight // aspectRatioWidth
    in
    image
        ([ Shadow.shadows
            [ { x = 5
              , y = 5
              , size = 5
              , blur = 5
              , color = rgba 0 0 0 0.15
              }
            ]
         , width <| px w
         , height <| px h
         ]
            ++ attrs
        )
        { source = src
        , description = "A country flag"
        }


text : (I18n -> String) -> Element msg
text f =
    Ui.withContext
        (\{ i18n } -> Ui.text <| f i18n)


localeToLanguage : String -> Translations.Language
localeToLanguage locale =
    case String.split "-" locale of
        "de" :: _ ->
            Translations.De

        "it" :: _ ->
            Translations.It

        _ ->
            Translations.En


textInvariant : String -> Element msg
textInvariant msg =
    Ui.text msg


selectableButton :
    List (Attribute msg)
    ->
        { label : I18n -> String
        , selected : Bool
        , onPress : msg
        }
    -> Element msg
selectableButton attrs config =
    button
        (if config.selected then
            Font.color colors.black :: attrs

         else
            Font.color colors.white :: attrs
        )
        { background =
            if config.selected then
                colors.greenButtonBackground

            else
                colors.buttonBackground
        , label = text config.label
        , onPress = Just config.onPress
        }
