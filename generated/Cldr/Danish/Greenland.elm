module Cldr.Danish.Greenland exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Danish


{-| Name for `CountryCode` in Danish - Greenland.

This is identical to the Danish version.

    AD Andorra
    AE De Forenede Arabiske Emirater
    AF Afghanistan
    AG Antigua og Barbuda
    AI Anguilla
    AL Albanien
    AM Armenien
    AO Angola
    AQ Antarktis
    AR Argentina
    AS Amerikansk Samoa
    AT Østrig
    AU Australien
    AW Aruba
    AX Åland
    AZ Aserbajdsjan
    BA Bosnien-Hercegovina
    BB Barbados
    BD Bangladesh
    BE Belgien
    BF Burkina Faso
    BG Bulgarien
    BH Bahrain
    BI Burundi
    BJ Benin
    BL Saint Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ De tidligere Nederlandske Antiller
    BR Brasilien
    BS Bahamas
    BT Bhutan
    BV Bouvetøen
    BW Botswana
    BY Belarus
    BZ Belize
    CA Canada
    CC Cocosøerne
    CD Den Demokratiske Republik Congo (DRC)
    CF Den Centralafrikanske Republik
    CG Republikken Congo
    CH Schweiz
    CI Elfenbenskysten
    CK Cookøerne
    CL Chile
    CM Cameroun
    CN Kina
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Kap Verde
    CW Curaçao
    CX Juleøen
    CY Cypern
    CZ Den Tjekkiske Republik
    DE Tyskland
    DJ Djibouti
    DK Danmark
    DM Dominica
    DO Den Dominikanske Republik
    DZ Algeriet
    EC Ecuador
    EE Estland
    EG Egypten
    EH Vestsahara
    ER Eritrea
    ES Spanien
    ET Etiopien
    FI Finland
    FJ Fiji
    FK Falklandsøerne
    FM Mikronesien
    FO Færøerne
    FR Frankrig
    GA Gabon
    GB Storbritannien
    GD Grenada
    GE Georgien
    GF Fransk Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Grønland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Ækvatorialguinea
    GR Grækenland
    GS South Georgia og De Sydlige Sandwichøer
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hongkong
    HM Heard Island og McDonald Islands
    HN Honduras
    HR Kroatien
    HT Haiti
    HU Ungarn
    ID Indonesien
    IE Irland
    IL Israel
    IM Isle of Man
    IN Indien
    IO Det Britiske Territorium i Det Indiske Ocean
    IQ Irak
    IR Iran
    IS Island
    IT Italien
    JE Jersey
    JM Jamaica
    JO Jordan
    JP Japan
    KE Kenya
    KG Kirgisistan
    KH Cambodja
    KI Kiribati
    KM Comorerne
    KN Saint Kitts og Nevis
    KP Nordkorea
    KR Sydkorea
    KW Kuwait
    KY Caymanøerne
    KZ Kasakhstan
    LA Laos
    LB Libanon
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litauen
    LU Luxembourg
    LV Letland
    LY Libyen
    MA Marokko
    MC Monaco
    MD Moldova
    ME Montenegro
    MF Saint Martin
    MG Madagaskar
    MH Marshalløerne
    MK Nordmakedonien
    ML Mali
    MM Myanmar (Burma)
    MN Mongoliet
    MO Macao
    MP Nordmarianerne
    MQ Martinique
    MR Mauretanien
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldiverne
    MW Malawi
    MX Mexico
    MY Malaysia
    MZ Mozambique
    NA Namibia
    NC Ny Kaledonien
    NE Niger
    NF Norfolk Island
    NG Nigeria
    NI Nicaragua
    NL Nederlandene
    NO Norge
    NP Nepal
    NR Nauru
    NU Niue
    NZ New Zealand
    OM Oman
    PA Panama
    PE Peru
    PF Fransk Polynesien
    PG Papua Ny Guinea
    PH Filippinerne
    PK Pakistan
    PL Polen
    PM Saint Pierre og Miquelon
    PN Pitcairn
    PR Puerto Rico
    PS Palæstina
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Rumænien
    RS Serbien
    RU Rusland
    RW Rwanda
    SA Saudi-Arabien
    SB Salomonøerne
    SC Seychellerne
    SD Sudan
    SE Sverige
    SG Singapore
    SH St. Helena
    SI Slovenien
    SJ Svalbard og Jan Mayen
    SK Slovakiet
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Surinam
    SS Sydsudan
    ST São Tomé og Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Syrien
    SZ Eswatini
    TC Turks- og Caicosøerne
    TD Tchad
    TF De Franske Besiddelser i Det Sydlige Indiske Ocean og Antarktis
    TG Togo
    TH Thailand
    TJ Tadsjikistan
    TK Tokelau
    TL Østtimor
    TM Turkmenistan
    TN Tunesien
    TO Tonga
    TR Tyrkiet
    TT Trinidad og Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraine
    UG Uganda
    UM Amerikanske oversøiske øer
    US USA
    UY Uruguay
    UZ Usbekistan
    VA Vatikanstaten
    VC Saint Vincent og Grenadinerne
    VE Venezuela
    VG De Britiske Jomfruøer
    VI De Amerikanske Jomfruøer
    VN Vietnam
    VU Vanuatu
    WF Wallis og Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA Sydafrika
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName =
    Cldr.Danish.countryCodeToName