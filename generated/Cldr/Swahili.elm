module Cldr.Swahili exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Swahili.

    AD Andorra
    AE Falme za Kiarabu
    AF Afghanistan
    AG Antigua na Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antaktiki
    AR Ajentina
    AS Samoa ya Marekani
    AT Austria
    AU Australia
    AW Aruba
    AX Visiwa vya Aland
    AZ Azerbaijani
    BA Bosnia na Hezegovina
    BB Babadosi
    BD Bangladeshi
    BE Ubelgiji
    BF Bukinafaso
    BG Bulgaria
    BH Bahareni
    BI Burundi
    BJ Benin
    BL St. Barthelemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Uholanzi ya Karibiani
    BR Brazil
    BS Bahama
    BT Bhutan
    BV Kisiwa cha Bouvet
    BW Botswana
    BY Belarus
    BZ Belize
    CA Kanada
    CC Visiwa vya Cocos (Keeling)
    CD Kongo (DRC)
    CF Jamhuri ya Afrika ya Kati
    CG Jamhuri ya Kongo
    CH Uswisi
    CI Cote d’Ivoire
    CK Visiwa vya Cook
    CL Chile
    CM Kameruni
    CN Uchina
    CO Kolombia
    CR Kostarika
    CU Kuba
    CV Cape Verde
    CW Curacao
    CX Kisiwa cha Krismasi
    CY Saiprasi
    CZ Jamhuri ya Cheki
    DE Ujerumani
    DJ Jibuti
    DK Denmaki
    DM Dominika
    DO Jamhuri ya Dominika
    DZ Aljeria
    EC Ecuador
    EE Estonia
    EG Misri
    EH Sahara Magharibi
    ER Eritrea
    ES Uhispania
    ET Ethiopia
    FI Ufini
    FJ Fiji
    FK Visiwa vya Falkland
    FM Mikronesia
    FO Visiwa vya Faroe
    FR Ufaransa
    GA Gabon
    GB Ufalme wa Muungano
    GD Grenada
    GE Jojia
    GF Guiana ya Ufaransa
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Greenland
    GM Gambia
    GN Gine
    GP Guadeloupe
    GQ Guinea ya Ikweta
    GR Ugiriki
    GS Visiwa vya Georgia Kusini na Sandwich Kusini
    GT Guatemala
    GU Guam
    GW Ginebisau
    GY Guyana
    HK Hong Kong
    HM Kisiwa cha Heard na Visiwa vya McDonald
    HN Honduras
    HR Croatia
    HT Haiti
    HU Hungaria
    ID Indonesia
    IE Ayalandi
    IL Israeli
    IM Kisiwa cha Man
    IN India
    IO Eneo la Uingereza katika Bahari Hindi
    IQ Iraki
    IR Iran
    IS Aisilandi
    IT Italia
    JE Jersey
    JM Jamaika
    JO Jordan
    JP Japani
    KE Kenya
    KG Kirigizistani
    KH Kambodia
    KI Kiribati
    KM Komoro
    KN St. Kitts na Nevis
    KP Korea Kaskazini
    KR Korea Kusini
    KW Kuwait
    KY Visiwa vya Cayman
    KZ Kazakistani
    LA Laos
    LB Lebanon
    LC St. Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesoto
    LT Lithuania
    LU Luxembourg
    LV Latvia
    LY Libya
    MA Morocco
    MC Monaco
    MD Moldova
    ME Montenegro
    MF St. Martin
    MG Madagaska
    MH Visiwa vya Marshall
    MK Masedonia ya Kaskazini
    ML Mali
    MM Myanmar (Burma)
    MN Mongolia
    MO Makau
    MP Visiwa vya Mariana vya Kaskazini
    MQ Martinique
    MR Moritania
    MS Montserrat
    MT Malta
    MU Morisi
    MV Maldivi
    MW Malawi
    MX Meksiko
    MY Malesia
    MZ Msumbiji
    NA Namibia
    NC New Caledonia
    NE Niger
    NF Kisiwa cha Norfolk
    NG Nigeria
    NI Nikaragwa
    NL Uholanzi
    NO Norway
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nyuzilandi
    OM Oman
    PA Panama
    PE Peru
    PF Polynesia ya Ufaransa
    PG Papua New Guinea
    PH Ufilipino
    PK Pakistani
    PL Poland
    PM Santapierre na Miquelon
    PN Visiwa vya Pitcairn
    PR Puerto Rico
    PS Palestina
    PT Ureno
    PW Palau
    PY Paraguay
    QA Qatar
    RE Reunion
    RO Romania
    RS Serbia
    RU Urusi
    RW Rwanda
    SA Saudia
    SB Visiwa vya Solomon
    SC Ushelisheli
    SD Sudan
    SE Uswidi
    SG Singapore
    SH St. Helena
    SI Slovenia
    SJ Svalbard na Jan Mayen
    SK Slovakia
    SL Siera Leoni
    SM San Marino
    SN Senegali
    SO Somalia
    SR Suriname
    SS Sudan Kusini
    ST Sao Tome na Principe
    SV El Salvador
    SX Sint Maarten
    SY Syria
    SZ Eswatini
    TC Visiwa vya Turks na Caicos
    TD Chad
    TF Himaya za Kusini za Kifaranza
    TG Togo
    TH Tailandi
    TJ Tajikistani
    TK Tokelau
    TL Timor ya Mashariki
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Uturuki
    TT Trinidad na Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraine
    UG Uganda
    UM Visiwa Vidogo vya Nje vya Marekani
    US Marekani
    UY Uruguay
    UZ Uzibekistani
    VA Mji wa Vatican
    VC St. Vincent na Grenadines
    VE Venezuela
    VG Visiwa vya Virgin, Uingereza
    VI Visiwa vya Virgin, Marekani
    VN Vietnamu
    VU Vanuatu
    WF Wallis na Futuna
    WS Samoa
    XK Kosovo
    YE Yemeni
    YT Mayotte
    ZA Afrika Kusini
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Falme za Kiarabu"

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
            "Antaktiki"

        Cldr.AR ->
            "Ajentina"

        Cldr.AS ->
            "Samoa ya Marekani"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Visiwa vya Aland"

        Cldr.AZ ->
            "Azerbaijani"

        Cldr.BA ->
            "Bosnia na Hezegovina"

        Cldr.BB ->
            "Babadosi"

        Cldr.BD ->
            "Bangladeshi"

        Cldr.BE ->
            "Ubelgiji"

        Cldr.BF ->
            "Bukinafaso"

        Cldr.BG ->
            "Bulgaria"

        Cldr.BH ->
            "Bahareni"

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
            "Uholanzi ya Karibiani"

        Cldr.BR ->
            "Brazil"

        Cldr.BS ->
            "Bahama"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Kisiwa cha Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Visiwa vya Cocos (Keeling)"

        Cldr.CD ->
            "Kongo (DRC)"

        Cldr.CF ->
            "Jamhuri ya Afrika ya Kati"

        Cldr.CG ->
            "Jamhuri ya Kongo"

        Cldr.CH ->
            "Uswisi"

        Cldr.CI ->
            "Cote d’Ivoire"

        Cldr.CK ->
            "Visiwa vya Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kameruni"

        Cldr.CN ->
            "Uchina"

        Cldr.CO ->
            "Kolombia"

        Cldr.CR ->
            "Kostarika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Cape Verde"

        Cldr.CW ->
            "Curacao"

        Cldr.CX ->
            "Kisiwa cha Krismasi"

        Cldr.CY ->
            "Saiprasi"

        Cldr.CZ ->
            "Jamhuri ya Cheki"

        Cldr.DE ->
            "Ujerumani"

        Cldr.DJ ->
            "Jibuti"

        Cldr.DK ->
            "Denmaki"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Jamhuri ya Dominika"

        Cldr.DZ ->
            "Aljeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Misri"

        Cldr.EH ->
            "Sahara Magharibi"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Uhispania"

        Cldr.ET ->
            "Ethiopia"

        Cldr.FI ->
            "Ufini"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Visiwa vya Falkland"

        Cldr.FM ->
            "Mikronesia"

        Cldr.FO ->
            "Visiwa vya Faroe"

        Cldr.FR ->
            "Ufaransa"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Ufalme wa Muungano"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Jojia"

        Cldr.GF ->
            "Guiana ya Ufaransa"

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
            "Gine"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Guinea ya Ikweta"

        Cldr.GR ->
            "Ugiriki"

        Cldr.GS ->
            "Visiwa vya Georgia Kusini na Sandwich Kusini"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Ginebisau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Kisiwa cha Heard na Visiwa vya McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croatia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hungaria"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Ayalandi"

        Cldr.IL ->
            "Israeli"

        Cldr.IM ->
            "Kisiwa cha Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Eneo la Uingereza katika Bahari Hindi"

        Cldr.IQ ->
            "Iraki"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Aisilandi"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jordan"

        Cldr.JP ->
            "Japani"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirigizistani"

        Cldr.KH ->
            "Kambodia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komoro"

        Cldr.KN ->
            "St. Kitts na Nevis"

        Cldr.KP ->
            "Korea Kaskazini"

        Cldr.KR ->
            "Korea Kusini"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Visiwa vya Cayman"

        Cldr.KZ ->
            "Kazakistani"

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
            "Lesoto"

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
            "Madagaska"

        Cldr.MH ->
            "Visiwa vya Marshall"

        Cldr.MK ->
            "Masedonia ya Kaskazini"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Makau"

        Cldr.MP ->
            "Visiwa vya Mariana vya Kaskazini"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Moritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Morisi"

        Cldr.MV ->
            "Maldivi"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Meksiko"

        Cldr.MY ->
            "Malesia"

        Cldr.MZ ->
            "Msumbiji"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "New Caledonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Kisiwa cha Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nikaragwa"

        Cldr.NL ->
            "Uholanzi"

        Cldr.NO ->
            "Norway"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nyuzilandi"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polynesia ya Ufaransa"

        Cldr.PG ->
            "Papua New Guinea"

        Cldr.PH ->
            "Ufilipino"

        Cldr.PK ->
            "Pakistani"

        Cldr.PL ->
            "Poland"

        Cldr.PM ->
            "Santapierre na Miquelon"

        Cldr.PN ->
            "Visiwa vya Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestina"

        Cldr.PT ->
            "Ureno"

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
            "Urusi"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudia"

        Cldr.SB ->
            "Visiwa vya Solomon"

        Cldr.SC ->
            "Ushelisheli"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Uswidi"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "St. Helena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Svalbard na Jan Mayen"

        Cldr.SK ->
            "Slovakia"

        Cldr.SL ->
            "Siera Leoni"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegali"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Sudan Kusini"

        Cldr.ST ->
            "Sao Tome na Principe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Visiwa vya Turks na Caicos"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Himaya za Kusini za Kifaranza"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailandi"

        Cldr.TJ ->
            "Tajikistani"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor ya Mashariki"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Uturuki"

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
            "Visiwa Vidogo vya Nje vya Marekani"

        Cldr.US ->
            "Marekani"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzibekistani"

        Cldr.VA ->
            "Mji wa Vatican"

        Cldr.VC ->
            "St. Vincent na Grenadines"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Visiwa vya Virgin, Uingereza"

        Cldr.VI ->
            "Visiwa vya Virgin, Marekani"

        Cldr.VN ->
            "Vietnamu"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis na Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemeni"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Afrika Kusini"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"