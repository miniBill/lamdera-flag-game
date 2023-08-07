module Cldr.Spanish.Chile exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Spanish.Argentina


{-| Name for `CountryCode` in Spanish - Chile.

    AD Andorra
    AE Emiratos Árabes Unidos
    AF Afganistán
    AG Antigua y Barbuda
    AI Anguila
    AL Albania
    AM Armenia
    AO Angola
    AQ Antártida
    AR Argentina
    AS Samoa Americana
    AT Austria
    AU Australia
    AW Aruba
    AX Islas Åland
    AZ Azerbaiyán
    BA Bosnia y Herzegovina
    BB Barbados
    BD Bangladés
    BE Bélgica
    BF Burkina Faso
    BG Bulgaria
    BH Baréin
    BI Burundi
    BJ Benín
    BL San Bartolomé
    BM Bermudas
    BN Brunéi
    BO Bolivia
    BQ Caribe neerlandés
    BR Brasil
    BS Bahamas
    BT Bután
    BV Isla Bouvet
    BW Botsuana
    BY Bielorrusia
    BZ Belice
    CA Canadá
    CC Islas Cocos
    CD Congo (República Democrática del Congo)
    CF República Centroafricana
    CG Congo (República)
    CH Suiza
    CI Costa de Marfil
    CK Islas Cook
    CL Chile
    CM Camerún
    CN China
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Cabo Verde
    CW Curazao
    CX Isla de Navidad
    CY Chipre
    CZ República Checa
    DE Alemania
    DJ Yibuti
    DK Dinamarca
    DM Dominica
    DO República Dominicana
    DZ Argelia
    EC Ecuador
    EE Estonia
    EG Egipto
    EH Sahara Occidental
    ER Eritrea
    ES España
    ET Etiopía
    FI Finlandia
    FJ Fiyi
    FK Islas Malvinas
    FM Micronesia
    FO Islas Feroe
    FR Francia
    GA Gabón
    GB Reino Unido
    GD Granada
    GE Georgia
    GF Guayana Francesa
    GG Guernesey
    GH Ghana
    GI Gibraltar
    GL Groenlandia
    GM Gambia
    GN Guinea
    GP Guadalupe
    GQ Guinea Ecuatorial
    GR Grecia
    GS Islas Georgia del Sur y Sandwich del Sur
    GT Guatemala
    GU Guam
    GW Guinea-Bisáu
    GY Guyana
    HK Hong Kong
    HM Islas Heard y McDonald
    HN Honduras
    HR Croacia
    HT Haití
    HU Hungría
    ID Indonesia
    IE Irlanda
    IL Israel
    IM Isla de Man
    IN India
    IO Territorio Británico del Océano Índico
    IQ Irak
    IR Irán
    IS Islandia
    IT Italia
    JE Jersey
    JM Jamaica
    JO Jordania
    JP Japón
    KE Kenia
    KG Kirguistán
    KH Camboya
    KI Kiribati
    KM Comoras
    KN San Cristóbal y Nieves
    KP Corea del Norte
    KR Corea del Sur
    KW Kuwait
    KY Islas Caimán
    KZ Kazajistán
    LA Laos
    LB Líbano
    LC Santa Lucía
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesoto
    LT Lituania
    LU Luxemburgo
    LV Letonia
    LY Libia
    MA Marruecos
    MC Mónaco
    MD Moldavia
    ME Montenegro
    MF San Martín
    MG Madagascar
    MH Islas Marshall
    MK Macedonia del Norte
    ML Mali
    MM Myanmar (Birmania)
    MN Mongolia
    MO Macao
    MP Islas Marianas del Norte
    MQ Martinica
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauricio
    MV Maldivas
    MW Malaui
    MX México
    MY Malasia
    MZ Mozambique
    NA Namibia
    NC Nueva Caledonia
    NE Níger
    NF Isla Norfolk
    NG Nigeria
    NI Nicaragua
    NL Países Bajos
    NO Noruega
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nueva Zelanda
    OM Omán
    PA Panamá
    PE Perú
    PF Polinesia Francesa
    PG Papúa Nueva Guinea
    PH Filipinas
    PK Pakistán
    PL Polonia
    PM San Pedro y Miquelón
    PN Islas Pitcairn
    PR Puerto Rico
    PS Palestina
    PT Portugal
    PW Palaos
    PY Paraguay
    QA Catar
    RE Reunión
    RO Rumanía
    RS Serbia
    RU Rusia
    RW Ruanda
    SA Arabia Saudí
    SB Islas Salomón
    SC Seychelles
    SD Sudán
    SE Suecia
    SG Singapur
    SH Santa Elena
    SI Eslovenia
    SJ Svalbard y Jan Mayen
    SK Eslovaquia
    SL Sierra Leona
    SM San Marino
    SN Senegal
    SO Somalia
    SR Surinam
    SS Sudán del Sur
    ST Santo Tomé y Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Siria
    SZ Esuatini
    TC Islas Turcas y Caicos
    TD Chad
    TF Territorios Australes Franceses
    TG Togo
    TH Tailandia
    TJ Tayikistán
    TK Tokelau
    TL Timor Oriental
    TM Turkmenistán
    TN Túnez
    TO Tonga
    TR Turquía
    TT Trinidad y Tobago
    TV Tuvalu
    TW Taiwán
    TZ Tanzania
    UA Ucrania
    UG Uganda
    UM Islas menores alejadas de EE. UU.
    US Estados Unidos
    UY Uruguay
    UZ Uzbekistán
    VA Ciudad del Vaticano
    VC San Vicente y las Granadinas
    VE Venezuela
    VG Islas Vírgenes Británicas
    VI Islas Vírgenes de EE. UU.
    VN Vietnam
    VU Vanuatu
    WF Wallis y Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA Sudáfrica
    ZM Zambia
    ZW Zimbabue
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.EH ->
            "Sahara Occidental"

        _ ->
            Cldr.Spanish.Argentina.countryCodeToName countryCode