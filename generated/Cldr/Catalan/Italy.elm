module Cldr.Catalan.Italy exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Catalan


{-| Name for `CountryCode` in Catalan - Italy.

This is identical to the Catalan version.

    AD Andorra
    AE Emirats Àrabs Units
    AF Afganistan
    AG Antigua i Barbuda
    AI Anguilla
    AL Albània
    AM Armènia
    AO Angola
    AQ Antàrtida
    AR Argentina
    AS Samoa Nord-americana
    AT Àustria
    AU Austràlia
    AW Aruba
    AX Illes Åland
    AZ Azerbaidjan
    BA Bòsnia i Hercegovina
    BB Barbados
    BD Bangladesh
    BE Bèlgica
    BF Burkina Faso
    BG Bulgària
    BH Bahrain
    BI Burundi
    BJ Benín
    BL Saint-Barthélemy
    BM Bermudes
    BN Brunei
    BO Bolívia
    BQ Carib Neerlandès
    BR Brasil
    BS Bahames
    BT Bhutan
    BV Bouvet
    BW Botswana
    BY Belarús
    BZ Belize
    CA Canadà
    CC Illes Cocos
    CD República Democràtica del Congo
    CF República Centreafricana
    CG República del Congo
    CH Suïssa
    CI Côte d’Ivoire
    CK Illes Cook
    CL Xile
    CM Camerun
    CN Xina
    CO Colòmbia
    CR Costa Rica
    CU Cuba
    CV Cap Verd
    CW Curaçao
    CX Illa Christmas
    CY Xipre
    CZ República Txeca
    DE Alemanya
    DJ Djibouti
    DK Dinamarca
    DM Dominica
    DO República Dominicana
    DZ Algèria
    EC Equador
    EE Estònia
    EG Egipte
    EH Sàhara Occidental
    ER Eritrea
    ES Espanya
    ET Etiòpia
    FI Finlàndia
    FJ Fiji
    FK Illes Malvines
    FM Micronèsia
    FO Illes Fèroe
    FR França
    GA Gabon
    GB Regne Unit
    GD Grenada
    GE Geòrgia
    GF Guaiana Francesa
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Groenlàndia
    GM Gàmbia
    GN Guinea
    GP Guadalupe
    GQ Guinea Equatorial
    GR Grècia
    GS Illes Geòrgia del Sud i Sandwich del Sud
    GT Guatemala
    GU Guam
    GW Guinea Bissau
    GY Guyana
    HK Hong Kong
    HM Illa Heard i Illes McDonald
    HN Hondures
    HR Croàcia
    HT Haití
    HU Hongria
    ID Indonèsia
    IE Irlanda
    IL Israel
    IM Illa de Man
    IN Índia
    IO Territori Britànic de l’Oceà Índic
    IQ Iraq
    IR Iran
    IS Islàndia
    IT Itàlia
    JE Jersey
    JM Jamaica
    JO Jordània
    JP Japó
    KE Kenya
    KG Kirguizstan
    KH Cambodja
    KI Kiribati
    KM Comores
    KN Saint Kitts i Nevis
    KP Corea del Nord
    KR Corea del Sud
    KW Kuwait
    KY Illes Caiman
    KZ Kazakhstan
    LA Laos
    LB Líban
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Libèria
    LS Lesotho
    LT Lituània
    LU Luxemburg
    LV Letònia
    LY Líbia
    MA Marroc
    MC Mònaco
    MD Moldàvia
    ME Montenegro
    MF Saint Martin
    MG Madagascar
    MH Illes Marshall
    MK Macedònia del Nord
    ML Mali
    MM Myanmar (Birmània)
    MN Mongòlia
    MO Macau
    MP Illes Mariannes Septentrionals
    MQ Martinica
    MR Mauritània
    MS Montserrat
    MT Malta
    MU Maurici
    MV Maldives
    MW Malawi
    MX Mèxic
    MY Malàisia
    MZ Moçambic
    NA Namíbia
    NC Nova Caledònia
    NE Níger
    NF Norfolk
    NG Nigèria
    NI Nicaragua
    NL Països Baixos
    NO Noruega
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nova Zelanda
    OM Oman
    PA Panamà
    PE Perú
    PF Polinèsia Francesa
    PG Papua Nova Guinea
    PH Filipines
    PK Pakistan
    PL Polònia
    PM Saint-Pierre-et-Miquelon
    PN Illes Pitcairn
    PR Puerto Rico
    PS Palestina
    PT Portugal
    PW Palau
    PY Paraguai
    QA Qatar
    RE Illa de la Reunió
    RO Romania
    RS Sèrbia
    RU Rússia
    RW Ruanda
    SA Aràbia Saudita
    SB Illes Salomó
    SC Seychelles
    SD Sudan
    SE Suècia
    SG Singapur
    SH Santa Helena
    SI Eslovènia
    SJ Svalbard i Jan Mayen
    SK Eslovàquia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somàlia
    SR Surinam
    SS Sudan del Sud
    ST São Tomé i Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Síria
    SZ Eswatini
    TC Illes Turks i Caicos
    TD Txad
    TF Territoris Australs Francesos
    TG Togo
    TH Tailàndia
    TJ Tadjikistan
    TK Tokelau
    TL Timor Oriental
    TM Turkmenistan
    TN Tunísia
    TO Tonga
    TR Turquia
    TT Trinitat i Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzània
    UA Ucraïna
    UG Uganda
    UM Illes Perifèriques Menors dels EUA
    US Estats Units
    UY Uruguai
    UZ Uzbekistan
    VA Ciutat del Vaticà
    VC Saint Vincent i les Grenadines
    VE Veneçuela
    VG Illes Verges britàniques
    VI Illes Verges nord-americanes
    VN Vietnam
    VU Vanuatu
    WF Wallis i Futuna
    WS Samoa
    XK Kosovo
    YE Iemen
    YT Mayotte
    ZA República de Sud-àfrica
    ZM Zàmbia
    ZW Zimbàbue
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName =
    Cldr.Catalan.countryCodeToName