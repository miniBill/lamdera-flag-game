module Cldr.Igbo exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Igbo.

    AD Andorra
    AE United Arab Emirates
    AF Afghanistan
    AG Antigua na Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antarctica
    AR Argentina
    AS American Samoa
    AT Austria
    AU Australia
    AW Aruba
    AX Agwaetiti Aland
    AZ Azerbaijan
    BA Bosnia & Herzegovina
    BB Barbados
    BD Bangladesh
    BE Belgium
    BF Burkina Faso
    BG Bulgaria
    BH Bahrain
    BI Burundi
    BJ Binin
    BL Barthélemy Dị nsọ
    BM Bemuda
    BN Brunei
    BO Bolivia
    BQ Caribbean Netherlands
    BR Brazil
    BS Bahamas
    BT Bhutan
    BV Agwaetiti Bouvet
    BW Botswana
    BY Belarus
    BZ Belize
    CA Kanada
    CC Agwaetiti Cocos (Keeling)
    CD Congo - Kinshasa
    CF Central African Republik
    CG Congo
    CH Switzerland
    CI Côte d’Ivoire
    CK Agwaetiti Cook
    CL Chile
    CM Cameroon
    CN China
    CO Colombia
    CR Kosta Rika
    CU Cuba
    CV Cape Verde
    CW Kurakao
    CX Agwaetiti Christmas
    CY Cyprus
    CZ Czechia
    DE Jamanị
    DJ Djibouti
    DK Denmark
    DM Dominika
    DO Dominican Republik
    DZ Algeria
    EC Ecuador
    EE Estonia
    EG Egypt
    EH Ọdịda Anyanwụ Sahara
    ER Eritrea
    ES Spain
    ET Ethiopia
    FI Finland
    FJ Fiji
    FK Agwaetiti Falkland
    FM Micronesia
    FO Agwaetiti Faroe
    FR France
    GA Gabon
    GB United Kingdom
    GD Grenada
    GE Georgia
    GF Frenchi Guiana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Greenland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Equatorial Guinea
    GR Greece
    GS South Georgia na Agwaetiti South Sandwich
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hong Kong SAR China
    HM Agwaetiti Heard na Agwaetiti McDonald
    HN Honduras
    HR Croatia
    HT Hati
    HU Hungary
    ID Indonesia
    IE Ireland
    IL Israel
    IM Isle of Man
    IN India
    IO British Indian Ocean Territory
    IQ Iraq
    IR Iran
    IS Iceland
    IT Italy
    JE Jersey
    JM Jamaika
    JO Jordan
    JP Japan
    KE Kenya
    KG Kyrgyzstan
    KH Cambodia
    KI Kiribati
    KM Comorosu
    KN Kitts na Nevis Dị nsọ
    KP Ugwu Korea
    KR South Korea
    KW Kuwait
    KY Agwaetiti Cayman
    KZ Kazakhstan
    LA Laos
    LB Lebanon
    LC Lucia Dị nsọ
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lithuania
    LU Luxembourg
    LV Latvia
    LY Libia
    MA Morocco
    MC Monaco
    MD Moldova
    ME Montenegro
    MF Martin Dị nsọ
    MG Madagaskar
    MH Agwaetiti Marshall
    MK North Macedonia
    ML Mali
    MM Myanmar (Burma)
    MN Mongolia
    MO Macao SAR China
    MP Agwaetiti Northern Mariana
    MQ Martinique
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldivesa
    MW Malawi
    MX Mexico
    MY Malaysia
    MZ Mozambik
    NA Namibia
    NC New Caledonia
    NE Niger
    NF Agwaetiti Norfolk
    NG Naịjịrịa
    NI Nicaragua
    NL Netherlands
    NO Norway
    NP Nepal
    NR Nauru
    NU Niue
    NZ New Zealand
    OM Oman
    PA Panama
    PE Peru
    PF Frenchi Polynesia
    PG Papua New Guinea
    PH Philippines
    PK Pakistan
    PL Poland
    PM Pierre na Miquelon Dị nsọ
    PN Agwaetiti Pitcairn
    PR Puerto Rico
    PS Palestinian Territories
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Romania
    RS Serbia
    RU Rụssịa
    RW Rwanda
    SA Saudi Arabia
    SB Agwaetiti Solomon
    SC Seychelles
    SD Sudan
    SE Sweden
    SG Singapore
    SH St. Helena
    SI Slovenia
    SJ Svalbard & Jan Mayen
    SK Slovakia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Suriname
    SS South Sudan
    ST São Tomé & Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Syria
    SZ Eswatini
    TC Agwaetiti Turks na Caicos
    TD Chad
    TF Ụmụ ngalaba Frenchi Southern
    TG Togo
    TH Thailand
    TJ Tajikistan
    TK Tokelau
    TL Timor-Leste
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Turkey
    TT Trinidad na Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraine
    UG Uganda
    UM Obere Agwaetiti Dị Na Mpụga U.S
    US United States
    UY Uruguay
    UZ Uzbekistan
    VA Vatican City
    VC Vincent na Grenadines Dị nsọ
    VE Venezuela
    VG Agwaetiti British Virgin
    VI Agwaetiti Virgin nke US
    VN Vietnam
    VU Vanuatu
    WF Wallis & Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA South Africa
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "United Arab Emirates"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua na Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarctica"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "American Samoa"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Agwaetiti Aland"

        Cldr.AZ ->
            "Azerbaijan"

        Cldr.BA ->
            "Bosnia & Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgium"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaria"

        Cldr.BH ->
            "Bahrain"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Binin"

        Cldr.BL ->
            "Barthélemy Dị nsọ"

        Cldr.BM ->
            "Bemuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Caribbean Netherlands"

        Cldr.BR ->
            "Brazil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Agwaetiti Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Agwaetiti Cocos (Keeling)"

        Cldr.CD ->
            "Congo - Kinshasa"

        Cldr.CF ->
            "Central African Republik"

        Cldr.CG ->
            "Congo"

        Cldr.CH ->
            "Switzerland"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Agwaetiti Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Cameroon"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Kosta Rika"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cape Verde"

        Cldr.CW ->
            "Kurakao"

        Cldr.CX ->
            "Agwaetiti Christmas"

        Cldr.CY ->
            "Cyprus"

        Cldr.CZ ->
            "Czechia"

        Cldr.DE ->
            "Jamanị"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Denmark"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominican Republik"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egypt"

        Cldr.EH ->
            "Ọdịda Anyanwụ Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spain"

        Cldr.ET ->
            "Ethiopia"

        Cldr.FI ->
            "Finland"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Agwaetiti Falkland"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Agwaetiti Faroe"

        Cldr.FR ->
            "France"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "United Kingdom"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Frenchi Guiana"

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
            "Equatorial Guinea"

        Cldr.GR ->
            "Greece"

        Cldr.GS ->
            "South Georgia na Agwaetiti South Sandwich"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong SAR China"

        Cldr.HM ->
            "Agwaetiti Heard na Agwaetiti McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croatia"

        Cldr.HT ->
            "Hati"

        Cldr.HU ->
            "Hungary"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Ireland"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Isle of Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "British Indian Ocean Territory"

        Cldr.IQ ->
            "Iraq"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Iceland"

        Cldr.IT ->
            "Italy"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jordan"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kyrgyzstan"

        Cldr.KH ->
            "Cambodia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comorosu"

        Cldr.KN ->
            "Kitts na Nevis Dị nsọ"

        Cldr.KP ->
            "Ugwu Korea"

        Cldr.KR ->
            "South Korea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Agwaetiti Cayman"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Lebanon"

        Cldr.LC ->
            "Lucia Dị nsọ"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Lithuania"

        Cldr.LU ->
            "Luxembourg"

        Cldr.LV ->
            "Latvia"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Morocco"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Martin Dị nsọ"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Agwaetiti Marshall"

        Cldr.MK ->
            "North Macedonia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macao SAR China"

        Cldr.MP ->
            "Agwaetiti Northern Mariana"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldivesa"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexico"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "New Caledonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Agwaetiti Norfolk"

        Cldr.NG ->
            "Naịjịrịa"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Netherlands"

        Cldr.NO ->
            "Norway"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "New Zealand"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Frenchi Polynesia"

        Cldr.PG ->
            "Papua New Guinea"

        Cldr.PH ->
            "Philippines"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Poland"

        Cldr.PM ->
            "Pierre na Miquelon Dị nsọ"

        Cldr.PN ->
            "Agwaetiti Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestinian Territories"

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
            "Romania"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rụssịa"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudi Arabia"

        Cldr.SB ->
            "Agwaetiti Solomon"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Sweden"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "St. Helena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Svalbard & Jan Mayen"

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
            "South Sudan"

        Cldr.ST ->
            "São Tomé & Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Agwaetiti Turks na Caicos"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Ụmụ ngalaba Frenchi Southern"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailand"

        Cldr.TJ ->
            "Tajikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkey"

        Cldr.TT ->
            "Trinidad na Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ukraine"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Obere Agwaetiti Dị Na Mpụga U.S"

        Cldr.US ->
            "United States"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatican City"

        Cldr.VC ->
            "Vincent na Grenadines Dị nsọ"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Agwaetiti British Virgin"

        Cldr.VI ->
            "Agwaetiti Virgin nke US"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis & Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "South Africa"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"