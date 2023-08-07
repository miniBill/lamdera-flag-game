module Cldr.Italian.VaticanCity exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Italian


{-| Name for `CountryCode` in Italian - Vatican City.

This is identical to the Italian version.

    AD Andorra
    AE Emirati Arabi Uniti
    AF Afghanistan
    AG Antigua e Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antartide
    AR Argentina
    AS Samoa americane
    AT Austria
    AU Australia
    AW Aruba
    AX Isole Åland
    AZ Azerbaigian
    BA Bosnia ed Erzegovina
    BB Barbados
    BD Bangladesh
    BE Belgio
    BF Burkina Faso
    BG Bulgaria
    BH Bahrein
    BI Burundi
    BJ Benin
    BL Saint-Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Caraibi olandesi
    BR Brasile
    BS Bahamas
    BT Bhutan
    BV Isola Bouvet
    BW Botswana
    BY Bielorussia
    BZ Belize
    CA Canada
    CC Isole Cocos (Keeling)
    CD Congo (RDC)
    CF Repubblica Centrafricana
    CG Congo (Repubblica)
    CH Svizzera
    CI Costa d’Avorio
    CK Isole Cook
    CL Cile
    CM Camerun
    CN Cina
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Capo Verde
    CW Curaçao
    CX Isola Christmas
    CY Cipro
    CZ Repubblica Ceca
    DE Germania
    DJ Gibuti
    DK Danimarca
    DM Dominica
    DO Repubblica Dominicana
    DZ Algeria
    EC Ecuador
    EE Estonia
    EG Egitto
    EH Sahara occidentale
    ER Eritrea
    ES Spagna
    ET Etiopia
    FI Finlandia
    FJ Figi
    FK Isole Falkland
    FM Micronesia
    FO Isole Fær Øer
    FR Francia
    GA Gabon
    GB Regno Unito
    GD Grenada
    GE Georgia
    GF Guyana Francese
    GG Guernsey
    GH Ghana
    GI Gibilterra
    GL Groenlandia
    GM Gambia
    GN Guinea
    GP Guadalupa
    GQ Guinea Equatoriale
    GR Grecia
    GS Georgia del Sud e Sandwich Australi
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hong Kong
    HM Isole Heard e McDonald
    HN Honduras
    HR Croazia
    HT Haiti
    HU Ungheria
    ID Indonesia
    IE Irlanda
    IL Israele
    IM Isola di Man
    IN India
    IO Territorio britannico dell’Oceano Indiano
    IQ Iraq
    IR Iran
    IS Islanda
    IT Italia
    JE Jersey
    JM Giamaica
    JO Giordania
    JP Giappone
    KE Kenya
    KG Kirghizistan
    KH Cambogia
    KI Kiribati
    KM Comore
    KN Saint Kitts e Nevis
    KP Corea del Nord
    KR Corea del Sud
    KW Kuwait
    KY Isole Cayman
    KZ Kazakistan
    LA Laos
    LB Libano
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lituania
    LU Lussemburgo
    LV Lettonia
    LY Libia
    MA Marocco
    MC Monaco
    MD Moldavia
    ME Montenegro
    MF Saint Martin
    MG Madagascar
    MH Isole Marshall
    MK Macedonia del Nord
    ML Mali
    MM Myanmar (Birmania)
    MN Mongolia
    MO Macao
    MP Isole Marianne settentrionali
    MQ Martinica
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldive
    MW Malawi
    MX Messico
    MY Malaysia
    MZ Mozambico
    NA Namibia
    NC Nuova Caledonia
    NE Niger
    NF Isola Norfolk
    NG Nigeria
    NI Nicaragua
    NL Paesi Bassi
    NO Norvegia
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nuova Zelanda
    OM Oman
    PA Panama
    PE Perù
    PF Polinesia francese
    PG Papua Nuova Guinea
    PH Filippine
    PK Pakistan
    PL Polonia
    PM Saint-Pierre e Miquelon
    PN Isole Pitcairn
    PR Portorico
    PS Palestina
    PT Portogallo
    PW Palau
    PY Paraguay
    QA Qatar
    RE Riunione
    RO Romania
    RS Serbia
    RU Russia
    RW Ruanda
    SA Arabia Saudita
    SB Isole Salomone
    SC Seychelles
    SD Sudan
    SE Svezia
    SG Singapore
    SH Sant’Elena
    SI Slovenia
    SJ Svalbard e Jan Mayen
    SK Slovacchia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Suriname
    SS Sud Sudan
    ST São Tomé e Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Siria
    SZ eSwatini
    TC Isole Turks e Caicos
    TD Ciad
    TF Terre australi francesi
    TG Togo
    TH Thailandia
    TJ Tagikistan
    TK Tokelau
    TL Timor Leste
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Turchia
    TT Trinidad e Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ucraina
    UG Uganda
    UM Isole Minori Esterne degli Stati Uniti
    US Stati Uniti
    UY Uruguay
    UZ Uzbekistan
    VA Città del Vaticano
    VC Saint Vincent e Grenadine
    VE Venezuela
    VG Isole Vergini Britanniche
    VI Isole Vergini Americane
    VN Vietnam
    VU Vanuatu
    WF Wallis e Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA Sudafrica
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName =
    Cldr.Italian.countryCodeToName