module Cldr.English exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in English.

    AD Andorra
    AE United Arab Emirates
    AF Afghanistan
    AG Antigua & Barbuda
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
    AX Åland Islands
    AZ Azerbaijan
    BA Bosnia & Herzegovina
    BB Barbados
    BD Bangladesh
    BE Belgium
    BF Burkina Faso
    BG Bulgaria
    BH Bahrain
    BI Burundi
    BJ Benin
    BL St. Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Caribbean Netherlands
    BR Brazil
    BS Bahamas
    BT Bhutan
    BV Bouvet Island
    BW Botswana
    BY Belarus
    BZ Belize
    CA Canada
    CC Cocos (Keeling) Islands
    CD Congo - Kinshasa
    CF Central African Republic
    CG Congo - Brazzaville
    CH Switzerland
    CI Côte d’Ivoire
    CK Cook Islands
    CL Chile
    CM Cameroon
    CN China
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Cape Verde
    CW Curaçao
    CX Christmas Island
    CY Cyprus
    CZ Czechia
    DE Germany
    DJ Djibouti
    DK Denmark
    DM Dominica
    DO Dominican Republic
    DZ Algeria
    EC Ecuador
    EE Estonia
    EG Egypt
    EH Western Sahara
    ER Eritrea
    ES Spain
    ET Ethiopia
    FI Finland
    FJ Fiji
    FK Falkland Islands
    FM Micronesia
    FO Faroe Islands
    FR France
    GA Gabon
    GB United Kingdom
    GD Grenada
    GE Georgia
    GF French Guiana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Greenland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Equatorial Guinea
    GR Greece
    GS South Georgia & South Sandwich Islands
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hong Kong SAR China
    HM Heard & McDonald Islands
    HN Honduras
    HR Croatia
    HT Haiti
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
    JM Jamaica
    JO Jordan
    JP Japan
    KE Kenya
    KG Kyrgyzstan
    KH Cambodia
    KI Kiribati
    KM Comoros
    KN St. Kitts & Nevis
    KP North Korea
    KR South Korea
    KW Kuwait
    KY Cayman Islands
    KZ Kazakhstan
    LA Laos
    LB Lebanon
    LC St. Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lithuania
    LU Luxembourg
    LV Latvia
    LY Libya
    MA Morocco
    MC Monaco
    MD Moldova
    ME Montenegro
    MF St. Martin
    MG Madagascar
    MH Marshall Islands
    MK North Macedonia
    ML Mali
    MM Myanmar (Burma)
    MN Mongolia
    MO Macao SAR China
    MP Northern Mariana Islands
    MQ Martinique
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldives
    MW Malawi
    MX Mexico
    MY Malaysia
    MZ Mozambique
    NA Namibia
    NC New Caledonia
    NE Niger
    NF Norfolk Island
    NG Nigeria
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
    PF French Polynesia
    PG Papua New Guinea
    PH Philippines
    PK Pakistan
    PL Poland
    PM St. Pierre & Miquelon
    PN Pitcairn Islands
    PR Puerto Rico
    PS Palestinian Territories
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Romania
    RS Serbia
    RU Russia
    RW Rwanda
    SA Saudi Arabia
    SB Solomon Islands
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
    TC Turks & Caicos Islands
    TD Chad
    TF French Southern Territories
    TG Togo
    TH Thailand
    TJ Tajikistan
    TK Tokelau
    TL Timor-Leste
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Türkiye
    TT Trinidad & Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraine
    UG Uganda
    UM U.S. Outlying Islands
    US United States
    UY Uruguay
    UZ Uzbekistan
    VA Vatican City
    VC St. Vincent & Grenadines
    VE Venezuela
    VG British Virgin Islands
    VI U.S. Virgin Islands
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
            "Antigua & Barbuda"

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
            "Åland Islands"

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
            "Benin"

        Cldr.BL ->
            "St. Barthélemy"

        Cldr.BM ->
            "Bermuda"

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
            "Bouvet Island"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Cocos (Keeling) Islands"

        Cldr.CD ->
            "Congo - Kinshasa"

        Cldr.CF ->
            "Central African Republic"

        Cldr.CG ->
            "Congo - Brazzaville"

        Cldr.CH ->
            "Switzerland"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Cook Islands"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Cameroon"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cape Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Christmas Island"

        Cldr.CY ->
            "Cyprus"

        Cldr.CZ ->
            "Czechia"

        Cldr.DE ->
            "Germany"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Denmark"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Dominican Republic"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egypt"

        Cldr.EH ->
            "Western Sahara"

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
            "Falkland Islands"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Faroe Islands"

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
            "French Guiana"

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
            "South Georgia & South Sandwich Islands"

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
            "Heard & McDonald Islands"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croatia"

        Cldr.HT ->
            "Haiti"

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
            "Jamaica"

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
            "Comoros"

        Cldr.KN ->
            "St. Kitts & Nevis"

        Cldr.KP ->
            "North Korea"

        Cldr.KR ->
            "South Korea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Cayman Islands"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Lebanon"

        Cldr.LC ->
            "St. Lucia"

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
            "Libya"

        Cldr.MA ->
            "Morocco"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "St. Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Marshall Islands"

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
            "Northern Mariana Islands"

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
            "Maldives"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexico"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "New Caledonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk Island"

        Cldr.NG ->
            "Nigeria"

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
            "French Polynesia"

        Cldr.PG ->
            "Papua New Guinea"

        Cldr.PH ->
            "Philippines"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Poland"

        Cldr.PM ->
            "St. Pierre & Miquelon"

        Cldr.PN ->
            "Pitcairn Islands"

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
            "Russia"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudi Arabia"

        Cldr.SB ->
            "Solomon Islands"

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
            "Turks & Caicos Islands"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "French Southern Territories"

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
            "Türkiye"

        Cldr.TT ->
            "Trinidad & Tobago"

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
            "U.S. Outlying Islands"

        Cldr.US ->
            "United States"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatican City"

        Cldr.VC ->
            "St. Vincent & Grenadines"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "British Virgin Islands"

        Cldr.VI ->
            "U.S. Virgin Islands"

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