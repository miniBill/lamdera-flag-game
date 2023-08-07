module Cldr.Malay exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Malay.

    AD Andorra
    AE Emiriah Arab Bersatu
    AF Afghanistan
    AG Antigua dan Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antartika
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
    BE Belgium
    BF Burkina Faso
    BG Bulgaria
    BH Bahrain
    BI Burundi
    BJ Benin
    BL St. Barthelemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Belanda Caribbean
    BR Brazil
    BS Bahamas
    BT Bhutan
    BV Pulau Bouvet
    BW Botswana
    BY Belarus
    BZ Belize
    CA Kanada
    CC Kepulauan Cocos (Keeling)
    CD Congo (DRC)
    CF Republik Afrika Tengah
    CG Congo (Republik)
    CH Switzerland
    CI Cote d’Ivoire
    CK Kepulauan Cook
    CL Chile
    CM Cameroon
    CN China
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Cape Verde
    CW Curacao
    CX Pulau Krismas
    CY Cyprus
    CZ Republik Czech
    DE Jerman
    DJ Djibouti
    DK Denmark
    DM Dominica
    DO Republik Dominica
    DZ Algeria
    EC Ecuador
    EE Estonia
    EG Mesir
    EH Sahara Barat
    ER Eritrea
    ES Sepanyol
    ET Ethiopia
    FI Finland
    FJ Fiji
    FK Kepulauan Falkland
    FM Micronesia
    FO Kepulauan Faroe
    FR Perancis
    GA Gabon
    GB United Kingdom
    GD Grenada
    GE Georgia
    GF Guiana Perancis
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Greenland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Guinea Khatulistiwa
    GR Greece
    GS Kepulauan Georgia Selatan & Sandwich Selatan
    GT Guatemala
    GU Guam
    GW Guinea Bissau
    GY Guyana
    HK Hong Kong
    HM Kepulauan Heard & McDonald
    HN Honduras
    HR Croatia
    HT Haiti
    HU Hungary
    ID Indonesia
    IE Ireland
    IL Israel
    IM Isle of Man
    IN India
    IO Wilayah Lautan Hindi British
    IQ Iraq
    IR Iran
    IS Iceland
    IT Itali
    JE Jersey
    JM Jamaica
    JO Jordan
    JP Jepun
    KE Kenya
    KG Kyrgyzstan
    KH Kemboja
    KI Kiribati
    KM Comoros
    KN Saint Kitts dan Nevis
    KP Korea Utara
    KR Korea Selatan
    KW Kuwait
    KY Kepulauan Cayman
    KZ Kazakhstan
    LA Laos
    LB Lubnan
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lithuania
    LU Luxembourg
    LV Latvia
    LY Libya
    MA Maghribi
    MC Monaco
    MD Moldova
    ME Montenegro
    MF Saint Martin
    MG Madagaskar
    MH Kepulauan Marshall
    MK Macedonia Utara
    ML Mali
    MM Myanmar (Burma)
    MN Mongolia
    MO Macau
    MP Kepulauan Mariana Utara
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
    NF Pulau Norfolk
    NG Nigeria
    NI Nicaragua
    NL Belanda
    NO Norway
    NP Nepal
    NR Nauru
    NU Niue
    NZ New Zealand
    OM Oman
    PA Panama
    PE Peru
    PF Polinesia Perancis
    PG Papua New Guinea
    PH Filipina
    PK Pakistan
    PL Poland
    PM Saint Pierre dan Miquelon
    PN Kepulauan Pitcairn
    PR Puerto Rico
    PS Palestin
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Reunion
    RO Romania
    RS Serbia
    RU Rusia
    RW Rwanda
    SA Arab Saudi
    SB Kepulauan Solomon
    SC Seychelles
    SD Sudan
    SE Sweden
    SG Singapura
    SH Saint Helena
    SI Slovenia
    SJ Svalbard dan Jan Mayen
    SK Slovakia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Surinam
    SS Sudan Selatan
    ST Sao Tome dan Principe
    SV El Salvador
    SX Sint Maarten
    SY Syria
    SZ Eswatini
    TC Kepulauan Turks dan Caicos
    TD Chad
    TF Wilayah Selatan Perancis
    TG Togo
    TH Thailand
    TJ Tajikistan
    TK Tokelau
    TL Timor Timur
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Turkiye
    TT Trinidad dan Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraine
    UG Uganda
    UM Kepulauan Terpencil A.S.
    US Amerika Syarikat
    UY Uruguay
    UZ Uzbekistan
    VA Kota Vatican
    VC Saint Vincent dan Grenadines
    VE Venezuela
    VG Kepulauan Virgin British
    VI Kepulauan Virgin A.S.
    VN Vietnam
    VU Vanuatu
    WF Wallis dan Futuna
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
            "Emiriah Arab Bersatu"

        Cldr.AF ->
            "Afghanistan"

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
            "Antartika"

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
            "St. Barthelemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Belanda Caribbean"

        Cldr.BR ->
            "Brazil"

        Cldr.BS ->
            "Bahamas"

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
            "Congo (DRC)"

        Cldr.CF ->
            "Republik Afrika Tengah"

        Cldr.CG ->
            "Congo (Republik)"

        Cldr.CH ->
            "Switzerland"

        Cldr.CI ->
            "Cote d’Ivoire"

        Cldr.CK ->
            "Kepulauan Cook"

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
            "Curacao"

        Cldr.CX ->
            "Pulau Krismas"

        Cldr.CY ->
            "Cyprus"

        Cldr.CZ ->
            "Republik Czech"

        Cldr.DE ->
            "Jerman"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Denmark"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Republik Dominica"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Mesir"

        Cldr.EH ->
            "Sahara Barat"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Sepanyol"

        Cldr.ET ->
            "Ethiopia"

        Cldr.FI ->
            "Finland"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Kepulauan Falkland"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Kepulauan Faroe"

        Cldr.FR ->
            "Perancis"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "United Kingdom"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guiana Perancis"

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
            "Guinea Khatulistiwa"

        Cldr.GR ->
            "Greece"

        Cldr.GS ->
            "Kepulauan Georgia Selatan & Sandwich Selatan"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Kepulauan Heard & McDonald"

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
            "Wilayah Lautan Hindi British"

        Cldr.IQ ->
            "Iraq"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Iceland"

        Cldr.IT ->
            "Itali"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordan"

        Cldr.JP ->
            "Jepun"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kyrgyzstan"

        Cldr.KH ->
            "Kemboja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comoros"

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
            "Lubnan"

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
            "Lithuania"

        Cldr.LU ->
            "Luxembourg"

        Cldr.LV ->
            "Latvia"

        Cldr.LY ->
            "Libya"

        Cldr.MA ->
            "Maghribi"

        Cldr.MC ->
            "Monaco"

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
            "Macedonia Utara"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macau"

        Cldr.MP ->
            "Kepulauan Mariana Utara"

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
            "Pulau Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Belanda"

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
            "Polinesia Perancis"

        Cldr.PG ->
            "Papua New Guinea"

        Cldr.PH ->
            "Filipina"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Poland"

        Cldr.PM ->
            "Saint Pierre dan Miquelon"

        Cldr.PN ->
            "Kepulauan Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestin"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Reunion"

        Cldr.RO ->
            "Romania"

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
            "Sweden"

        Cldr.SG ->
            "Singapura"

        Cldr.SH ->
            "Saint Helena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Svalbard dan Jan Mayen"

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
            "Surinam"

        Cldr.SS ->
            "Sudan Selatan"

        Cldr.ST ->
            "Sao Tome dan Principe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Kepulauan Turks dan Caicos"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Wilayah Selatan Perancis"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailand"

        Cldr.TJ ->
            "Tajikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor Timur"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkiye"

        Cldr.TT ->
            "Trinidad dan Tobago"

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
            "Kepulauan Terpencil A.S."

        Cldr.US ->
            "Amerika Syarikat"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Kota Vatican"

        Cldr.VC ->
            "Saint Vincent dan Grenadines"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Kepulauan Virgin British"

        Cldr.VI ->
            "Kepulauan Virgin A.S."

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis dan Futuna"

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