module Theme exposing (Attribute, Element, Gradient, button, colors, column, gradient, grid, padding, row, rythm, selectableButton, spacing, text, textInvariant, viewFlag, wrappedRow)

import AspectRatios
import Cldr exposing (Locale)
import Element.WithContext as Element exposing (Color, Length, height, image, px, rgb, rgb255, rgba, shrink, width)
import Element.WithContext.Background as Background
import Element.WithContext.Border as Border
import Element.WithContext.Font as Font
import Element.WithContext.Input as Input
import Html.Attributes
import List.Extra
import Translations exposing (I18n)
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


text : (I18n -> String) -> Element msg
text f =
    Element.withContext <|
        \{ locale } ->
            Element.text <| f <| Translations.init <| localeToLanguage locale


localeToLanguage : Locale -> Translations.Language
localeToLanguage locale =
    case locale of
        Cldr.It ->
            Translations.It

        Cldr.En ->
            Translations.En

        Cldr.Af ->
            Debug.todo "branch 'Af' not implemented"

        Cldr.AfNA ->
            Debug.todo "branch 'AfNA' not implemented"

        Cldr.Am ->
            Debug.todo "branch 'Am' not implemented"

        Cldr.Ar ->
            Debug.todo "branch 'Ar' not implemented"

        Cldr.ArAE ->
            Debug.todo "branch 'ArAE' not implemented"

        Cldr.ArBH ->
            Debug.todo "branch 'ArBH' not implemented"

        Cldr.ArDJ ->
            Debug.todo "branch 'ArDJ' not implemented"

        Cldr.ArDZ ->
            Debug.todo "branch 'ArDZ' not implemented"

        Cldr.ArEG ->
            Debug.todo "branch 'ArEG' not implemented"

        Cldr.ArEH ->
            Debug.todo "branch 'ArEH' not implemented"

        Cldr.ArER ->
            Debug.todo "branch 'ArER' not implemented"

        Cldr.ArIL ->
            Debug.todo "branch 'ArIL' not implemented"

        Cldr.ArIQ ->
            Debug.todo "branch 'ArIQ' not implemented"

        Cldr.ArJO ->
            Debug.todo "branch 'ArJO' not implemented"

        Cldr.ArKM ->
            Debug.todo "branch 'ArKM' not implemented"

        Cldr.ArKW ->
            Debug.todo "branch 'ArKW' not implemented"

        Cldr.ArLB ->
            Debug.todo "branch 'ArLB' not implemented"

        Cldr.ArLY ->
            Debug.todo "branch 'ArLY' not implemented"

        Cldr.ArMA ->
            Debug.todo "branch 'ArMA' not implemented"

        Cldr.ArMR ->
            Debug.todo "branch 'ArMR' not implemented"

        Cldr.ArOM ->
            Debug.todo "branch 'ArOM' not implemented"

        Cldr.ArPS ->
            Debug.todo "branch 'ArPS' not implemented"

        Cldr.ArQA ->
            Debug.todo "branch 'ArQA' not implemented"

        Cldr.ArSA ->
            Debug.todo "branch 'ArSA' not implemented"

        Cldr.ArSD ->
            Debug.todo "branch 'ArSD' not implemented"

        Cldr.ArSO ->
            Debug.todo "branch 'ArSO' not implemented"

        Cldr.ArSS ->
            Debug.todo "branch 'ArSS' not implemented"

        Cldr.ArSY ->
            Debug.todo "branch 'ArSY' not implemented"

        Cldr.ArTD ->
            Debug.todo "branch 'ArTD' not implemented"

        Cldr.ArTN ->
            Debug.todo "branch 'ArTN' not implemented"

        Cldr.ArYE ->
            Debug.todo "branch 'ArYE' not implemented"

        Cldr.As ->
            Debug.todo "branch 'As' not implemented"

        Cldr.Az ->
            Debug.todo "branch 'Az' not implemented"

        Cldr.AzLatn ->
            Debug.todo "branch 'AzLatn' not implemented"

        Cldr.Be ->
            Debug.todo "branch 'Be' not implemented"

        Cldr.BeTarask ->
            Debug.todo "branch 'BeTarask' not implemented"

        Cldr.Bg ->
            Debug.todo "branch 'Bg' not implemented"

        Cldr.Bn ->
            Debug.todo "branch 'Bn' not implemented"

        Cldr.BnIN ->
            Debug.todo "branch 'BnIN' not implemented"

        Cldr.Bs ->
            Debug.todo "branch 'Bs' not implemented"

        Cldr.BsLatn ->
            Debug.todo "branch 'BsLatn' not implemented"

        Cldr.Ca ->
            Debug.todo "branch 'Ca' not implemented"

        Cldr.CaAD ->
            Debug.todo "branch 'CaAD' not implemented"

        Cldr.CaESValencia ->
            Debug.todo "branch 'CaESValencia' not implemented"

        Cldr.CaFR ->
            Debug.todo "branch 'CaFR' not implemented"

        Cldr.CaIT ->
            Debug.todo "branch 'CaIT' not implemented"

        Cldr.Cs ->
            Debug.todo "branch 'Cs' not implemented"

        Cldr.Cy ->
            Debug.todo "branch 'Cy' not implemented"

        Cldr.Da ->
            Debug.todo "branch 'Da' not implemented"

        Cldr.DaGL ->
            Debug.todo "branch 'DaGL' not implemented"

        Cldr.De ->
            Debug.todo "branch 'De' not implemented"

        Cldr.DeAT ->
            Debug.todo "branch 'DeAT' not implemented"

        Cldr.DeBE ->
            Debug.todo "branch 'DeBE' not implemented"

        Cldr.DeCH ->
            Debug.todo "branch 'DeCH' not implemented"

        Cldr.DeIT ->
            Debug.todo "branch 'DeIT' not implemented"

        Cldr.DeLI ->
            Debug.todo "branch 'DeLI' not implemented"

        Cldr.DeLU ->
            Debug.todo "branch 'DeLU' not implemented"

        Cldr.El ->
            Debug.todo "branch 'El' not implemented"

        Cldr.ElCY ->
            Debug.todo "branch 'ElCY' not implemented"

        Cldr.ElPolyton ->
            Debug.todo "branch 'ElPolyton' not implemented"

        Cldr.En001 ->
            Debug.todo "branch 'En001' not implemented"

        Cldr.En150 ->
            Debug.todo "branch 'En150' not implemented"

        Cldr.EnAE ->
            Debug.todo "branch 'EnAE' not implemented"

        Cldr.EnAG ->
            Debug.todo "branch 'EnAG' not implemented"

        Cldr.EnAI ->
            Debug.todo "branch 'EnAI' not implemented"

        Cldr.EnAS ->
            Debug.todo "branch 'EnAS' not implemented"

        Cldr.EnAT ->
            Debug.todo "branch 'EnAT' not implemented"

        Cldr.EnAU ->
            Debug.todo "branch 'EnAU' not implemented"

        Cldr.EnBB ->
            Debug.todo "branch 'EnBB' not implemented"

        Cldr.EnBE ->
            Debug.todo "branch 'EnBE' not implemented"

        Cldr.EnBI ->
            Debug.todo "branch 'EnBI' not implemented"

        Cldr.EnBM ->
            Debug.todo "branch 'EnBM' not implemented"

        Cldr.EnBS ->
            Debug.todo "branch 'EnBS' not implemented"

        Cldr.EnBW ->
            Debug.todo "branch 'EnBW' not implemented"

        Cldr.EnBZ ->
            Debug.todo "branch 'EnBZ' not implemented"

        Cldr.EnCA ->
            Debug.todo "branch 'EnCA' not implemented"

        Cldr.EnCC ->
            Debug.todo "branch 'EnCC' not implemented"

        Cldr.EnCH ->
            Debug.todo "branch 'EnCH' not implemented"

        Cldr.EnCK ->
            Debug.todo "branch 'EnCK' not implemented"

        Cldr.EnCM ->
            Debug.todo "branch 'EnCM' not implemented"

        Cldr.EnCX ->
            Debug.todo "branch 'EnCX' not implemented"

        Cldr.EnCY ->
            Debug.todo "branch 'EnCY' not implemented"

        Cldr.EnDE ->
            Debug.todo "branch 'EnDE' not implemented"

        Cldr.EnDG ->
            Debug.todo "branch 'EnDG' not implemented"

        Cldr.EnDK ->
            Debug.todo "branch 'EnDK' not implemented"

        Cldr.EnDM ->
            Debug.todo "branch 'EnDM' not implemented"

        Cldr.EnER ->
            Debug.todo "branch 'EnER' not implemented"

        Cldr.EnFI ->
            Debug.todo "branch 'EnFI' not implemented"

        Cldr.EnFJ ->
            Debug.todo "branch 'EnFJ' not implemented"

        Cldr.EnFK ->
            Debug.todo "branch 'EnFK' not implemented"

        Cldr.EnFM ->
            Debug.todo "branch 'EnFM' not implemented"

        Cldr.EnGB ->
            Debug.todo "branch 'EnGB' not implemented"

        Cldr.EnGD ->
            Debug.todo "branch 'EnGD' not implemented"

        Cldr.EnGG ->
            Debug.todo "branch 'EnGG' not implemented"

        Cldr.EnGH ->
            Debug.todo "branch 'EnGH' not implemented"

        Cldr.EnGI ->
            Debug.todo "branch 'EnGI' not implemented"

        Cldr.EnGM ->
            Debug.todo "branch 'EnGM' not implemented"

        Cldr.EnGU ->
            Debug.todo "branch 'EnGU' not implemented"

        Cldr.EnGY ->
            Debug.todo "branch 'EnGY' not implemented"

        Cldr.EnHK ->
            Debug.todo "branch 'EnHK' not implemented"

        Cldr.EnIE ->
            Debug.todo "branch 'EnIE' not implemented"

        Cldr.EnIL ->
            Debug.todo "branch 'EnIL' not implemented"

        Cldr.EnIM ->
            Debug.todo "branch 'EnIM' not implemented"

        Cldr.EnIN ->
            Debug.todo "branch 'EnIN' not implemented"

        Cldr.EnIO ->
            Debug.todo "branch 'EnIO' not implemented"

        Cldr.EnJE ->
            Debug.todo "branch 'EnJE' not implemented"

        Cldr.EnJM ->
            Debug.todo "branch 'EnJM' not implemented"

        Cldr.EnKE ->
            Debug.todo "branch 'EnKE' not implemented"

        Cldr.EnKI ->
            Debug.todo "branch 'EnKI' not implemented"

        Cldr.EnKN ->
            Debug.todo "branch 'EnKN' not implemented"

        Cldr.EnKY ->
            Debug.todo "branch 'EnKY' not implemented"

        Cldr.EnLC ->
            Debug.todo "branch 'EnLC' not implemented"

        Cldr.EnLR ->
            Debug.todo "branch 'EnLR' not implemented"

        Cldr.EnLS ->
            Debug.todo "branch 'EnLS' not implemented"

        Cldr.EnMG ->
            Debug.todo "branch 'EnMG' not implemented"

        Cldr.EnMH ->
            Debug.todo "branch 'EnMH' not implemented"

        Cldr.EnMO ->
            Debug.todo "branch 'EnMO' not implemented"

        Cldr.EnMP ->
            Debug.todo "branch 'EnMP' not implemented"

        Cldr.EnMS ->
            Debug.todo "branch 'EnMS' not implemented"

        Cldr.EnMT ->
            Debug.todo "branch 'EnMT' not implemented"

        Cldr.EnMU ->
            Debug.todo "branch 'EnMU' not implemented"

        Cldr.EnMV ->
            Debug.todo "branch 'EnMV' not implemented"

        Cldr.EnMW ->
            Debug.todo "branch 'EnMW' not implemented"

        Cldr.EnMY ->
            Debug.todo "branch 'EnMY' not implemented"

        Cldr.EnNA ->
            Debug.todo "branch 'EnNA' not implemented"

        Cldr.EnNF ->
            Debug.todo "branch 'EnNF' not implemented"

        Cldr.EnNG ->
            Debug.todo "branch 'EnNG' not implemented"

        Cldr.EnNL ->
            Debug.todo "branch 'EnNL' not implemented"

        Cldr.EnNR ->
            Debug.todo "branch 'EnNR' not implemented"

        Cldr.EnNU ->
            Debug.todo "branch 'EnNU' not implemented"

        Cldr.EnNZ ->
            Debug.todo "branch 'EnNZ' not implemented"

        Cldr.EnPG ->
            Debug.todo "branch 'EnPG' not implemented"

        Cldr.EnPH ->
            Debug.todo "branch 'EnPH' not implemented"

        Cldr.EnPK ->
            Debug.todo "branch 'EnPK' not implemented"

        Cldr.EnPN ->
            Debug.todo "branch 'EnPN' not implemented"

        Cldr.EnPR ->
            Debug.todo "branch 'EnPR' not implemented"

        Cldr.EnPW ->
            Debug.todo "branch 'EnPW' not implemented"

        Cldr.EnRW ->
            Debug.todo "branch 'EnRW' not implemented"

        Cldr.EnSB ->
            Debug.todo "branch 'EnSB' not implemented"

        Cldr.EnSC ->
            Debug.todo "branch 'EnSC' not implemented"

        Cldr.EnSD ->
            Debug.todo "branch 'EnSD' not implemented"

        Cldr.EnSE ->
            Debug.todo "branch 'EnSE' not implemented"

        Cldr.EnSG ->
            Debug.todo "branch 'EnSG' not implemented"

        Cldr.EnSH ->
            Debug.todo "branch 'EnSH' not implemented"

        Cldr.EnSI ->
            Debug.todo "branch 'EnSI' not implemented"

        Cldr.EnSL ->
            Debug.todo "branch 'EnSL' not implemented"

        Cldr.EnSS ->
            Debug.todo "branch 'EnSS' not implemented"

        Cldr.EnSX ->
            Debug.todo "branch 'EnSX' not implemented"

        Cldr.EnSZ ->
            Debug.todo "branch 'EnSZ' not implemented"

        Cldr.EnTC ->
            Debug.todo "branch 'EnTC' not implemented"

        Cldr.EnTK ->
            Debug.todo "branch 'EnTK' not implemented"

        Cldr.EnTO ->
            Debug.todo "branch 'EnTO' not implemented"

        Cldr.EnTT ->
            Debug.todo "branch 'EnTT' not implemented"

        Cldr.EnTV ->
            Debug.todo "branch 'EnTV' not implemented"

        Cldr.EnTZ ->
            Debug.todo "branch 'EnTZ' not implemented"

        Cldr.EnUG ->
            Debug.todo "branch 'EnUG' not implemented"

        Cldr.EnUM ->
            Debug.todo "branch 'EnUM' not implemented"

        Cldr.EnVC ->
            Debug.todo "branch 'EnVC' not implemented"

        Cldr.EnVG ->
            Debug.todo "branch 'EnVG' not implemented"

        Cldr.EnVI ->
            Debug.todo "branch 'EnVI' not implemented"

        Cldr.EnVU ->
            Debug.todo "branch 'EnVU' not implemented"

        Cldr.EnWS ->
            Debug.todo "branch 'EnWS' not implemented"

        Cldr.EnZA ->
            Debug.todo "branch 'EnZA' not implemented"

        Cldr.EnZM ->
            Debug.todo "branch 'EnZM' not implemented"

        Cldr.EnZW ->
            Debug.todo "branch 'EnZW' not implemented"

        Cldr.Es ->
            Debug.todo "branch 'Es' not implemented"

        Cldr.Es419 ->
            Debug.todo "branch 'Es419' not implemented"

        Cldr.EsAR ->
            Debug.todo "branch 'EsAR' not implemented"

        Cldr.EsBO ->
            Debug.todo "branch 'EsBO' not implemented"

        Cldr.EsBR ->
            Debug.todo "branch 'EsBR' not implemented"

        Cldr.EsBZ ->
            Debug.todo "branch 'EsBZ' not implemented"

        Cldr.EsCL ->
            Debug.todo "branch 'EsCL' not implemented"

        Cldr.EsCO ->
            Debug.todo "branch 'EsCO' not implemented"

        Cldr.EsCR ->
            Debug.todo "branch 'EsCR' not implemented"

        Cldr.EsCU ->
            Debug.todo "branch 'EsCU' not implemented"

        Cldr.EsDO ->
            Debug.todo "branch 'EsDO' not implemented"

        Cldr.EsEA ->
            Debug.todo "branch 'EsEA' not implemented"

        Cldr.EsEC ->
            Debug.todo "branch 'EsEC' not implemented"

        Cldr.EsGQ ->
            Debug.todo "branch 'EsGQ' not implemented"

        Cldr.EsGT ->
            Debug.todo "branch 'EsGT' not implemented"

        Cldr.EsHN ->
            Debug.todo "branch 'EsHN' not implemented"

        Cldr.EsIC ->
            Debug.todo "branch 'EsIC' not implemented"

        Cldr.EsMX ->
            Debug.todo "branch 'EsMX' not implemented"

        Cldr.EsNI ->
            Debug.todo "branch 'EsNI' not implemented"

        Cldr.EsPA ->
            Debug.todo "branch 'EsPA' not implemented"

        Cldr.EsPE ->
            Debug.todo "branch 'EsPE' not implemented"

        Cldr.EsPH ->
            Debug.todo "branch 'EsPH' not implemented"

        Cldr.EsPR ->
            Debug.todo "branch 'EsPR' not implemented"

        Cldr.EsPY ->
            Debug.todo "branch 'EsPY' not implemented"

        Cldr.EsSV ->
            Debug.todo "branch 'EsSV' not implemented"

        Cldr.EsUS ->
            Debug.todo "branch 'EsUS' not implemented"

        Cldr.EsUY ->
            Debug.todo "branch 'EsUY' not implemented"

        Cldr.EsVE ->
            Debug.todo "branch 'EsVE' not implemented"

        Cldr.Et ->
            Debug.todo "branch 'Et' not implemented"

        Cldr.Eu ->
            Debug.todo "branch 'Eu' not implemented"

        Cldr.Fa ->
            Debug.todo "branch 'Fa' not implemented"

        Cldr.FaAF ->
            Debug.todo "branch 'FaAF' not implemented"

        Cldr.Fi ->
            Debug.todo "branch 'Fi' not implemented"

        Cldr.Fil ->
            Debug.todo "branch 'Fil' not implemented"

        Cldr.Fr ->
            Debug.todo "branch 'Fr' not implemented"

        Cldr.FrBE ->
            Debug.todo "branch 'FrBE' not implemented"

        Cldr.FrBF ->
            Debug.todo "branch 'FrBF' not implemented"

        Cldr.FrBI ->
            Debug.todo "branch 'FrBI' not implemented"

        Cldr.FrBJ ->
            Debug.todo "branch 'FrBJ' not implemented"

        Cldr.FrBL ->
            Debug.todo "branch 'FrBL' not implemented"

        Cldr.FrCA ->
            Debug.todo "branch 'FrCA' not implemented"

        Cldr.FrCD ->
            Debug.todo "branch 'FrCD' not implemented"

        Cldr.FrCF ->
            Debug.todo "branch 'FrCF' not implemented"

        Cldr.FrCG ->
            Debug.todo "branch 'FrCG' not implemented"

        Cldr.FrCH ->
            Debug.todo "branch 'FrCH' not implemented"

        Cldr.FrCI ->
            Debug.todo "branch 'FrCI' not implemented"

        Cldr.FrCM ->
            Debug.todo "branch 'FrCM' not implemented"

        Cldr.FrDJ ->
            Debug.todo "branch 'FrDJ' not implemented"

        Cldr.FrDZ ->
            Debug.todo "branch 'FrDZ' not implemented"

        Cldr.FrGA ->
            Debug.todo "branch 'FrGA' not implemented"

        Cldr.FrGF ->
            Debug.todo "branch 'FrGF' not implemented"

        Cldr.FrGN ->
            Debug.todo "branch 'FrGN' not implemented"

        Cldr.FrGP ->
            Debug.todo "branch 'FrGP' not implemented"

        Cldr.FrGQ ->
            Debug.todo "branch 'FrGQ' not implemented"

        Cldr.FrHT ->
            Debug.todo "branch 'FrHT' not implemented"

        Cldr.FrKM ->
            Debug.todo "branch 'FrKM' not implemented"

        Cldr.FrLU ->
            Debug.todo "branch 'FrLU' not implemented"

        Cldr.FrMA ->
            Debug.todo "branch 'FrMA' not implemented"

        Cldr.FrMC ->
            Debug.todo "branch 'FrMC' not implemented"

        Cldr.FrMF ->
            Debug.todo "branch 'FrMF' not implemented"

        Cldr.FrMG ->
            Debug.todo "branch 'FrMG' not implemented"

        Cldr.FrML ->
            Debug.todo "branch 'FrML' not implemented"

        Cldr.FrMQ ->
            Debug.todo "branch 'FrMQ' not implemented"

        Cldr.FrMR ->
            Debug.todo "branch 'FrMR' not implemented"

        Cldr.FrMU ->
            Debug.todo "branch 'FrMU' not implemented"

        Cldr.FrNC ->
            Debug.todo "branch 'FrNC' not implemented"

        Cldr.FrNE ->
            Debug.todo "branch 'FrNE' not implemented"

        Cldr.FrPF ->
            Debug.todo "branch 'FrPF' not implemented"

        Cldr.FrPM ->
            Debug.todo "branch 'FrPM' not implemented"

        Cldr.FrRE ->
            Debug.todo "branch 'FrRE' not implemented"

        Cldr.FrRW ->
            Debug.todo "branch 'FrRW' not implemented"

        Cldr.FrSC ->
            Debug.todo "branch 'FrSC' not implemented"

        Cldr.FrSN ->
            Debug.todo "branch 'FrSN' not implemented"

        Cldr.FrSY ->
            Debug.todo "branch 'FrSY' not implemented"

        Cldr.FrTD ->
            Debug.todo "branch 'FrTD' not implemented"

        Cldr.FrTG ->
            Debug.todo "branch 'FrTG' not implemented"

        Cldr.FrTN ->
            Debug.todo "branch 'FrTN' not implemented"

        Cldr.FrVU ->
            Debug.todo "branch 'FrVU' not implemented"

        Cldr.FrWF ->
            Debug.todo "branch 'FrWF' not implemented"

        Cldr.FrYT ->
            Debug.todo "branch 'FrYT' not implemented"

        Cldr.Ga ->
            Debug.todo "branch 'Ga' not implemented"

        Cldr.GaGB ->
            Debug.todo "branch 'GaGB' not implemented"

        Cldr.Gd ->
            Debug.todo "branch 'Gd' not implemented"

        Cldr.Gl ->
            Debug.todo "branch 'Gl' not implemented"

        Cldr.Gu ->
            Debug.todo "branch 'Gu' not implemented"

        Cldr.Ha ->
            Debug.todo "branch 'Ha' not implemented"

        Cldr.HaGH ->
            Debug.todo "branch 'HaGH' not implemented"

        Cldr.HaNE ->
            Debug.todo "branch 'HaNE' not implemented"

        Cldr.He ->
            Debug.todo "branch 'He' not implemented"

        Cldr.Hi ->
            Debug.todo "branch 'Hi' not implemented"

        Cldr.HiLatn ->
            Debug.todo "branch 'HiLatn' not implemented"

        Cldr.Hr ->
            Debug.todo "branch 'Hr' not implemented"

        Cldr.HrBA ->
            Debug.todo "branch 'HrBA' not implemented"

        Cldr.Hu ->
            Debug.todo "branch 'Hu' not implemented"

        Cldr.Hy ->
            Debug.todo "branch 'Hy' not implemented"

        Cldr.Id ->
            Debug.todo "branch 'Id' not implemented"

        Cldr.Ig ->
            Debug.todo "branch 'Ig' not implemented"

        Cldr.Is ->
            Debug.todo "branch 'Is' not implemented"

        Cldr.ItCH ->
            Debug.todo "branch 'ItCH' not implemented"

        Cldr.ItSM ->
            Debug.todo "branch 'ItSM' not implemented"

        Cldr.ItVA ->
            Debug.todo "branch 'ItVA' not implemented"

        Cldr.Ja ->
            Debug.todo "branch 'Ja' not implemented"

        Cldr.Jv ->
            Debug.todo "branch 'Jv' not implemented"

        Cldr.Ka ->
            Debug.todo "branch 'Ka' not implemented"

        Cldr.Kk ->
            Debug.todo "branch 'Kk' not implemented"

        Cldr.Km ->
            Debug.todo "branch 'Km' not implemented"

        Cldr.Kn ->
            Debug.todo "branch 'Kn' not implemented"

        Cldr.Ko ->
            Debug.todo "branch 'Ko' not implemented"

        Cldr.KoKP ->
            Debug.todo "branch 'KoKP' not implemented"

        Cldr.Kok ->
            Debug.todo "branch 'Kok' not implemented"

        Cldr.Ky ->
            Debug.todo "branch 'Ky' not implemented"

        Cldr.Lo ->
            Debug.todo "branch 'Lo' not implemented"

        Cldr.Lt ->
            Debug.todo "branch 'Lt' not implemented"

        Cldr.Lv ->
            Debug.todo "branch 'Lv' not implemented"

        Cldr.Mk ->
            Debug.todo "branch 'Mk' not implemented"

        Cldr.Ml ->
            Debug.todo "branch 'Ml' not implemented"

        Cldr.Mn ->
            Debug.todo "branch 'Mn' not implemented"

        Cldr.Mr ->
            Debug.todo "branch 'Mr' not implemented"

        Cldr.Ms ->
            Debug.todo "branch 'Ms' not implemented"

        Cldr.MsBN ->
            Debug.todo "branch 'MsBN' not implemented"

        Cldr.MsID ->
            Debug.todo "branch 'MsID' not implemented"

        Cldr.MsSG ->
            Debug.todo "branch 'MsSG' not implemented"

        Cldr.My ->
            Debug.todo "branch 'My' not implemented"

        Cldr.Nb ->
            Debug.todo "branch 'Nb' not implemented"

        Cldr.NbSJ ->
            Debug.todo "branch 'NbSJ' not implemented"

        Cldr.Ne ->
            Debug.todo "branch 'Ne' not implemented"

        Cldr.NeIN ->
            Debug.todo "branch 'NeIN' not implemented"

        Cldr.Nl ->
            Debug.todo "branch 'Nl' not implemented"

        Cldr.NlAW ->
            Debug.todo "branch 'NlAW' not implemented"

        Cldr.NlBE ->
            Debug.todo "branch 'NlBE' not implemented"

        Cldr.NlBQ ->
            Debug.todo "branch 'NlBQ' not implemented"

        Cldr.NlCW ->
            Debug.todo "branch 'NlCW' not implemented"

        Cldr.NlSR ->
            Debug.todo "branch 'NlSR' not implemented"

        Cldr.NlSX ->
            Debug.todo "branch 'NlSX' not implemented"

        Cldr.Nn ->
            Debug.todo "branch 'Nn' not implemented"

        Cldr.No ->
            Debug.todo "branch 'No' not implemented"

        Cldr.Or ->
            Debug.todo "branch 'Or' not implemented"

        Cldr.Pa ->
            Debug.todo "branch 'Pa' not implemented"

        Cldr.PaGuru ->
            Debug.todo "branch 'PaGuru' not implemented"

        Cldr.Pcm ->
            Debug.todo "branch 'Pcm' not implemented"

        Cldr.Pl ->
            Debug.todo "branch 'Pl' not implemented"

        Cldr.Ps ->
            Debug.todo "branch 'Ps' not implemented"

        Cldr.PsPK ->
            Debug.todo "branch 'PsPK' not implemented"

        Cldr.Pt ->
            Debug.todo "branch 'Pt' not implemented"

        Cldr.PtAO ->
            Debug.todo "branch 'PtAO' not implemented"

        Cldr.PtCH ->
            Debug.todo "branch 'PtCH' not implemented"

        Cldr.PtCV ->
            Debug.todo "branch 'PtCV' not implemented"

        Cldr.PtGQ ->
            Debug.todo "branch 'PtGQ' not implemented"

        Cldr.PtGW ->
            Debug.todo "branch 'PtGW' not implemented"

        Cldr.PtLU ->
            Debug.todo "branch 'PtLU' not implemented"

        Cldr.PtMO ->
            Debug.todo "branch 'PtMO' not implemented"

        Cldr.PtMZ ->
            Debug.todo "branch 'PtMZ' not implemented"

        Cldr.PtPT ->
            Debug.todo "branch 'PtPT' not implemented"

        Cldr.PtST ->
            Debug.todo "branch 'PtST' not implemented"

        Cldr.PtTL ->
            Debug.todo "branch 'PtTL' not implemented"

        Cldr.Ro ->
            Debug.todo "branch 'Ro' not implemented"

        Cldr.RoMD ->
            Debug.todo "branch 'RoMD' not implemented"

        Cldr.Ru ->
            Debug.todo "branch 'Ru' not implemented"

        Cldr.RuBY ->
            Debug.todo "branch 'RuBY' not implemented"

        Cldr.RuKG ->
            Debug.todo "branch 'RuKG' not implemented"

        Cldr.RuKZ ->
            Debug.todo "branch 'RuKZ' not implemented"

        Cldr.RuMD ->
            Debug.todo "branch 'RuMD' not implemented"

        Cldr.RuUA ->
            Debug.todo "branch 'RuUA' not implemented"

        Cldr.Sd ->
            Debug.todo "branch 'Sd' not implemented"

        Cldr.SdArab ->
            Debug.todo "branch 'SdArab' not implemented"

        Cldr.Si ->
            Debug.todo "branch 'Si' not implemented"

        Cldr.Sk ->
            Debug.todo "branch 'Sk' not implemented"

        Cldr.Sl ->
            Debug.todo "branch 'Sl' not implemented"

        Cldr.So ->
            Debug.todo "branch 'So' not implemented"

        Cldr.SoDJ ->
            Debug.todo "branch 'SoDJ' not implemented"

        Cldr.SoET ->
            Debug.todo "branch 'SoET' not implemented"

        Cldr.SoKE ->
            Debug.todo "branch 'SoKE' not implemented"

        Cldr.Sq ->
            Debug.todo "branch 'Sq' not implemented"

        Cldr.SqMK ->
            Debug.todo "branch 'SqMK' not implemented"

        Cldr.SqXK ->
            Debug.todo "branch 'SqXK' not implemented"

        Cldr.Sr ->
            Debug.todo "branch 'Sr' not implemented"

        Cldr.SrCyrl ->
            Debug.todo "branch 'SrCyrl' not implemented"

        Cldr.SrCyrlBA ->
            Debug.todo "branch 'SrCyrlBA' not implemented"

        Cldr.SrCyrlME ->
            Debug.todo "branch 'SrCyrlME' not implemented"

        Cldr.SrCyrlXK ->
            Debug.todo "branch 'SrCyrlXK' not implemented"

        Cldr.SrLatn ->
            Debug.todo "branch 'SrLatn' not implemented"

        Cldr.SrLatnBA ->
            Debug.todo "branch 'SrLatnBA' not implemented"

        Cldr.SrLatnME ->
            Debug.todo "branch 'SrLatnME' not implemented"

        Cldr.SrLatnXK ->
            Debug.todo "branch 'SrLatnXK' not implemented"

        Cldr.Sv ->
            Debug.todo "branch 'Sv' not implemented"

        Cldr.SvAX ->
            Debug.todo "branch 'SvAX' not implemented"

        Cldr.SvFI ->
            Debug.todo "branch 'SvFI' not implemented"

        Cldr.Sw ->
            Debug.todo "branch 'Sw' not implemented"

        Cldr.SwCD ->
            Debug.todo "branch 'SwCD' not implemented"

        Cldr.SwKE ->
            Debug.todo "branch 'SwKE' not implemented"

        Cldr.SwUG ->
            Debug.todo "branch 'SwUG' not implemented"

        Cldr.Ta ->
            Debug.todo "branch 'Ta' not implemented"

        Cldr.TaLK ->
            Debug.todo "branch 'TaLK' not implemented"

        Cldr.TaMY ->
            Debug.todo "branch 'TaMY' not implemented"

        Cldr.TaSG ->
            Debug.todo "branch 'TaSG' not implemented"

        Cldr.Te ->
            Debug.todo "branch 'Te' not implemented"

        Cldr.Th ->
            Debug.todo "branch 'Th' not implemented"

        Cldr.Tk ->
            Debug.todo "branch 'Tk' not implemented"

        Cldr.Tr ->
            Debug.todo "branch 'Tr' not implemented"

        Cldr.TrCY ->
            Debug.todo "branch 'TrCY' not implemented"

        Cldr.Uk ->
            Debug.todo "branch 'Uk' not implemented"

        Cldr.Ur ->
            Debug.todo "branch 'Ur' not implemented"

        Cldr.UrIN ->
            Debug.todo "branch 'UrIN' not implemented"

        Cldr.Uz ->
            Debug.todo "branch 'Uz' not implemented"

        Cldr.UzLatn ->
            Debug.todo "branch 'UzLatn' not implemented"

        Cldr.Vi ->
            Debug.todo "branch 'Vi' not implemented"

        Cldr.Yo ->
            Debug.todo "branch 'Yo' not implemented"

        Cldr.YoBJ ->
            Debug.todo "branch 'YoBJ' not implemented"

        Cldr.Yue ->
            Debug.todo "branch 'Yue' not implemented"

        Cldr.YueHans ->
            Debug.todo "branch 'YueHans' not implemented"

        Cldr.YueHant ->
            Debug.todo "branch 'YueHant' not implemented"

        Cldr.Zh ->
            Debug.todo "branch 'Zh' not implemented"

        Cldr.ZhHans ->
            Debug.todo "branch 'ZhHans' not implemented"

        Cldr.ZhHansHK ->
            Debug.todo "branch 'ZhHansHK' not implemented"

        Cldr.ZhHansMO ->
            Debug.todo "branch 'ZhHansMO' not implemented"

        Cldr.ZhHansSG ->
            Debug.todo "branch 'ZhHansSG' not implemented"

        Cldr.ZhHant ->
            Debug.todo "branch 'ZhHant' not implemented"

        Cldr.ZhHantHK ->
            Debug.todo "branch 'ZhHantHK' not implemented"

        Cldr.ZhHantMO ->
            Debug.todo "branch 'ZhHantMO' not implemented"

        Cldr.Zu ->
            Debug.todo "branch 'Zu' not implemented"


textInvariant : String -> Element msg
textInvariant msg =
    Element.text msg


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
