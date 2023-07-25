module Cldr.Gaelic.Scottish exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Scottish Gaelic.

    AD Andorra
    AE Na h-Iomaratan Arabach Aonaichte
    AF Afghanastàn
    AG Aintìoga is Barbuda
    AI Anguillia
    AL Albàinia
    AM Airmeinea
    AO Angòla
    AQ An Antartaig
    AR An Argantain
    AS Samotha na h-Aimeireaga
    AT An Ostair
    AU Astràilia
    AW Arùba
    AX Na h-Eileanan Åland
    AZ Asarbaideàn
    BA Bosna is Hearsagobhana
    BB Barbados
    BD Bangladais
    BE A’ Bheilg
    BF Buirciona Faso
    BG A’ Bhulgair
    BH Bachrain
    BI Burundaidh
    BJ Beinin
    BL Saint Barthélemy
    BM Bearmùda
    BN Brùnaigh
    BO Boilibhia
    BQ Na Tìrean Ìsle Caraibeach
    BR Braisil
    BS Na h-Eileanan Bhathama
    BT Butàn
    BV Eilean Bouvet
    BW Botsuana
    BY A’ Bhealaruis
    BZ A’ Bheilìs
    CA Canada
    CC Na h-Eileanan Chocos (Keeling)
    CD Congo - Kinshasa
    CF Poblachd Meadhan Afraga
    CG A’ Chongo - Brazzaville
    CH An Eilbheis
    CI Côte d’Ivoire
    CK Eileanan Cook
    CL An t-Sile
    CM Camarun
    CN An t-Sìn
    CO Coloimbia
    CR Costa Rìcea
    CU Cùba
    CV An Ceap Uaine
    CW Curaçao
    CX Eilean na Nollaig
    CY Cìopras
    CZ An t-Seic
    DE A’ Ghearmailt
    DJ Diobùtaidh
    DK An Danmhairg
    DM Doiminicea
    DO A’ Phoblachd Dhoiminiceach
    DZ Aildiria
    EC Eacuador
    EE An Eastoin
    EG An Èiphit
    EH Sathara an Iar
    ER Eartra
    ES An Spàinnt
    ET An Itiop
    FI An Fhionnlann
    FJ Fìdi
    FK Na h-Eileanan Fàclannach
    FM Na Meanbh-eileanan
    FO Na h-Eileanan Fàro
    FR An Fhraing
    GA Gabon
    GB An Rìoghachd Aonaichte
    GD Greanàda
    GE A’ Chairtbheil
    GF Guidheàna na Frainge
    GG Geàrnsaidh
    GH Gàna
    GI Diobraltar
    GL A’ Ghraonlann
    GM A’ Ghaimbia
    GN Gini
    GP Guadalup
    GQ Gini Mheadhan-Chriosach
    GR A’ Ghreug
    GS Seòirsea a Deas is na h-Eileanan Sandwich a Deas
    GT Guatamala
    GU Guam
    GW Gini-Bioso
    GY Guidheàna
    HK Hong Kong SAR na Sìne
    HM Eilean Heard is MhicDhòmhnaill
    HN Hondùras
    HR A’ Chròthais
    HT Haidhti
    HU An Ungair
    ID Na h-Innd-innse
    IE Èirinn
    IL Iosrael
    IM Eilean Mhanainn
    IN Na h-Innseachan
    IO Ranntair Breatannach Cuan nan Innseachan
    IQ Ioràc
    IR Ioràn
    IS Innis Tìle
    IT An Eadailt
    JE Deàrsaidh
    JM Diameuga
    JO Iòrdan
    JP An t-Seapan
    KE Ceinia
    KG Cìorgastan
    KH Cambuidea
    KI Ciribeas
    KM Comoros
    KN Naomh Crìstean is Nibheis
    KP Coirèa a Tuath
    KR Coirèa
    KW Cuibhèit
    KY Na h-Eileanan Caimean
    KZ Casachstàn
    LA Làthos
    LB Leabanon
    LC Naomh Lùisea
    LI Lichtenstein
    LK Sri Lanca
    LR Libèir
    LS Leasoto
    LT An Liotuain
    LU Lugsamburg
    LV An Laitbhe
    LY Libia
    MA Moroco
    MC Monaco
    MD A’ Mholdobha
    ME Am Monadh Neagrach
    MF Naomh Màrtainn
    MG Madagasgar
    MH Eileanan Mharshall
    MK A’ Mhasadon a Tuath
    ML Màili
    MM Miànmar
    MN Dùthaich nam Mongol
    MO Macàthu SAR na Sìne
    MP Na h-Eileanan Mairianach a Tuath
    MQ Mairtinic
    MR Moratàinea
    MS Montsarat
    MT Malta
    MU Na h-Eileanan Mhoiriseas
    MV Na h-Eileanan Mhaladaibh
    MW Malabhaidh
    MX Meagsago
    MY Malaidhsea
    MZ Mòsaimbic
    NA An Namaib
    NC Cailleann Nuadh
    NE Nìgeir
    NF Eilean Norfolk
    NG Nigèiria
    NI Niocaragua
    NL Na Tìrean Ìsle
    NO Nirribhidh
    NP Neapàl
    NR Nabhru
    NU Niue
    NZ Sealainn Nuadh
    OM Omàn
    PA Panama
    PE Pearù
    PF Poilinèis na Frainge
    PG Gini Nuadh Phaputhach
    PH Na h-Eileanan Filipineach
    PK Pagastàn
    PL A’ Phòlainn
    PM Saint Pierre agus Miquelon
    PN Eileanan Pheit a’ Chàirn
    PR Porto Rìceo
    PS Ùghdarras nam Palastaineach
    PT A’ Phortagail
    PW Palabh
    PY Paraguaidh
    QA Catar
    RE Réunion
    RO Romàinia
    RS An t-Sèirb
    RU An Ruis
    RW Rubhanda
    SA Aràibia nan Sabhd
    SB Eileanan Sholaimh
    SC Na h-Eileanan Sheiseall
    SD Sudàn
    SE An t-Suain
    SG Singeapòr
    SH Eilean Naomh Eilidh
    SI An t-Slòbhain
    SJ Svalbard is Jan Mayen
    SK An t-Slòbhac
    SL Siarra Leòmhann
    SM San Marino
    SN Seanagal
    SO Somàilia
    SR Suranam
    SS Sudàn a Deas
    ST São Tomé agus Príncipe
    SV An Salbhador
    SX Sint Maarten
    SY Siridhea
    SZ eSwatini
    TC Na h-Eileanan Turcach is Caiceo
    TD An t-Seàd
    TF Ranntairean a Deas na Frainge
    TG Togo
    TH Dùthaich nan Tàidh
    TJ Taidigeastàn
    TK Tokelau
    TL Timor-Leste
    TM Turcmanastàn
    TN Tuinisea
    TO Tonga
    TR An Tuirc
    TT Trianaid agus Tobago
    TV Tubhalu
    TW Taidh-Bhàn
    TZ An Tansan
    UA An Ucràin
    UG Uganda
    UM Meanbh-Eileanan Iomallach nan SA
    US Na Stàitean Aonaichte
    UY Uruguaidh
    UZ Usbagastàn
    VA Cathair na Bhatacain
    VC Naomh Bhionsant agus Eileanan Greanadach
    VE A’ Bheiniseala
    VG Eileanan Breatannach na Maighdinn
    VI Eileanan na Maighdinn aig na SA
    VN Bhiet-Nam
    VU Vanuatu
    WF Uallas agus Futuna
    WS Samotha
    XK A’ Chosobho
    YE An Eaman
    YT Mayotte
    ZA Afraga a Deas
    ZM Sàimbia
    ZW An t-Sìombab
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Na h-Iomaratan Arabach Aonaichte"

        Cldr.AF ->
            "Afghanastàn"

        Cldr.AG ->
            "Aintìoga is Barbuda"

        Cldr.AI ->
            "Anguillia"

        Cldr.AL ->
            "Albàinia"

        Cldr.AM ->
            "Airmeinea"

        Cldr.AO ->
            "Angòla"

        Cldr.AQ ->
            "An Antartaig"

        Cldr.AR ->
            "An Argantain"

        Cldr.AS ->
            "Samotha na h-Aimeireaga"

        Cldr.AT ->
            "An Ostair"

        Cldr.AU ->
            "Astràilia"

        Cldr.AW ->
            "Arùba"

        Cldr.AX ->
            "Na h-Eileanan Åland"

        Cldr.AZ ->
            "Asarbaideàn"

        Cldr.BA ->
            "Bosna is Hearsagobhana"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladais"

        Cldr.BE ->
            "A’ Bheilg"

        Cldr.BF ->
            "Buirciona Faso"

        Cldr.BG ->
            "A’ Bhulgair"

        Cldr.BH ->
            "Bachrain"

        Cldr.BI ->
            "Burundaidh"

        Cldr.BJ ->
            "Beinin"

        Cldr.BL ->
            "Saint Barthélemy"

        Cldr.BM ->
            "Bearmùda"

        Cldr.BN ->
            "Brùnaigh"

        Cldr.BO ->
            "Boilibhia"

        Cldr.BQ ->
            "Na Tìrean Ìsle Caraibeach"

        Cldr.BR ->
            "Braisil"

        Cldr.BS ->
            "Na h-Eileanan Bhathama"

        Cldr.BT ->
            "Butàn"

        Cldr.BV ->
            "Eilean Bouvet"

        Cldr.BW ->
            "Botsuana"

        Cldr.BY ->
            "A’ Bhealaruis"

        Cldr.BZ ->
            "A’ Bheilìs"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Na h-Eileanan Chocos (Keeling)"

        Cldr.CD ->
            "Congo - Kinshasa"

        Cldr.CF ->
            "Poblachd Meadhan Afraga"

        Cldr.CG ->
            "A’ Chongo - Brazzaville"

        Cldr.CH ->
            "An Eilbheis"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Eileanan Cook"

        Cldr.CL ->
            "An t-Sile"

        Cldr.CM ->
            "Camarun"

        Cldr.CN ->
            "An t-Sìn"

        Cldr.CO ->
            "Coloimbia"

        Cldr.CR ->
            "Costa Rìcea"

        Cldr.CU ->
            "Cùba"

        Cldr.CV ->
            "An Ceap Uaine"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Eilean na Nollaig"

        Cldr.CY ->
            "Cìopras"

        Cldr.CZ ->
            "An t-Seic"

        Cldr.DE ->
            "A’ Ghearmailt"

        Cldr.DJ ->
            "Diobùtaidh"

        Cldr.DK ->
            "An Danmhairg"

        Cldr.DM ->
            "Doiminicea"

        Cldr.DO ->
            "A’ Phoblachd Dhoiminiceach"

        Cldr.DZ ->
            "Aildiria"

        Cldr.EC ->
            "Eacuador"

        Cldr.EE ->
            "An Eastoin"

        Cldr.EG ->
            "An Èiphit"

        Cldr.EH ->
            "Sathara an Iar"

        Cldr.ER ->
            "Eartra"

        Cldr.ES ->
            "An Spàinnt"

        Cldr.ET ->
            "An Itiop"

        Cldr.FI ->
            "An Fhionnlann"

        Cldr.FJ ->
            "Fìdi"

        Cldr.FK ->
            "Na h-Eileanan Fàclannach"

        Cldr.FM ->
            "Na Meanbh-eileanan"

        Cldr.FO ->
            "Na h-Eileanan Fàro"

        Cldr.FR ->
            "An Fhraing"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "An Rìoghachd Aonaichte"

        Cldr.GD ->
            "Greanàda"

        Cldr.GE ->
            "A’ Chairtbheil"

        Cldr.GF ->
            "Guidheàna na Frainge"

        Cldr.GG ->
            "Geàrnsaidh"

        Cldr.GH ->
            "Gàna"

        Cldr.GI ->
            "Diobraltar"

        Cldr.GL ->
            "A’ Ghraonlann"

        Cldr.GM ->
            "A’ Ghaimbia"

        Cldr.GN ->
            "Gini"

        Cldr.GP ->
            "Guadalup"

        Cldr.GQ ->
            "Gini Mheadhan-Chriosach"

        Cldr.GR ->
            "A’ Ghreug"

        Cldr.GS ->
            "Seòirsea a Deas is na h-Eileanan Sandwich a Deas"

        Cldr.GT_ ->
            "Guatamala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gini-Bioso"

        Cldr.GY ->
            "Guidheàna"

        Cldr.HK ->
            "Hong Kong SAR na Sìne"

        Cldr.HM ->
            "Eilean Heard is MhicDhòmhnaill"

        Cldr.HN ->
            "Hondùras"

        Cldr.HR ->
            "A’ Chròthais"

        Cldr.HT ->
            "Haidhti"

        Cldr.HU ->
            "An Ungair"

        Cldr.ID ->
            "Na h-Innd-innse"

        Cldr.IE ->
            "Èirinn"

        Cldr.IL ->
            "Iosrael"

        Cldr.IM ->
            "Eilean Mhanainn"

        Cldr.IN ->
            "Na h-Innseachan"

        Cldr.IO ->
            "Ranntair Breatannach Cuan nan Innseachan"

        Cldr.IQ ->
            "Ioràc"

        Cldr.IR ->
            "Ioràn"

        Cldr.IS ->
            "Innis Tìle"

        Cldr.IT ->
            "An Eadailt"

        Cldr.JE ->
            "Deàrsaidh"

        Cldr.JM ->
            "Diameuga"

        Cldr.JO ->
            "Iòrdan"

        Cldr.JP ->
            "An t-Seapan"

        Cldr.KE ->
            "Ceinia"

        Cldr.KG ->
            "Cìorgastan"

        Cldr.KH ->
            "Cambuidea"

        Cldr.KI ->
            "Ciribeas"

        Cldr.KM ->
            "Comoros"

        Cldr.KN ->
            "Naomh Crìstean is Nibheis"

        Cldr.KP ->
            "Coirèa a Tuath"

        Cldr.KR ->
            "Coirèa"

        Cldr.KW ->
            "Cuibhèit"

        Cldr.KY ->
            "Na h-Eileanan Caimean"

        Cldr.KZ ->
            "Casachstàn"

        Cldr.LA ->
            "Làthos"

        Cldr.LB ->
            "Leabanon"

        Cldr.LC ->
            "Naomh Lùisea"

        Cldr.LI ->
            "Lichtenstein"

        Cldr.LK ->
            "Sri Lanca"

        Cldr.LR ->
            "Libèir"

        Cldr.LS ->
            "Leasoto"

        Cldr.LT_ ->
            "An Liotuain"

        Cldr.LU ->
            "Lugsamburg"

        Cldr.LV ->
            "An Laitbhe"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Moroco"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "A’ Mholdobha"

        Cldr.ME ->
            "Am Monadh Neagrach"

        Cldr.MF ->
            "Naomh Màrtainn"

        Cldr.MG ->
            "Madagasgar"

        Cldr.MH ->
            "Eileanan Mharshall"

        Cldr.MK ->
            "A’ Mhasadon a Tuath"

        Cldr.ML ->
            "Màili"

        Cldr.MM ->
            "Miànmar"

        Cldr.MN ->
            "Dùthaich nam Mongol"

        Cldr.MO ->
            "Macàthu SAR na Sìne"

        Cldr.MP ->
            "Na h-Eileanan Mairianach a Tuath"

        Cldr.MQ ->
            "Mairtinic"

        Cldr.MR ->
            "Moratàinea"

        Cldr.MS ->
            "Montsarat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Na h-Eileanan Mhoiriseas"

        Cldr.MV ->
            "Na h-Eileanan Mhaladaibh"

        Cldr.MW ->
            "Malabhaidh"

        Cldr.MX ->
            "Meagsago"

        Cldr.MY ->
            "Malaidhsea"

        Cldr.MZ ->
            "Mòsaimbic"

        Cldr.NA ->
            "An Namaib"

        Cldr.NC ->
            "Cailleann Nuadh"

        Cldr.NE ->
            "Nìgeir"

        Cldr.NF ->
            "Eilean Norfolk"

        Cldr.NG ->
            "Nigèiria"

        Cldr.NI ->
            "Niocaragua"

        Cldr.NL ->
            "Na Tìrean Ìsle"

        Cldr.NO ->
            "Nirribhidh"

        Cldr.NP ->
            "Neapàl"

        Cldr.NR ->
            "Nabhru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Sealainn Nuadh"

        Cldr.OM ->
            "Omàn"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Pearù"

        Cldr.PF ->
            "Poilinèis na Frainge"

        Cldr.PG ->
            "Gini Nuadh Phaputhach"

        Cldr.PH ->
            "Na h-Eileanan Filipineach"

        Cldr.PK ->
            "Pagastàn"

        Cldr.PL ->
            "A’ Phòlainn"

        Cldr.PM ->
            "Saint Pierre agus Miquelon"

        Cldr.PN ->
            "Eileanan Pheit a’ Chàirn"

        Cldr.PR ->
            "Porto Rìceo"

        Cldr.PS ->
            "Ùghdarras nam Palastaineach"

        Cldr.PT ->
            "A’ Phortagail"

        Cldr.PW ->
            "Palabh"

        Cldr.PY ->
            "Paraguaidh"

        Cldr.QA ->
            "Catar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Romàinia"

        Cldr.RS ->
            "An t-Sèirb"

        Cldr.RU ->
            "An Ruis"

        Cldr.RW ->
            "Rubhanda"

        Cldr.SA ->
            "Aràibia nan Sabhd"

        Cldr.SB ->
            "Eileanan Sholaimh"

        Cldr.SC ->
            "Na h-Eileanan Sheiseall"

        Cldr.SD ->
            "Sudàn"

        Cldr.SE ->
            "An t-Suain"

        Cldr.SG ->
            "Singeapòr"

        Cldr.SH ->
            "Eilean Naomh Eilidh"

        Cldr.SI ->
            "An t-Slòbhain"

        Cldr.SJ ->
            "Svalbard is Jan Mayen"

        Cldr.SK ->
            "An t-Slòbhac"

        Cldr.SL ->
            "Siarra Leòmhann"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Seanagal"

        Cldr.SO ->
            "Somàilia"

        Cldr.SR ->
            "Suranam"

        Cldr.SS ->
            "Sudàn a Deas"

        Cldr.ST ->
            "São Tomé agus Príncipe"

        Cldr.SV ->
            "An Salbhador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Siridhea"

        Cldr.SZ ->
            "eSwatini"

        Cldr.TC ->
            "Na h-Eileanan Turcach is Caiceo"

        Cldr.TD ->
            "An t-Seàd"

        Cldr.TF ->
            "Ranntairean a Deas na Frainge"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Dùthaich nan Tàidh"

        Cldr.TJ ->
            "Taidigeastàn"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Turcmanastàn"

        Cldr.TN ->
            "Tuinisea"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "An Tuirc"

        Cldr.TT ->
            "Trianaid agus Tobago"

        Cldr.TV ->
            "Tubhalu"

        Cldr.TW ->
            "Taidh-Bhàn"

        Cldr.TZ ->
            "An Tansan"

        Cldr.UA ->
            "An Ucràin"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Meanbh-Eileanan Iomallach nan SA"

        Cldr.US ->
            "Na Stàitean Aonaichte"

        Cldr.UY ->
            "Uruguaidh"

        Cldr.UZ ->
            "Usbagastàn"

        Cldr.VA ->
            "Cathair na Bhatacain"

        Cldr.VC ->
            "Naomh Bhionsant agus Eileanan Greanadach"

        Cldr.VE ->
            "A’ Bheiniseala"

        Cldr.VG ->
            "Eileanan Breatannach na Maighdinn"

        Cldr.VI ->
            "Eileanan na Maighdinn aig na SA"

        Cldr.VN ->
            "Bhiet-Nam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Uallas agus Futuna"

        Cldr.WS ->
            "Samotha"

        Cldr.XK ->
            "A’ Chosobho"

        Cldr.YE ->
            "An Eaman"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Afraga a Deas"

        Cldr.ZM ->
            "Sàimbia"

        Cldr.ZW ->
            "An t-Sìombab"