module Cldr.Dutch.CaribbeanNetherlands exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Dutch


{-| Name for `CountryCode` in Dutch - Caribbean Netherlands.

This is identical to the Dutch version.

    AD Andorra
    AE Verenigde Arabische Emiraten
    AF Afghanistan
    AG Antigua en Barbuda
    AI Anguilla
    AL Albanië
    AM Armenië
    AO Angola
    AQ Antarctica
    AR Argentinië
    AS Amerikaans-Samoa
    AT Oostenrijk
    AU Australië
    AW Aruba
    AX Åland
    AZ Azerbeidzjan
    BA Bosnië en Herzegovina
    BB Barbados
    BD Bangladesh
    BE België
    BF Burkina Faso
    BG Bulgarije
    BH Bahrein
    BI Burundi
    BJ Benin
    BL Saint-Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Caribisch Nederland
    BR Brazilië
    BS Bahama’s
    BT Bhutan
    BV Bouveteiland
    BW Botswana
    BY Belarus
    BZ Belize
    CA Canada
    CC Cocoseilanden
    CD Congo-Kinshasa
    CF Centraal-Afrikaanse Republiek
    CG Congo-Brazzaville
    CH Zwitserland
    CI Ivoorkust
    CK Cookeilanden
    CL Chili
    CM Kameroen
    CN China
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Kaapverdië
    CW Curaçao
    CX Christmaseiland
    CY Cyprus
    CZ Tsjechië
    DE Duitsland
    DJ Djibouti
    DK Denemarken
    DM Dominica
    DO Dominicaanse Republiek
    DZ Algerije
    EC Ecuador
    EE Estland
    EG Egypte
    EH Westelijke Sahara
    ER Eritrea
    ES Spanje
    ET Ethiopië
    FI Finland
    FJ Fiji
    FK Falklandeilanden
    FM Micronesia
    FO Faeröer
    FR Frankrijk
    GA Gabon
    GB Verenigd Koninkrijk
    GD Grenada
    GE Georgië
    GF Frans-Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Groenland
    GM Gambia
    GN Guinee
    GP Guadeloupe
    GQ Equatoriaal-Guinea
    GR Griekenland
    GS Zuid-Georgia en Zuidelijke Sandwicheilanden
    GT Guatemala
    GU Guam
    GW Guinee-Bissau
    GY Guyana
    HK Hongkong SAR van China
    HM Heard en McDonaldeilanden
    HN Honduras
    HR Kroatië
    HT Haïti
    HU Hongarije
    ID Indonesië
    IE Ierland
    IL Israël
    IM Isle of Man
    IN India
    IO Brits Indische Oceaanterritorium
    IQ Irak
    IR Iran
    IS IJsland
    IT Italië
    JE Jersey
    JM Jamaica
    JO Jordanië
    JP Japan
    KE Kenia
    KG Kirgizië
    KH Cambodja
    KI Kiribati
    KM Comoren
    KN Saint Kitts en Nevis
    KP Noord-Korea
    KR Zuid-Korea
    KW Koeweit
    KY Kaaimaneilanden
    KZ Kazachstan
    LA Laos
    LB Libanon
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litouwen
    LU Luxemburg
    LV Letland
    LY Libië
    MA Marokko
    MC Monaco
    MD Moldavië
    ME Montenegro
    MF Saint-Martin
    MG Madagaskar
    MH Marshalleilanden
    MK Noord-Macedonië
    ML Mali
    MM Myanmar (Birma)
    MN Mongolië
    MO Macau SAR van China
    MP Noordelijke Marianen
    MQ Martinique
    MR Mauritanië
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldiven
    MW Malawi
    MX Mexico
    MY Maleisië
    MZ Mozambique
    NA Namibië
    NC Nieuw-Caledonië
    NE Niger
    NF Norfolk
    NG Nigeria
    NI Nicaragua
    NL Nederland
    NO Noorwegen
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nieuw-Zeeland
    OM Oman
    PA Panama
    PE Peru
    PF Frans-Polynesië
    PG Papoea-Nieuw-Guinea
    PH Filipijnen
    PK Pakistan
    PL Polen
    PM Saint-Pierre en Miquelon
    PN Pitcairneilanden
    PR Puerto Rico
    PS Palestijnse gebieden
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Roemenië
    RS Servië
    RU Rusland
    RW Rwanda
    SA Saoedi-Arabië
    SB Salomonseilanden
    SC Seychellen
    SD Soedan
    SE Zweden
    SG Singapore
    SH Sint-Helena
    SI Slovenië
    SJ Spitsbergen en Jan Mayen
    SK Slowakije
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalië
    SR Suriname
    SS Zuid-Soedan
    ST Sao Tomé en Principe
    SV El Salvador
    SX Sint-Maarten
    SY Syrië
    SZ Eswatini
    TC Turks- en Caicoseilanden
    TD Tsjaad
    TF Franse Gebieden in de zuidelijke Indische Oceaan
    TG Togo
    TH Thailand
    TJ Tadzjikistan
    TK Tokelau
    TL Oost-Timor
    TM Turkmenistan
    TN Tunesië
    TO Tonga
    TR Turkije
    TT Trinidad en Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Oekraïne
    UG Oeganda
    UM Kleine afgelegen eilanden van de Verenigde Staten
    US Verenigde Staten
    UY Uruguay
    UZ Oezbekistan
    VA Vaticaanstad
    VC Saint Vincent en de Grenadines
    VE Venezuela
    VG Britse Maagdeneilanden
    VI Amerikaanse Maagdeneilanden
    VN Vietnam
    VU Vanuatu
    WF Wallis en Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Mayotte
    ZA Zuid-Afrika
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName =
    Cldr.Dutch.countryCodeToName