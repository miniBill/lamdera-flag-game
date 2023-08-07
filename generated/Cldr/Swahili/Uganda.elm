module Cldr.Swahili.Uganda exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Swahili


{-| Name for `CountryCode` in Swahili - Uganda.

This is identical to the Swahili version.

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
countryCodeToName =
    Cldr.Swahili.countryCodeToName