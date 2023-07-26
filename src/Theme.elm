module Theme exposing (Attribute, Element, Gradient, button, colors, column, gradient, grid, padding, row, rythm, selectableButton, spacing, text, textInvariant, viewFlag, wrappedRow, localeToLanguage)

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
        w : Int
        w =
            min config.width (config.width * aspectRatioWidth * 2 // (3 * aspectRatioHeight))

        h : Int
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
        Cldr.Af ->
            Translations.Af

        Cldr.AfNA ->
            Translations.AfNA

        Cldr.Am ->
            Translations.Am

        Cldr.Ar ->
            Translations.Ar

        Cldr.ArAE ->
            Translations.ArAE

        Cldr.ArBH ->
            Translations.ArBH

        Cldr.ArDJ ->
            Translations.ArDJ

        Cldr.ArDZ ->
            Translations.ArDZ

        Cldr.ArEG ->
            Translations.ArEG

        Cldr.ArEH ->
            Translations.ArEH

        Cldr.ArER ->
            Translations.ArER

        Cldr.ArIL ->
            Translations.ArIL

        Cldr.ArIQ ->
            Translations.ArIQ

        Cldr.ArJO ->
            Translations.ArJO

        Cldr.ArKM ->
            Translations.ArKM

        Cldr.ArKW ->
            Translations.ArKW

        Cldr.ArLB ->
            Translations.ArLB

        Cldr.ArLY ->
            Translations.ArLY

        Cldr.ArMA ->
            Translations.ArMA

        Cldr.ArMR ->
            Translations.ArMR

        Cldr.ArOM ->
            Translations.ArOM

        Cldr.ArPS ->
            Translations.ArPS

        Cldr.ArQA ->
            Translations.ArQA

        Cldr.ArSA ->
            Translations.ArSA

        Cldr.ArSD ->
            Translations.ArSD

        Cldr.ArSO ->
            Translations.ArSO

        Cldr.ArSS ->
            Translations.ArSS

        Cldr.ArSY ->
            Translations.ArSY

        Cldr.ArTD ->
            Translations.ArTD

        Cldr.ArTN ->
            Translations.ArTN

        Cldr.ArYE ->
            Translations.ArYE

        Cldr.As ->
            Translations.As

        Cldr.Az ->
            Translations.Az

        Cldr.AzLatn ->
            Translations.AzLatn

        Cldr.Be ->
            Translations.Be

        Cldr.BeTarask ->
            Translations.BeTarask

        Cldr.Bg ->
            Translations.Bg

        Cldr.Bn ->
            Translations.Bn

        Cldr.BnIN ->
            Translations.BnIN

        Cldr.Bs ->
            Translations.Bs

        Cldr.BsLatn ->
            Translations.BsLatn

        Cldr.Ca ->
            Translations.Ca

        Cldr.CaAD ->
            Translations.CaAD

        Cldr.CaESValencia ->
            Translations.CaESValencia

        Cldr.CaFR ->
            Translations.CaFR

        Cldr.CaIT ->
            Translations.CaIT

        Cldr.Cs ->
            Translations.Cs

        Cldr.Cy ->
            Translations.Cy

        Cldr.Da ->
            Translations.Da

        Cldr.DaGL ->
            Translations.DaGL

        Cldr.De ->
            Translations.De

        Cldr.DeAT ->
            Translations.DeAT

        Cldr.DeBE ->
            Translations.DeBE

        Cldr.DeCH ->
            Translations.DeCH

        Cldr.DeIT ->
            Translations.DeIT

        Cldr.DeLI ->
            Translations.DeLI

        Cldr.DeLU ->
            Translations.DeLU

        Cldr.El ->
            Translations.El

        Cldr.ElCY ->
            Translations.ElCY

        Cldr.ElPolyton ->
            Translations.ElPolyton

        Cldr.En ->
            Translations.En

        Cldr.En001 ->
            Translations.En001

        Cldr.En150 ->
            Translations.En150

        Cldr.EnAE ->
            Translations.EnAE

        Cldr.EnAG ->
            Translations.EnAG

        Cldr.EnAI ->
            Translations.EnAI

        Cldr.EnAS ->
            Translations.EnAS

        Cldr.EnAT ->
            Translations.EnAT

        Cldr.EnAU ->
            Translations.EnAU

        Cldr.EnBB ->
            Translations.EnBB

        Cldr.EnBE ->
            Translations.EnBE

        Cldr.EnBI ->
            Translations.EnBI

        Cldr.EnBM ->
            Translations.EnBM

        Cldr.EnBS ->
            Translations.EnBS

        Cldr.EnBW ->
            Translations.EnBW

        Cldr.EnBZ ->
            Translations.EnBZ

        Cldr.EnCA ->
            Translations.EnCA

        Cldr.EnCC ->
            Translations.EnCC

        Cldr.EnCH ->
            Translations.EnCH

        Cldr.EnCK ->
            Translations.EnCK

        Cldr.EnCM ->
            Translations.EnCM

        Cldr.EnCX ->
            Translations.EnCX

        Cldr.EnCY ->
            Translations.EnCY

        Cldr.EnDE ->
            Translations.EnDE

        Cldr.EnDG ->
            Translations.EnDG

        Cldr.EnDK ->
            Translations.EnDK

        Cldr.EnDM ->
            Translations.EnDM

        Cldr.EnER ->
            Translations.EnER

        Cldr.EnFI ->
            Translations.EnFI

        Cldr.EnFJ ->
            Translations.EnFJ

        Cldr.EnFK ->
            Translations.EnFK

        Cldr.EnFM ->
            Translations.EnFM

        Cldr.EnGB ->
            Translations.EnGB

        Cldr.EnGD ->
            Translations.EnGD

        Cldr.EnGG ->
            Translations.EnGG

        Cldr.EnGH ->
            Translations.EnGH

        Cldr.EnGI ->
            Translations.EnGI

        Cldr.EnGM ->
            Translations.EnGM

        Cldr.EnGU ->
            Translations.EnGU

        Cldr.EnGY ->
            Translations.EnGY

        Cldr.EnHK ->
            Translations.EnHK

        Cldr.EnIE ->
            Translations.EnIE

        Cldr.EnIL ->
            Translations.EnIL

        Cldr.EnIM ->
            Translations.EnIM

        Cldr.EnIN ->
            Translations.EnIN

        Cldr.EnIO ->
            Translations.EnIO

        Cldr.EnJE ->
            Translations.EnJE

        Cldr.EnJM ->
            Translations.EnJM

        Cldr.EnKE ->
            Translations.EnKE

        Cldr.EnKI ->
            Translations.EnKI

        Cldr.EnKN ->
            Translations.EnKN

        Cldr.EnKY ->
            Translations.EnKY

        Cldr.EnLC ->
            Translations.EnLC

        Cldr.EnLR ->
            Translations.EnLR

        Cldr.EnLS ->
            Translations.EnLS

        Cldr.EnMG ->
            Translations.EnMG

        Cldr.EnMH ->
            Translations.EnMH

        Cldr.EnMO ->
            Translations.EnMO

        Cldr.EnMP ->
            Translations.EnMP

        Cldr.EnMS ->
            Translations.EnMS

        Cldr.EnMT ->
            Translations.EnMT

        Cldr.EnMU ->
            Translations.EnMU

        Cldr.EnMV ->
            Translations.EnMV

        Cldr.EnMW ->
            Translations.EnMW

        Cldr.EnMY ->
            Translations.EnMY

        Cldr.EnNA ->
            Translations.EnNA

        Cldr.EnNF ->
            Translations.EnNF

        Cldr.EnNG ->
            Translations.EnNG

        Cldr.EnNL ->
            Translations.EnNL

        Cldr.EnNR ->
            Translations.EnNR

        Cldr.EnNU ->
            Translations.EnNU

        Cldr.EnNZ ->
            Translations.EnNZ

        Cldr.EnPG ->
            Translations.EnPG

        Cldr.EnPH ->
            Translations.EnPH

        Cldr.EnPK ->
            Translations.EnPK

        Cldr.EnPN ->
            Translations.EnPN

        Cldr.EnPR ->
            Translations.EnPR

        Cldr.EnPW ->
            Translations.EnPW

        Cldr.EnRW ->
            Translations.EnRW

        Cldr.EnSB ->
            Translations.EnSB

        Cldr.EnSC ->
            Translations.EnSC

        Cldr.EnSD ->
            Translations.EnSD

        Cldr.EnSE ->
            Translations.EnSE

        Cldr.EnSG ->
            Translations.EnSG

        Cldr.EnSH ->
            Translations.EnSH

        Cldr.EnSI ->
            Translations.EnSI

        Cldr.EnSL ->
            Translations.EnSL

        Cldr.EnSS ->
            Translations.EnSS

        Cldr.EnSX ->
            Translations.EnSX

        Cldr.EnSZ ->
            Translations.EnSZ

        Cldr.EnTC ->
            Translations.EnTC

        Cldr.EnTK ->
            Translations.EnTK

        Cldr.EnTO ->
            Translations.EnTO

        Cldr.EnTT ->
            Translations.EnTT

        Cldr.EnTV ->
            Translations.EnTV

        Cldr.EnTZ ->
            Translations.EnTZ

        Cldr.EnUG ->
            Translations.EnUG

        Cldr.EnUM ->
            Translations.EnUM

        Cldr.EnVC ->
            Translations.EnVC

        Cldr.EnVG ->
            Translations.EnVG

        Cldr.EnVI ->
            Translations.EnVI

        Cldr.EnVU ->
            Translations.EnVU

        Cldr.EnWS ->
            Translations.EnWS

        Cldr.EnZA ->
            Translations.EnZA

        Cldr.EnZM ->
            Translations.EnZM

        Cldr.EnZW ->
            Translations.EnZW

        Cldr.Es ->
            Translations.Es

        Cldr.Es419 ->
            Translations.Es419

        Cldr.EsAR ->
            Translations.EsAR

        Cldr.EsBO ->
            Translations.EsBO

        Cldr.EsBR ->
            Translations.EsBR

        Cldr.EsBZ ->
            Translations.EsBZ

        Cldr.EsCL ->
            Translations.EsCL

        Cldr.EsCO ->
            Translations.EsCO

        Cldr.EsCR ->
            Translations.EsCR

        Cldr.EsCU ->
            Translations.EsCU

        Cldr.EsDO ->
            Translations.EsDO

        Cldr.EsEA ->
            Translations.EsEA

        Cldr.EsEC ->
            Translations.EsEC

        Cldr.EsGQ ->
            Translations.EsGQ

        Cldr.EsGT ->
            Translations.EsGT

        Cldr.EsHN ->
            Translations.EsHN

        Cldr.EsIC ->
            Translations.EsIC

        Cldr.EsMX ->
            Translations.EsMX

        Cldr.EsNI ->
            Translations.EsNI

        Cldr.EsPA ->
            Translations.EsPA

        Cldr.EsPE ->
            Translations.EsPE

        Cldr.EsPH ->
            Translations.EsPH

        Cldr.EsPR ->
            Translations.EsPR

        Cldr.EsPY ->
            Translations.EsPY

        Cldr.EsSV ->
            Translations.EsSV

        Cldr.EsUS ->
            Translations.EsUS

        Cldr.EsUY ->
            Translations.EsUY

        Cldr.EsVE ->
            Translations.EsVE

        Cldr.Et ->
            Translations.Et

        Cldr.Eu ->
            Translations.Eu

        Cldr.Fa ->
            Translations.Fa

        Cldr.FaAF ->
            Translations.FaAF

        Cldr.Fi ->
            Translations.Fi

        Cldr.Fil ->
            Translations.Fil

        Cldr.Fr ->
            Translations.Fr

        Cldr.FrBE ->
            Translations.FrBE

        Cldr.FrBF ->
            Translations.FrBF

        Cldr.FrBI ->
            Translations.FrBI

        Cldr.FrBJ ->
            Translations.FrBJ

        Cldr.FrBL ->
            Translations.FrBL

        Cldr.FrCA ->
            Translations.FrCA

        Cldr.FrCD ->
            Translations.FrCD

        Cldr.FrCF ->
            Translations.FrCF

        Cldr.FrCG ->
            Translations.FrCG

        Cldr.FrCH ->
            Translations.FrCH

        Cldr.FrCI ->
            Translations.FrCI

        Cldr.FrCM ->
            Translations.FrCM

        Cldr.FrDJ ->
            Translations.FrDJ

        Cldr.FrDZ ->
            Translations.FrDZ

        Cldr.FrGA ->
            Translations.FrGA

        Cldr.FrGF ->
            Translations.FrGF

        Cldr.FrGN ->
            Translations.FrGN

        Cldr.FrGP ->
            Translations.FrGP

        Cldr.FrGQ ->
            Translations.FrGQ

        Cldr.FrHT ->
            Translations.FrHT

        Cldr.FrKM ->
            Translations.FrKM

        Cldr.FrLU ->
            Translations.FrLU

        Cldr.FrMA ->
            Translations.FrMA

        Cldr.FrMC ->
            Translations.FrMC

        Cldr.FrMF ->
            Translations.FrMF

        Cldr.FrMG ->
            Translations.FrMG

        Cldr.FrML ->
            Translations.FrML

        Cldr.FrMQ ->
            Translations.FrMQ

        Cldr.FrMR ->
            Translations.FrMR

        Cldr.FrMU ->
            Translations.FrMU

        Cldr.FrNC ->
            Translations.FrNC

        Cldr.FrNE ->
            Translations.FrNE

        Cldr.FrPF ->
            Translations.FrPF

        Cldr.FrPM ->
            Translations.FrPM

        Cldr.FrRE ->
            Translations.FrRE

        Cldr.FrRW ->
            Translations.FrRW

        Cldr.FrSC ->
            Translations.FrSC

        Cldr.FrSN ->
            Translations.FrSN

        Cldr.FrSY ->
            Translations.FrSY

        Cldr.FrTD ->
            Translations.FrTD

        Cldr.FrTG ->
            Translations.FrTG

        Cldr.FrTN ->
            Translations.FrTN

        Cldr.FrVU ->
            Translations.FrVU

        Cldr.FrWF ->
            Translations.FrWF

        Cldr.FrYT ->
            Translations.FrYT

        Cldr.Ga ->
            Translations.Ga

        Cldr.GaGB ->
            Translations.GaGB

        Cldr.Gd ->
            Translations.Gd

        Cldr.Gl ->
            Translations.Gl

        Cldr.Gu ->
            Translations.Gu

        Cldr.Ha ->
            Translations.Ha

        Cldr.HaGH ->
            Translations.HaGH

        Cldr.HaNE ->
            Translations.HaNE

        Cldr.He ->
            Translations.He

        Cldr.Hi ->
            Translations.Hi

        Cldr.HiLatn ->
            Translations.HiLatn

        Cldr.Hr ->
            Translations.Hr

        Cldr.HrBA ->
            Translations.HrBA

        Cldr.Hu ->
            Translations.Hu

        Cldr.Hy ->
            Translations.Hy

        Cldr.Id ->
            Translations.Id

        Cldr.Ig ->
            Translations.Ig

        Cldr.Is ->
            Translations.Is

        Cldr.It ->
            Translations.It

        Cldr.ItCH ->
            Translations.ItCH

        Cldr.ItSM ->
            Translations.ItSM

        Cldr.ItVA ->
            Translations.ItVA

        Cldr.Ja ->
            Translations.Ja

        Cldr.Jv ->
            Translations.Jv

        Cldr.Ka ->
            Translations.Ka

        Cldr.Kk ->
            Translations.Kk

        Cldr.Km ->
            Translations.Km

        Cldr.Kn ->
            Translations.Kn

        Cldr.Ko ->
            Translations.Ko

        Cldr.KoKP ->
            Translations.KoKP

        Cldr.Kok ->
            Translations.Kok

        Cldr.Ky ->
            Translations.Ky

        Cldr.Lo ->
            Translations.Lo

        Cldr.Lt ->
            Translations.Lt

        Cldr.Lv ->
            Translations.Lv

        Cldr.Mk ->
            Translations.Mk

        Cldr.Ml ->
            Translations.Ml

        Cldr.Mn ->
            Translations.Mn

        Cldr.Mr ->
            Translations.Mr

        Cldr.Ms ->
            Translations.Ms

        Cldr.MsBN ->
            Translations.MsBN

        Cldr.MsID ->
            Translations.MsID

        Cldr.MsSG ->
            Translations.MsSG

        Cldr.My ->
            Translations.My

        Cldr.Nb ->
            Translations.Nb

        Cldr.NbSJ ->
            Translations.NbSJ

        Cldr.Ne ->
            Translations.Ne

        Cldr.NeIN ->
            Translations.NeIN

        Cldr.Nl ->
            Translations.Nl

        Cldr.NlAW ->
            Translations.NlAW

        Cldr.NlBE ->
            Translations.NlBE

        Cldr.NlBQ ->
            Translations.NlBQ

        Cldr.NlCW ->
            Translations.NlCW

        Cldr.NlSR ->
            Translations.NlSR

        Cldr.NlSX ->
            Translations.NlSX

        Cldr.Nn ->
            Translations.Nn

        Cldr.No ->
            Translations.No

        Cldr.Or ->
            Translations.Or

        Cldr.Pa ->
            Translations.Pa

        Cldr.PaGuru ->
            Translations.PaGuru

        Cldr.Pcm ->
            Translations.Pcm

        Cldr.Pl ->
            Translations.Pl

        Cldr.Ps ->
            Translations.Ps

        Cldr.PsPK ->
            Translations.PsPK

        Cldr.Pt ->
            Translations.Pt

        Cldr.PtAO ->
            Translations.PtAO

        Cldr.PtCH ->
            Translations.PtCH

        Cldr.PtCV ->
            Translations.PtCV

        Cldr.PtGQ ->
            Translations.PtGQ

        Cldr.PtGW ->
            Translations.PtGW

        Cldr.PtLU ->
            Translations.PtLU

        Cldr.PtMO ->
            Translations.PtMO

        Cldr.PtMZ ->
            Translations.PtMZ

        Cldr.PtPT ->
            Translations.PtPT

        Cldr.PtST ->
            Translations.PtST

        Cldr.PtTL ->
            Translations.PtTL

        Cldr.Ro ->
            Translations.Ro

        Cldr.RoMD ->
            Translations.RoMD

        Cldr.Ru ->
            Translations.Ru

        Cldr.RuBY ->
            Translations.RuBY

        Cldr.RuKG ->
            Translations.RuKG

        Cldr.RuKZ ->
            Translations.RuKZ

        Cldr.RuMD ->
            Translations.RuMD

        Cldr.RuUA ->
            Translations.RuUA

        Cldr.Sd ->
            Translations.Sd

        Cldr.SdArab ->
            Translations.SdArab

        Cldr.Si ->
            Translations.Si

        Cldr.Sk ->
            Translations.Sk

        Cldr.Sl ->
            Translations.Sl

        Cldr.So ->
            Translations.So

        Cldr.SoDJ ->
            Translations.SoDJ

        Cldr.SoET ->
            Translations.SoET

        Cldr.SoKE ->
            Translations.SoKE

        Cldr.Sq ->
            Translations.Sq

        Cldr.SqMK ->
            Translations.SqMK

        Cldr.SqXK ->
            Translations.SqXK

        Cldr.Sr ->
            Translations.Sr

        Cldr.SrCyrl ->
            Translations.SrCyrl

        Cldr.SrCyrlBA ->
            Translations.SrCyrlBA

        Cldr.SrCyrlME ->
            Translations.SrCyrlME

        Cldr.SrCyrlXK ->
            Translations.SrCyrlXK

        Cldr.SrLatn ->
            Translations.SrLatn

        Cldr.SrLatnBA ->
            Translations.SrLatnBA

        Cldr.SrLatnME ->
            Translations.SrLatnME

        Cldr.SrLatnXK ->
            Translations.SrLatnXK

        Cldr.Sv ->
            Translations.Sv

        Cldr.SvAX ->
            Translations.SvAX

        Cldr.SvFI ->
            Translations.SvFI

        Cldr.Sw ->
            Translations.Sw

        Cldr.SwCD ->
            Translations.SwCD

        Cldr.SwKE ->
            Translations.SwKE

        Cldr.SwUG ->
            Translations.SwUG

        Cldr.Ta ->
            Translations.Ta

        Cldr.TaLK ->
            Translations.TaLK

        Cldr.TaMY ->
            Translations.TaMY

        Cldr.TaSG ->
            Translations.TaSG

        Cldr.Te ->
            Translations.Te

        Cldr.Th ->
            Translations.Th

        Cldr.Tk ->
            Translations.Tk

        Cldr.Tr ->
            Translations.Tr

        Cldr.TrCY ->
            Translations.TrCY

        Cldr.Uk ->
            Translations.Uk

        Cldr.Ur ->
            Translations.Ur

        Cldr.UrIN ->
            Translations.UrIN

        Cldr.Uz ->
            Translations.Uz

        Cldr.UzLatn ->
            Translations.UzLatn

        Cldr.Vi ->
            Translations.Vi

        Cldr.Yo ->
            Translations.Yo

        Cldr.YoBJ ->
            Translations.YoBJ

        Cldr.Yue ->
            Translations.Yue

        Cldr.YueHans ->
            Translations.YueHans

        Cldr.YueHant ->
            Translations.YueHant

        Cldr.Zh ->
            Translations.Zh

        Cldr.ZhHans ->
            Translations.ZhHans

        Cldr.ZhHansHK ->
            Translations.ZhHansHK

        Cldr.ZhHansMO ->
            Translations.ZhHansMO

        Cldr.ZhHansSG ->
            Translations.ZhHansSG

        Cldr.ZhHant ->
            Translations.ZhHant

        Cldr.ZhHantHK ->
            Translations.ZhHantHK

        Cldr.ZhHantMO ->
            Translations.ZhHantMO

        Cldr.Zu ->
            Translations.Zu


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
