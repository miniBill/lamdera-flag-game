module Cldr.Spanish exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Spanish.

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
    AX Islas Aland
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
    CD República Democrática del Congo
    CF República Centroafricana
    CG Congo
    CH Suiza
    CI Côte d’Ivoire
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
    CZ Chequia
    DE Alemania
    DJ Yibuti
    DK Dinamarca
    DM Dominica
    DO República Dominicana
    DZ Argelia
    EC Ecuador
    EE Estonia
    EG Egipto
    EH Sáhara Occidental
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
    HK RAE de Hong Kong (China)
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
    MO RAE de Macao (China)
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
    PS Territorios Palestinos
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
    TL Timor-Leste
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
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Emiratos Árabes Unidos"

        Cldr.AF ->
            "Afganistán"

        Cldr.AG ->
            "Antigua y Barbuda"

        Cldr.AI ->
            "Anguila"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antártida"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa Americana"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Islas Aland"

        Cldr.AZ ->
            "Azerbaiyán"

        Cldr.BA ->
            "Bosnia y Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladés"

        Cldr.BE ->
            "Bélgica"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaria"

        Cldr.BH ->
            "Baréin"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benín"

        Cldr.BL ->
            "San Bartolomé"

        Cldr.BM ->
            "Bermudas"

        Cldr.BN ->
            "Brunéi"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Caribe neerlandés"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bután"

        Cldr.BV ->
            "Isla Bouvet"

        Cldr.BW ->
            "Botsuana"

        Cldr.BY ->
            "Bielorrusia"

        Cldr.BZ ->
            "Belice"

        Cldr.CA ->
            "Canadá"

        Cldr.CC ->
            "Islas Cocos"

        Cldr.CD ->
            "República Democrática del Congo"

        Cldr.CF ->
            "República Centroafricana"

        Cldr.CG ->
            "Congo"

        Cldr.CH ->
            "Suiza"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Islas Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Camerún"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cabo Verde"

        Cldr.CW ->
            "Curazao"

        Cldr.CX ->
            "Isla de Navidad"

        Cldr.CY ->
            "Chipre"

        Cldr.CZ ->
            "Chequia"

        Cldr.DE ->
            "Alemania"

        Cldr.DJ ->
            "Yibuti"

        Cldr.DK ->
            "Dinamarca"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "República Dominicana"

        Cldr.DZ ->
            "Argelia"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egipto"

        Cldr.EH ->
            "Sáhara Occidental"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "España"

        Cldr.ET ->
            "Etiopía"

        Cldr.FI ->
            "Finlandia"

        Cldr.FJ ->
            "Fiyi"

        Cldr.FK ->
            "Islas Malvinas"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Islas Feroe"

        Cldr.FR ->
            "Francia"

        Cldr.GA ->
            "Gabón"

        Cldr.GB ->
            "Reino Unido"

        Cldr.GD ->
            "Granada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guayana Francesa"

        Cldr.GG ->
            "Guernesey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenlandia"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadalupe"

        Cldr.GQ ->
            "Guinea Ecuatorial"

        Cldr.GR ->
            "Grecia"

        Cldr.GS ->
            "Islas Georgia del Sur y Sandwich del Sur"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bisáu"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "RAE de Hong Kong (China)"

        Cldr.HM ->
            "Islas Heard y McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croacia"

        Cldr.HT ->
            "Haití"

        Cldr.HU ->
            "Hungría"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Irlanda"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Isla de Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Territorio Británico del Océano Índico"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Irán"

        Cldr.IS ->
            "Islandia"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordania"

        Cldr.JP ->
            "Japón"

        Cldr.KE ->
            "Kenia"

        Cldr.KG ->
            "Kirguistán"

        Cldr.KH ->
            "Camboya"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comoras"

        Cldr.KN ->
            "San Cristóbal y Nieves"

        Cldr.KP ->
            "Corea del Norte"

        Cldr.KR ->
            "Corea del Sur"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Islas Caimán"

        Cldr.KZ ->
            "Kazajistán"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Líbano"

        Cldr.LC ->
            "Santa Lucía"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Lituania"

        Cldr.LU ->
            "Luxemburgo"

        Cldr.LV ->
            "Letonia"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Marruecos"

        Cldr.MC ->
            "Mónaco"

        Cldr.MD ->
            "Moldavia"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "San Martín"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Islas Marshall"

        Cldr.MK ->
            "Macedonia del Norte"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birmania)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "RAE de Macao (China)"

        Cldr.MP ->
            "Islas Marianas del Norte"

        Cldr.MQ ->
            "Martinica"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauricio"

        Cldr.MV ->
            "Maldivas"

        Cldr.MW ->
            "Malaui"

        Cldr.MX ->
            "México"

        Cldr.MY ->
            "Malasia"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Nueva Caledonia"

        Cldr.NE ->
            "Níger"

        Cldr.NF ->
            "Isla Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Países Bajos"

        Cldr.NO ->
            "Noruega"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nueva Zelanda"

        Cldr.OM ->
            "Omán"

        Cldr.PA ->
            "Panamá"

        Cldr.PE ->
            "Perú"

        Cldr.PF ->
            "Polinesia Francesa"

        Cldr.PG ->
            "Papúa Nueva Guinea"

        Cldr.PH ->
            "Filipinas"

        Cldr.PK ->
            "Pakistán"

        Cldr.PL ->
            "Polonia"

        Cldr.PM ->
            "San Pedro y Miquelón"

        Cldr.PN ->
            "Islas Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Territorios Palestinos"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palaos"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Catar"

        Cldr.RE ->
            "Reunión"

        Cldr.RO ->
            "Rumanía"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rusia"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Arabia Saudí"

        Cldr.SB ->
            "Islas Salomón"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudán"

        Cldr.SE ->
            "Suecia"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Santa Elena"

        Cldr.SI ->
            "Eslovenia"

        Cldr.SJ ->
            "Svalbard y Jan Mayen"

        Cldr.SK ->
            "Eslovaquia"

        Cldr.SL ->
            "Sierra Leona"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Sudán del Sur"

        Cldr.ST ->
            "Santo Tomé y Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Siria"

        Cldr.SZ ->
            "Esuatini"

        Cldr.TC ->
            "Islas Turcas y Caicos"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Territorios Australes Franceses"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailandia"

        Cldr.TJ ->
            "Tayikistán"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Turkmenistán"

        Cldr.TN ->
            "Túnez"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turquía"

        Cldr.TT ->
            "Trinidad y Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwán"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ucrania"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Islas menores alejadas de EE. UU."

        Cldr.US ->
            "Estados Unidos"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistán"

        Cldr.VA ->
            "Ciudad del Vaticano"

        Cldr.VC ->
            "San Vicente y las Granadinas"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Islas Vírgenes Británicas"

        Cldr.VI ->
            "Islas Vírgenes de EE. UU."

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis y Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Sudáfrica"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabue"