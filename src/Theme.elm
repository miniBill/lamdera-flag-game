module Theme exposing (Attribute, Gradient, Html, button, colors, column, gradient, grid, localeToLanguage, padding, rhythm, row, selectableButton, spacing, text, textInvariant, viewFlag, viewFlagUnsafe, wrappedRow)

import AspectRatios
import Color exposing (Color)
import Html.WithContext as Html
import Html.WithContext.Attributes as Attributes
import Html.WithContext.Events as Events
import Shared.Model exposing (Context, Country, countryToAlpha2)
import Translations exposing (I18n)


type alias Html msg =
    Html.Html Context msg


type alias Attribute msg =
    Html.Attribute Context msg


rhythm : number
rhythm =
    16


spacing : Attribute msg
spacing =
    Attributes.style "gap" (String.fromInt rhythm ++ "px")


padding : Attribute msg
padding =
    Attributes.style "padding" (String.fromInt rhythm ++ "px")


shadow : Attribute msg
shadow =
    Attributes.style
        "filter"
        "drop-shadow(5px 5px 2.5px rgba(0,0,0,0.15)) drop-shadow(2.5px 2.5px 0px rgba(0,0,0,0.15))"


button :
    List (Attribute msg)
    ->
        { background : Maybe (List ( Int, Color ))
        , label : Html msg
        , onPress : Maybe msg
        }
    -> Html msg
button attrs config =
    Html.button
        (case config.onPress of
            Just msg ->
                case config.background of
                    Nothing ->
                        Events.onClick msg
                            :: attrs

                    Just background ->
                        gradient background
                            :: Events.onClick msg
                            :: attrs

            Nothing ->
                gradient [ ( 0, Color.rgb 0.7 0.7 0.7 ) ]
                    :: Attributes.disabled True
                    :: attrs
        )
        [ config.label ]


gradient : Gradient -> Attribute msg
gradient stops =
    ("radial-gradient("
        ++ String.join ", " (List.map stopToCss stops)
        ++ ")"
    )
        |> Attributes.style "background"


stopToCss : ( Int, Color ) -> String
stopToCss ( at, color ) =
    Color.toCssString color ++ " " ++ String.fromInt at ++ "%"


type alias Gradient =
    List ( Int, Color )


colors :
    { buttonBackground : Gradient
    , greenButtonBackground : Gradient
    , redButtonBackground : Gradient
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
    }


column : List (Attribute msg) -> List (Html msg) -> Html msg
column attrs children =
    Html.div
        (spacing
            :: Attributes.style "display" "flex"
            :: Attributes.style "flex-direction" "column"
            :: Attributes.style "align-items" "center"
            :: attrs
        )
        children


row : List (Attribute msg) -> List (Html msg) -> Html msg
row attrs children =
    Html.div
        (spacing
            :: Attributes.style "display" "flex"
            :: Attributes.style "flex-direction" "row"
            :: Attributes.style "align-items" "center"
            :: attrs
        )
        children


wrappedRow : List (Attribute msg) -> List (Html msg) -> Html msg
wrappedRow attrs children =
    Html.div
        (spacing
            :: Attributes.style "display" "flex"
            :: Attributes.style "flex-wrap" "wrap"
            :: Attributes.style "align-items" "center"
            :: attrs
        )
        children


grid :
    List (Attribute msg)
    ->
        { widths : List String
        , elements : List (Html msg)
        }
    -> Html msg
grid attrs { widths, elements } =
    Html.div
        (Attributes.style "display" "grid"
            :: Attributes.style "grid-template-columns" (String.join " " widths)
            :: spacing
            :: attrs
        )
        elements


viewFlag :
    List (Attribute msg)
    -> { country : Country, width : Int }
    -> Html msg
viewFlag attrs config =
    viewFlagUnsafe attrs
        { filename = countryToAlpha2 config.country
        , aspectRatio = AspectRatios.getAspectRatio config.country
        , width = config.width
        }


viewFlagUnsafe :
    List (Attribute msg)
    ->
        { filename : String
        , aspectRatio : ( Int, Int )
        , width : Int
        }
    -> Html msg
viewFlagUnsafe attrs config =
    let
        src : String
        src =
            "/flags/" ++ config.filename ++ ".svg"

        ( aspectRatioWidth, aspectRatioHeight ) =
            config.aspectRatio

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
    Html.img
        (shadow
            :: Attributes.style "width" (String.fromInt w ++ "px")
            :: Attributes.style "height" (String.fromInt h ++ "px")
            :: Attributes.src src
            :: Attributes.title "A country flag"
            :: attrs
        )
        []


text : (I18n -> String) -> Html msg
text f =
    Html.withContext <|
        \{ locale } ->
            Html.text <| f <| Translations.init <| localeToLanguage locale


localeToLanguage : String -> Translations.Language
localeToLanguage locale =
    locale
        |> Translations.languageFromString
        |> Maybe.withDefault Translations.En


textInvariant : String -> Html msg
textInvariant msg =
    Html.text msg


selectableButton :
    List (Attribute msg)
    ->
        { label : I18n -> String
        , selected : Bool
        , onPress : msg
        }
    -> Html msg
selectableButton attrs config =
    button
        (if config.selected then
            Attributes.style "color" "black" :: attrs

         else
            Attributes.style "color" "white" :: attrs
        )
        { background =
            if config.selected then
                Just colors.greenButtonBackground

            else
                Nothing
        , label = text config.label
        , onPress = Just config.onPress
        }
