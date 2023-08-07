module Cldr.Hungarian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Hungarian.

    AD Andorra
    AE Egyesült Arab Emírségek
    AF Afganisztán
    AG Antigua és Barbuda
    AI Anguilla
    AL Albánia
    AM Örményország
    AO Angola
    AQ Antarktisz
    AR Argentína
    AS Amerikai Szamoa
    AT Ausztria
    AU Ausztrália
    AW Aruba
    AX Åland-szigetek
    AZ Azerbajdzsán
    BA Bosznia-Hercegovina
    BB Barbados
    BD Banglades
    BE Belgium
    BF Burkina Faso
    BG Bulgária
    BH Bahrein
    BI Burundi
    BJ Benin
    BL Saint-Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolívia
    BQ Holland Karib-térség
    BR Brazília
    BS Bahama-szigetek
    BT Bhután
    BV Bouvet-sziget
    BW Botswana
    BY Belarusz
    BZ Belize
    CA Kanada
    CC Kókusz (Keeling)-szigetek
    CD Kongó (KDK)
    CF Közép-afrikai Köztársaság
    CG Kongó (Köztársaság)
    CH Svájc
    CI Elefántcsontpart
    CK Cook-szigetek
    CL Chile
    CM Kamerun
    CN Kína
    CO Kolumbia
    CR Costa Rica
    CU Kuba
    CV Zöld-foki Köztársaság
    CW Curaçao
    CX Karácsony-sziget
    CY Ciprus
    CZ Cseh Köztársaság
    DE Németország
    DJ Dzsibuti
    DK Dánia
    DM Dominika
    DO Dominikai Köztársaság
    DZ Algéria
    EC Ecuador
    EE Észtország
    EG Egyiptom
    EH Nyugat-Szahara
    ER Eritrea
    ES Spanyolország
    ET Etiópia
    FI Finnország
    FJ Fidzsi
    FK Falkland-szigetek
    FM Mikronézia
    FO Feröer szigetek
    FR Franciaország
    GA Gabon
    GB Egyesült Királyság
    GD Grenada
    GE Grúzia
    GF Francia Guyana
    GG Guernsey
    GH Ghána
    GI Gibraltár
    GL Grönland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Egyenlítői-Guinea
    GR Görögország
    GS Déli-Georgia és Déli-Sandwich-szigetek
    GT Guatemala
    GU Guam
    GW Bissau-Guinea
    GY Guyana
    HK Hongkong
    HM Heard-sziget és McDonald-szigetek
    HN Honduras
    HR Horvátország
    HT Haiti
    HU Magyarország
    ID Indonézia
    IE Írország
    IL Izrael
    IM Man-sziget
    IN India
    IO Brit Indiai-óceáni Terület
    IQ Irak
    IR Irán
    IS Izland
    IT Olaszország
    JE Jersey
    JM Jamaica
    JO Jordánia
    JP Japán
    KE Kenya
    KG Kirgizisztán
    KH Kambodzsa
    KI Kiribati
    KM Comore-szigetek
    KN Saint Kitts és Nevis
    KP Észak-Korea
    KR Dél-Korea
    KW Kuvait
    KY Kajmán-szigetek
    KZ Kazahsztán
    LA Laosz
    LB Libanon
    LC Saint Lucia
    LI Liechtenstein
    LK Srí Lanka
    LR Libéria
    LS Lesotho
    LT Litvánia
    LU Luxemburg
    LV Lettország
    LY Líbia
    MA Marokkó
    MC Monaco
    MD Moldova
    ME Montenegró
    MF Saint Martin
    MG Madagaszkár
    MH Marshall-szigetek
    MK Észak-Macedónia
    ML Mali
    MM Mianmar
    MN Mongólia
    MO Makaó
    MP Északi Mariana-szigetek
    MQ Martinique
    MR Mauritánia
    MS Montserrat
    MT Málta
    MU Mauritius
    MV Maldív-szigetek
    MW Malawi
    MX Mexikó
    MY Malajzia
    MZ Mozambik
    NA Namíbia
    NC Új-Kaledónia
    NE Niger
    NF Norfolk-sziget
    NG Nigéria
    NI Nicaragua
    NL Hollandia
    NO Norvégia
    NP Nepál
    NR Nauru
    NU Niue
    NZ Új-Zéland
    OM Omán
    PA Panama
    PE Peru
    PF Francia Polinézia
    PG Pápua Új-Guinea
    PH Fülöp-szigetek
    PK Pakisztán
    PL Lengyelország
    PM Saint-Pierre és Miquelon
    PN Pitcairn-szigetek
    PR Puerto Rico
    PS Palesztina
    PT Portugália
    PW Palau
    PY Paraguay
    QA Katar
    RE Réunion
    RO Románia
    RS Szerbia
    RU Oroszország
    RW Ruanda
    SA Szaúd-Arábia
    SB Salamon-szigetek
    SC Seychelle-szigetek
    SD Szudán
    SE Svédország
    SG Szingapúr
    SH Szent Ilona
    SI Szlovénia
    SJ Svalbard és Jan Mayen
    SK Szlovákia
    SL Sierra Leone
    SM San Marino
    SN Szenegál
    SO Szomália
    SR Suriname
    SS Dél-Szudán
    ST São Tomé és Príncipe
    SV Salvador
    SX Sint Maarten
    SY Szíria
    SZ Szváziföld
    TC Turks- és Caicos-szigetek
    TD Csád
    TF Francia Déli Területek
    TG Togo
    TH Thaiföld
    TJ Tádzsikisztán
    TK Tokelau
    TL Timor-Leste
    TM Türkmenisztán
    TN Tunézia
    TO Tonga
    TR Törökország
    TT Trinidad és Tobago
    TV Tuvalu
    TW Tajvan
    TZ Tanzánia
    UA Ukrajna
    UG Uganda
    UM Az USA lakatlan külbirtokai
    US Egyesült Államok
    UY Uruguay
    UZ Üzbegisztán
    VA Vatikán
    VC Saint Vincent és a Grenadine-szigetek
    VE Venezuela
    VG Brit Virgin-szigetek
    VI Amerikai Virgin-szigetek
    VN Vietnám
    VU Vanuatu
    WF Wallis és Futuna
    WS Szamoa
    XK Koszovó
    YE Jemen
    YT Mayotte
    ZA Dél-afrikai Köztársaság
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Egyesült Arab Emírségek"

        Cldr.AF ->
            "Afganisztán"

        Cldr.AG ->
            "Antigua és Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albánia"

        Cldr.AM ->
            "Örményország"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktisz"

        Cldr.AR ->
            "Argentína"

        Cldr.AS ->
            "Amerikai Szamoa"

        Cldr.AT ->
            "Ausztria"

        Cldr.AU ->
            "Ausztrália"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Åland-szigetek"

        Cldr.AZ ->
            "Azerbajdzsán"

        Cldr.BA ->
            "Bosznia-Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Banglades"

        Cldr.BE ->
            "Belgium"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgária"

        Cldr.BH ->
            "Bahrein"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Saint-Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolívia"

        Cldr.BQ ->
            "Holland Karib-térség"

        Cldr.BR ->
            "Brazília"

        Cldr.BS ->
            "Bahama-szigetek"

        Cldr.BT ->
            "Bhután"

        Cldr.BV ->
            "Bouvet-sziget"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarusz"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kókusz (Keeling)-szigetek"

        Cldr.CD ->
            "Kongó (KDK)"

        Cldr.CF ->
            "Közép-afrikai Köztársaság"

        Cldr.CG ->
            "Kongó (Köztársaság)"

        Cldr.CH ->
            "Svájc"

        Cldr.CI ->
            "Elefántcsontpart"

        Cldr.CK ->
            "Cook-szigetek"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Kína"

        Cldr.CO ->
            "Kolumbia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Zöld-foki Köztársaság"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Karácsony-sziget"

        Cldr.CY ->
            "Ciprus"

        Cldr.CZ ->
            "Cseh Köztársaság"

        Cldr.DE ->
            "Németország"

        Cldr.DJ ->
            "Dzsibuti"

        Cldr.DK ->
            "Dánia"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikai Köztársaság"

        Cldr.DZ ->
            "Algéria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Észtország"

        Cldr.EG ->
            "Egyiptom"

        Cldr.EH ->
            "Nyugat-Szahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spanyolország"

        Cldr.ET ->
            "Etiópia"

        Cldr.FI ->
            "Finnország"

        Cldr.FJ ->
            "Fidzsi"

        Cldr.FK ->
            "Falkland-szigetek"

        Cldr.FM ->
            "Mikronézia"

        Cldr.FO ->
            "Feröer szigetek"

        Cldr.FR ->
            "Franciaország"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Egyesült Királyság"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Grúzia"

        Cldr.GF ->
            "Francia Guyana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghána"

        Cldr.GI ->
            "Gibraltár"

        Cldr.GL ->
            "Grönland"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Egyenlítői-Guinea"

        Cldr.GR ->
            "Görögország"

        Cldr.GS ->
            "Déli-Georgia és Déli-Sandwich-szigetek"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Bissau-Guinea"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkong"

        Cldr.HM ->
            "Heard-sziget és McDonald-szigetek"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Horvátország"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Magyarország"

        Cldr.ID ->
            "Indonézia"

        Cldr.IE ->
            "Írország"

        Cldr.IL ->
            "Izrael"

        Cldr.IM ->
            "Man-sziget"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Brit Indiai-óceáni Terület"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Irán"

        Cldr.IS ->
            "Izland"

        Cldr.IT ->
            "Olaszország"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordánia"

        Cldr.JP ->
            "Japán"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirgizisztán"

        Cldr.KH ->
            "Kambodzsa"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comore-szigetek"

        Cldr.KN ->
            "Saint Kitts és Nevis"

        Cldr.KP ->
            "Észak-Korea"

        Cldr.KR ->
            "Dél-Korea"

        Cldr.KW ->
            "Kuvait"

        Cldr.KY ->
            "Kajmán-szigetek"

        Cldr.KZ ->
            "Kazahsztán"

        Cldr.LA ->
            "Laosz"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Srí Lanka"

        Cldr.LR ->
            "Libéria"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Litvánia"

        Cldr.LU ->
            "Luxemburg"

        Cldr.LV ->
            "Lettország"

        Cldr.LY ->
            "Líbia"

        Cldr.MA ->
            "Marokkó"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Montenegró"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagaszkár"

        Cldr.MH ->
            "Marshall-szigetek"

        Cldr.MK ->
            "Észak-Macedónia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mianmar"

        Cldr.MN ->
            "Mongólia"

        Cldr.MO ->
            "Makaó"

        Cldr.MP ->
            "Északi Mariana-szigetek"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauritánia"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Málta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldív-szigetek"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexikó"

        Cldr.MY ->
            "Malajzia"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namíbia"

        Cldr.NC ->
            "Új-Kaledónia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk-sziget"

        Cldr.NG ->
            "Nigéria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Hollandia"

        Cldr.NO ->
            "Norvégia"

        Cldr.NP ->
            "Nepál"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Új-Zéland"

        Cldr.OM ->
            "Omán"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Francia Polinézia"

        Cldr.PG ->
            "Pápua Új-Guinea"

        Cldr.PH ->
            "Fülöp-szigetek"

        Cldr.PK ->
            "Pakisztán"

        Cldr.PL ->
            "Lengyelország"

        Cldr.PM ->
            "Saint-Pierre és Miquelon"

        Cldr.PN ->
            "Pitcairn-szigetek"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palesztina"

        Cldr.PT ->
            "Portugália"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Románia"

        Cldr.RS ->
            "Szerbia"

        Cldr.RU ->
            "Oroszország"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Szaúd-Arábia"

        Cldr.SB ->
            "Salamon-szigetek"

        Cldr.SC ->
            "Seychelle-szigetek"

        Cldr.SD ->
            "Szudán"

        Cldr.SE ->
            "Svédország"

        Cldr.SG ->
            "Szingapúr"

        Cldr.SH ->
            "Szent Ilona"

        Cldr.SI ->
            "Szlovénia"

        Cldr.SJ ->
            "Svalbard és Jan Mayen"

        Cldr.SK ->
            "Szlovákia"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Szenegál"

        Cldr.SO ->
            "Szomália"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Dél-Szudán"

        Cldr.ST ->
            "São Tomé és Príncipe"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Szíria"

        Cldr.SZ ->
            "Szváziföld"

        Cldr.TC ->
            "Turks- és Caicos-szigetek"

        Cldr.TD ->
            "Csád"

        Cldr.TF ->
            "Francia Déli Területek"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thaiföld"

        Cldr.TJ ->
            "Tádzsikisztán"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Türkmenisztán"

        Cldr.TN ->
            "Tunézia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Törökország"

        Cldr.TT ->
            "Trinidad és Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Tajvan"

        Cldr.TZ ->
            "Tanzánia"

        Cldr.UA ->
            "Ukrajna"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Az USA lakatlan külbirtokai"

        Cldr.US ->
            "Egyesült Államok"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Üzbegisztán"

        Cldr.VA ->
            "Vatikán"

        Cldr.VC ->
            "Saint Vincent és a Grenadine-szigetek"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Brit Virgin-szigetek"

        Cldr.VI ->
            "Amerikai Virgin-szigetek"

        Cldr.VN ->
            "Vietnám"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis és Futuna"

        Cldr.WS ->
            "Szamoa"

        Cldr.XK ->
            "Koszovó"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Dél-afrikai Köztársaság"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"