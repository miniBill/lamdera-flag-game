module Cldr.Swedish.ÅlandIslands exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Swedish


{-| Name for `CountryCode` in Swedish - Åland Islands.

This is identical to the Swedish version.

    AD Andorra
    AE Förenade Arabemiraten
    AF Afghanistan
    AG Antigua och Barbuda
    AI Anguilla
    AL Albanien
    AM Armenien
    AO Angola
    AQ Antarktis
    AR Argentina
    AS Amerikanska Samoa
    AT Österrike
    AU Australien
    AW Aruba
    AX Åland
    AZ Azerbajdzjan
    BA Bosnien och Hercegovina
    BB Barbados
    BD Bangladesh
    BE Belgien
    BF Burkina Faso
    BG Bulgarien
    BH Bahrain
    BI Burundi
    BJ Benin
    BL S:t Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Karibiska Nederländerna
    BR Brasilien
    BS Bahamas
    BT Bhutan
    BV Bouvetön
    BW Botswana
    BY Vitryssland
    BZ Belize
    CA Kanada
    CC Kokosöarna
    CD Kongo-Kinshasa
    CF Centralafrikanska republiken
    CG Kongo-Brazzaville
    CH Schweiz
    CI Côte d’Ivoire
    CK Cooköarna
    CL Chile
    CM Kamerun
    CN Kina
    CO Colombia
    CR Costa Rica
    CU Kuba
    CV Kap Verde
    CW Curaçao
    CX Julön
    CY Cypern
    CZ Tjeckien
    DE Tyskland
    DJ Djibouti
    DK Danmark
    DM Dominica
    DO Dominikanska republiken
    DZ Algeriet
    EC Ecuador
    EE Estland
    EG Egypten
    EH Västsahara
    ER Eritrea
    ES Spanien
    ET Etiopien
    FI Finland
    FJ Fiji
    FK Falklandsöarna
    FM Mikronesien
    FO Färöarna
    FR Frankrike
    GA Gabon
    GB Storbritannien
    GD Grenada
    GE Georgien
    GF Franska Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Grönland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Ekvatorialguinea
    GR Grekland
    GS Sydgeorgien och Sydsandwichöarna
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hongkong SAR
    HM Heardön och McDonaldöarna
    HN Honduras
    HR Kroatien
    HT Haiti
    HU Ungern
    ID Indonesien
    IE Irland
    IL Israel
    IM Isle of Man
    IN Indien
    IO Brittiska territoriet i Indiska oceanen
    IQ Irak
    IR Iran
    IS Island
    IT Italien
    JE Jersey
    JM Jamaica
    JO Jordanien
    JP Japan
    KE Kenya
    KG Kirgizistan
    KH Kambodja
    KI Kiribati
    KM Komorerna
    KN S:t Kitts och Nevis
    KP Nordkorea
    KR Sydkorea
    KW Kuwait
    KY Caymanöarna
    KZ Kazakstan
    LA Laos
    LB Libanon
    LC S:t Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litauen
    LU Luxemburg
    LV Lettland
    LY Libyen
    MA Marocko
    MC Monaco
    MD Moldavien
    ME Montenegro
    MF Saint-Martin
    MG Madagaskar
    MH Marshallöarna
    MK Nordmakedonien
    ML Mali
    MM Myanmar (Burma)
    MN Mongoliet
    MO Macao SAR
    MP Nordmarianerna
    MQ Martinique
    MR Mauretanien
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldiverna
    MW Malawi
    MX Mexiko
    MY Malaysia
    MZ Moçambique
    NA Namibia
    NC Nya Kaledonien
    NE Niger
    NF Norfolkön
    NG Nigeria
    NI Nicaragua
    NL Nederländerna
    NO Norge
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nya Zeeland
    OM Oman
    PA Panama
    PE Peru
    PF Franska Polynesien
    PG Papua Nya Guinea
    PH Filippinerna
    PK Pakistan
    PL Polen
    PM S:t Pierre och Miquelon
    PN Pitcairnöarna
    PR Puerto Rico
    PS Palestinska territorierna
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Rumänien
    RS Serbien
    RU Ryssland
    RW Rwanda
    SA Saudiarabien
    SB Salomonöarna
    SC Seychellerna
    SD Sudan
    SE Sverige
    SG Singapore
    SH S:t Helena
    SI Slovenien
    SJ Svalbard och Jan Mayen
    SK Slovakien
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Surinam
    SS Sydsudan
    ST São Tomé och Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Syrien
    SZ Eswatini
    TC Turks- och Caicosöarna
    TD Tchad
    TF Franska sydterritorierna
    TG Togo
    TH Thailand
    TJ Tadzjikistan
    TK Tokelauöarna
    TL Östtimor
    TM Turkmenistan
    TN Tunisien
    TO Tonga
    TR Turkiet
    TT Trinidad och Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraina
    UG Uganda
    UM USA:s yttre öar
    US USA
    UY Uruguay
    UZ Uzbekistan
    VA Vatikanstaten
    VC S:t Vincent och Grenadinerna
    VE Venezuela
    VG Brittiska Jungfruöarna
    VI Amerikanska Jungfruöarna
    VN Vietnam
    VU Vanuatu
    WF Wallis- och Futunaöarna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Mayotte
    ZA Sydafrika
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName =
    Cldr.Swedish.countryCodeToName