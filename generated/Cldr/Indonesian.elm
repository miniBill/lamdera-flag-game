module Cldr.Indonesian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Indonesian.

    AD Andorra
    AE Uni Emirat Arab
    AF Afganistan
    AG Antigua dan Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antarktika
    AR Argentina
    AS Samoa Amerika
    AT Austria
    AU Australia
    AW Aruba
    AX Kepulauan Aland
    AZ Azerbaijan
    BA Bosnia dan Herzegovina
    BB Barbados
    BD Bangladesh
    BE Belgia
    BF Burkina Faso
    BG Bulgaria
    BH Bahrain
    BI Burundi
    BJ Benin
    BL Saint Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Belanda Karibia
    BR Brasil
    BS Bahama
    BT Bhutan
    BV Pulau Bouvet
    BW Botswana
    BY Belarus
    BZ Belize
    CA Kanada
    CC Kepulauan Cocos (Keeling)
    CD Kongo - Kinshasa
    CF Republik Afrika Tengah
    CG Kongo - Brazzaville
    CH Swiss
    CI Côte d’Ivoire
    CK Kepulauan Cook
    CL Cile
    CM Kamerun
    CN Tiongkok
    CO Kolombia
    CR Kosta Rika
    CU Kuba
    CV Tanjung Verde
    CW Curaçao
    CX Pulau Natal
    CY Siprus
    CZ Ceko
    DE Jerman
    DJ Jibuti
    DK Denmark
    DM Dominika
    DO Republik Dominika
    DZ Aljazair
    EC Ekuador
    EE Estonia
    EG Mesir
    EH Sahara Barat
    ER Eritrea
    ES Spanyol
    ET Etiopia
    FI Finlandia
    FJ Fiji
    FK Kepulauan Falkland
    FM Mikronesia
    FO Kepulauan Faroe
    FR Prancis
    GA Gabon
    GB Inggris Raya
    GD Grenada
    GE Georgia
    GF Guyana Prancis
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Greenland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Guinea Ekuatorial
    GR Yunani
    GS Georgia Selatan & Kep. Sandwich Selatan
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hong Kong DAK Tiongkok
    HM Pulau Heard dan Kepulauan McDonald
    HN Honduras
    HR Kroasia
    HT Haiti
    HU Hungaria
    ID Indonesia
    IE Irlandia
    IL Israel
    IM Pulau Man
    IN India
    IO Wilayah Inggris di Samudra Hindia
    IQ Irak
    IR Iran
    IS Islandia
    IT Italia
    JE Jersey
    JM Jamaika
    JO Yordania
    JP Jepang
    KE Kenya
    KG Kirgizstan
    KH Kamboja
    KI Kiribati
    KM Komoro
    KN Saint Kitts dan Nevis
    KP Korea Utara
    KR Korea Selatan
    KW Kuwait
    KY Kepulauan Cayman
    KZ Kazakhstan
    LA Laos
    LB Lebanon
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lituania
    LU Luksemburg
    LV Latvia
    LY Libya
    MA Maroko
    MC Monako
    MD Moldova
    ME Montenegro
    MF Saint Martin
    MG Madagaskar
    MH Kepulauan Marshall
    MK Makedonia Utara
    ML Mali
    MM Myanmar (Burma)
    MN Mongolia
    MO Makau DAK Tiongkok
    MP Kepulauan Mariana Utara
    MQ Martinik
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maladewa
    MW Malawi
    MX Meksiko
    MY Malaysia
    MZ Mozambik
    NA Namibia
    NC Kaledonia Baru
    NE Niger
    NF Kepulauan Norfolk
    NG Nigeria
    NI Nikaragua
    NL Belanda
    NO Norwegia
    NP Nepal
    NR Nauru
    NU Niue
    NZ Selandia Baru
    OM Oman
    PA Panama
    PE Peru
    PF Polinesia Prancis
    PG Papua Nugini
    PH Filipina
    PK Pakistan
    PL Polandia
    PM Saint Pierre dan Miquelon
    PN Kepulauan Pitcairn
    PR Puerto Riko
    PS Wilayah Palestina
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Rumania
    RS Serbia
    RU Rusia
    RW Rwanda
    SA Arab Saudi
    SB Kepulauan Solomon
    SC Seychelles
    SD Sudan
    SE Swedia
    SG Singapura
    SH Saint Helena
    SI Slovenia
    SJ Kepulauan Svalbard dan Jan Mayen
    SK Slovakia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Suriname
    SS Sudan Selatan
    ST Sao Tome dan Principe
    SV El Salvador
    SX Sint Maarten
    SY Suriah
    SZ eSwatini
    TC Kepulauan Turks dan Caicos
    TD Chad
    TF Wilayah Selatan Prancis
    TG Togo
    TH Thailand
    TJ Tajikistan
    TK Tokelau
    TL Timor Leste
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Turki
    TT Trinidad dan Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraina
    UG Uganda
    UM Kepulauan Terluar AS
    US Amerika Serikat
    UY Uruguay
    UZ Uzbekistan
    VA Vatikan
    VC Saint Vincent dan Grenadine
    VE Venezuela
    VG Kepulauan Virgin Britania Raya
    VI Kepulauan Virgin Amerika Serikat
    VN Vietnam
    VU Vanuatu
    WF Kepulauan Wallis dan Futuna
    WS Samoa
    XK Kosovo
    YE Yaman
    YT Mayotte
    ZA Afrika Selatan
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Uni Emirat Arab"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua dan Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktika"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa Amerika"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Kepulauan Aland"

        Cldr.AZ ->
            "Azerbaijan"

        Cldr.BA ->
            "Bosnia dan Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgia"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaria"

        Cldr.BH ->
            "Bahrain"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Saint Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Belanda Karibia"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Bahama"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Pulau Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kepulauan Cocos (Keeling)"

        Cldr.CD ->
            "Kongo - Kinshasa"

        Cldr.CF ->
            "Republik Afrika Tengah"

        Cldr.CG ->
            "Kongo - Brazzaville"

        Cldr.CH ->
            "Swiss"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Kepulauan Cook"

        Cldr.CL ->
            "Cile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Tiongkok"

        Cldr.CO ->
            "Kolombia"

        Cldr.CR ->
            "Kosta Rika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Tanjung Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Pulau Natal"

        Cldr.CY ->
            "Siprus"

        Cldr.CZ ->
            "Ceko"

        Cldr.DE ->
            "Jerman"

        Cldr.DJ ->
            "Jibuti"

        Cldr.DK ->
            "Denmark"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Republik Dominika"

        Cldr.DZ ->
            "Aljazair"

        Cldr.EC ->
            "Ekuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Mesir"

        Cldr.EH ->
            "Sahara Barat"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spanyol"

        Cldr.ET ->
            "Etiopia"

        Cldr.FI ->
            "Finlandia"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Kepulauan Falkland"

        Cldr.FM ->
            "Mikronesia"

        Cldr.FO ->
            "Kepulauan Faroe"

        Cldr.FR ->
            "Prancis"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Inggris Raya"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guyana Prancis"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Greenland"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Guinea Ekuatorial"

        Cldr.GR ->
            "Yunani"

        Cldr.GS ->
            "Georgia Selatan & Kep. Sandwich Selatan"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong DAK Tiongkok"

        Cldr.HM ->
            "Pulau Heard dan Kepulauan McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroasia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hungaria"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Irlandia"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Pulau Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Wilayah Inggris di Samudra Hindia"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islandia"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Yordania"

        Cldr.JP ->
            "Jepang"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirgizstan"

        Cldr.KH ->
            "Kamboja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komoro"

        Cldr.KN ->
            "Saint Kitts dan Nevis"

        Cldr.KP ->
            "Korea Utara"

        Cldr.KR ->
            "Korea Selatan"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Kepulauan Cayman"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Lebanon"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Lituania"

        Cldr.LU ->
            "Luksemburg"

        Cldr.LV ->
            "Latvia"

        Cldr.LY ->
            "Libya"

        Cldr.MA ->
            "Maroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Kepulauan Marshall"

        Cldr.MK ->
            "Makedonia Utara"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Makau DAK Tiongkok"

        Cldr.MP ->
            "Kepulauan Mariana Utara"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maladewa"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Meksiko"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Kaledonia Baru"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Kepulauan Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Belanda"

        Cldr.NO ->
            "Norwegia"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Selandia Baru"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polinesia Prancis"

        Cldr.PG ->
            "Papua Nugini"

        Cldr.PH ->
            "Filipina"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polandia"

        Cldr.PM ->
            "Saint Pierre dan Miquelon"

        Cldr.PN ->
            "Kepulauan Pitcairn"

        Cldr.PR ->
            "Puerto Riko"

        Cldr.PS ->
            "Wilayah Palestina"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Rumania"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rusia"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Arab Saudi"

        Cldr.SB ->
            "Kepulauan Solomon"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Swedia"

        Cldr.SG ->
            "Singapura"

        Cldr.SH ->
            "Saint Helena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Kepulauan Svalbard dan Jan Mayen"

        Cldr.SK ->
            "Slovakia"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Sudan Selatan"

        Cldr.ST ->
            "Sao Tome dan Principe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Suriah"

        Cldr.SZ ->
            "eSwatini"

        Cldr.TC ->
            "Kepulauan Turks dan Caicos"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Wilayah Selatan Prancis"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailand"

        Cldr.TJ ->
            "Tajikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor Leste"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turki"

        Cldr.TT ->
            "Trinidad dan Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Kepulauan Terluar AS"

        Cldr.US ->
            "Amerika Serikat"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikan"

        Cldr.VC ->
            "Saint Vincent dan Grenadine"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Kepulauan Virgin Britania Raya"

        Cldr.VI ->
            "Kepulauan Virgin Amerika Serikat"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Kepulauan Wallis dan Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yaman"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Afrika Selatan"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"