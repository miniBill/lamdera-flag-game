module Cldr.Galician exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Galician.

    AD Andorra
    AE Os Emiratos Árabes Unidos
    AF Afganistán
    AG Antigua e Barbuda
    AI Anguila
    AL Albania
    AM Armenia
    AO Angola
    AQ A Antártida
    AR A Arxentina
    AS Samoa Americana
    AT Austria
    AU Australia
    AW Aruba
    AX Illas Åland
    AZ Acerbaixán
    BA Bosnia e Hercegovina
    BB Barbados
    BD Bangladesh
    BE Bélxica
    BF Burkina Faso
    BG Bulgaria
    BH Bahrain
    BI Burundi
    BJ Benín
    BL Saint Barthélemy
    BM Illas Bermudas
    BN Brunei
    BO Bolivia
    BQ Caribe Neerlandés
    BR O Brasil
    BS Bahamas
    BT Bután
    BV Illa Bouvet
    BW Botswana
    BY Belarús
    BZ Belize
    CA O Canadá
    CC Illas Cocos (Keeling)
    CD Congo (RDC)
    CF República Centroafricana
    CG Congo (RC)
    CH Suíza
    CI Côte d’Ivoire
    CK Illas Cook
    CL Chile
    CM Camerún
    CN A China
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Cabo Verde
    CW Curaçao
    CX Illa Christmas
    CY Chipre
    CZ República Checa
    DE Alemaña
    DJ Djibuti
    DK Dinamarca
    DM Dominica
    DO República Dominicana
    DZ Alxeria
    EC Ecuador
    EE Estonia
    EG Exipto
    EH O Sáhara Occidental
    ER Eritrea
    ES España
    ET Etiopía
    FI Finlandia
    FJ Fixi
    FK Illas Malvinas
    FM Micronesia
    FO Illas Feroe
    FR Francia
    GA Gabón
    GB O Reino Unido
    GD Granada
    GE Xeorxia
    GF Güiana Francesa
    GG Guernsey
    GH Ghana
    GI Xibraltar
    GL Groenlandia
    GM Gambia
    GN Guinea
    GP Guadalupe
    GQ Guinea Ecuatorial
    GR Grecia
    GS Illas Xeorxia do Sur e Sandwich do Sur
    GT Guatemala
    GU Guam
    GW A Guinea Bissau
    GY Güiana
    HK Hong Kong
    HM Illa Heard e Illas McDonald
    HN Honduras
    HR Croacia
    HT Haití
    HU Hungría
    ID Indonesia
    IE Irlanda
    IL Israel
    IM Illa de Man
    IN A India
    IO Territorio Británico do Océano Índico
    IQ Iraq
    IR Irán
    IS Islandia
    IT Italia
    JE Jersey
    JM Xamaica
    JO Xordania
    JP O Xapón
    KE Kenya
    KG Kirguizistán
    KH Camboxa
    KI Kiribati
    KM Comores
    KN Saint Kitts e Nevis
    KP Corea do Norte
    KR Corea do Sur
    KW Kuwait
    KY Illas Caimán
    KZ Kazakistán
    LA Laos
    LB O Líbano
    LC Santa Lucía
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lituania
    LU Luxemburgo
    LV Letonia
    LY Libia
    MA Marrocos
    MC Mónaco
    MD Moldavia
    ME Montenegro
    MF Saint Martin
    MG Madagascar
    MH Illas Marshall
    MK Macedonia do Norte
    ML Malí
    MM Myanmar (Birmania)
    MN Mongolia
    MO Macau
    MP Illas Marianas do Norte
    MQ Martinica
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauricio
    MV Maldivas
    MW Malawi
    MX México
    MY Malaisia
    MZ Mozambique
    NA Namibia
    NC Nova Caledonia
    NE Níxer
    NF Illa Norfolk
    NG Nixeria
    NI Nicaragua
    NL Países Baixos
    NO Noruega
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nova Zelandia
    OM Omán
    PA Panamá
    PE O Perú
    PF A Polinesia Francesa
    PG Papúa-Nova Guinea
    PH Filipinas
    PK Paquistán
    PL Polonia
    PM Saint Pierre et Miquelon
    PN Illas Pitcairn
    PR Porto Rico
    PS Palestina
    PT Portugal
    PW Palau
    PY O Paraguai
    QA Qatar
    RE Reunión
    RO Romanía
    RS Serbia
    RU Rusia
    RW Ruanda
    SA Arabia Saudita
    SB Illas Salomón
    SC Seychelles
    SD O Sudán
    SE Suecia
    SG Singapur
    SH Santa Helena
    SI Eslovenia
    SJ Svalbard e Jan Mayen
    SK Eslovaquia
    SL Serra Leoa
    SM San Marino
    SN Senegal
    SO Somalia
    SR Suriname
    SS O Sudán do Sur
    ST San Tomé e Príncipe
    SV O Salvador
    SX Sint Maarten
    SY Siria
    SZ Eswatini
    TC Illas Turks e Caicos
    TD Chad
    TF Territorios Austrais Franceses
    TG Togo
    TH Tailandia
    TJ Taxiquistán
    TK Tokelau
    TL Timor Leste
    TM Turkmenistán
    TN Tunisia
    TO Tonga
    TR Turquía
    TT Trinidad e Tobago
    TV Tuvalu
    TW Taiwán
    TZ Tanzania
    UA Ucraína
    UG Uganda
    UM Illas Menores Distantes dos Estados Unidos
    US Os Estados Unidos
    UY O Uruguai
    UZ Uzbekistán
    VA Cidade do Vaticano
    VC San Vicente e As Granadinas
    VE Venezuela
    VG Illas Virxes Británicas
    VI Illas Virxes Estadounidenses
    VN Vietnam
    VU Vanuatu
    WF Wallis e Futuna
    WS Samoa
    XK Kosovo
    YE O Iemen
    YT Mayotte
    ZA Suráfrica
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Os Emiratos Árabes Unidos"

        Cldr.AF ->
            "Afganistán"

        Cldr.AG ->
            "Antigua e Barbuda"

        Cldr.AI ->
            "Anguila"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "A Antártida"

        Cldr.AR ->
            "A Arxentina"

        Cldr.AS ->
            "Samoa Americana"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Illas Åland"

        Cldr.AZ ->
            "Acerbaixán"

        Cldr.BA ->
            "Bosnia e Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Bélxica"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaria"

        Cldr.BH ->
            "Bahrain"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benín"

        Cldr.BL ->
            "Saint Barthélemy"

        Cldr.BM ->
            "Illas Bermudas"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Caribe Neerlandés"

        Cldr.BR ->
            "O Brasil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bután"

        Cldr.BV ->
            "Illa Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarús"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "O Canadá"

        Cldr.CC ->
            "Illas Cocos (Keeling)"

        Cldr.CD ->
            "Congo (RDC)"

        Cldr.CF ->
            "República Centroafricana"

        Cldr.CG ->
            "Congo (RC)"

        Cldr.CH ->
            "Suíza"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Illas Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Camerún"

        Cldr.CN ->
            "A China"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cabo Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Illa Christmas"

        Cldr.CY ->
            "Chipre"

        Cldr.CZ ->
            "República Checa"

        Cldr.DE ->
            "Alemaña"

        Cldr.DJ ->
            "Djibuti"

        Cldr.DK ->
            "Dinamarca"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "República Dominicana"

        Cldr.DZ ->
            "Alxeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Exipto"

        Cldr.EH ->
            "O Sáhara Occidental"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "España"

        Cldr.ET ->
            "Etiopía"

        Cldr.FI ->
            "Finlandia"

        Cldr.FJ ->
            "Fixi"

        Cldr.FK ->
            "Illas Malvinas"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Illas Feroe"

        Cldr.FR ->
            "Francia"

        Cldr.GA ->
            "Gabón"

        Cldr.GB ->
            "O Reino Unido"

        Cldr.GD ->
            "Granada"

        Cldr.GE ->
            "Xeorxia"

        Cldr.GF ->
            "Güiana Francesa"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Xibraltar"

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
            "Illas Xeorxia do Sur e Sandwich do Sur"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "A Guinea Bissau"

        Cldr.GY ->
            "Güiana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Illa Heard e Illas McDonald"

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
            "Illa de Man"

        Cldr.IN ->
            "A India"

        Cldr.IO ->
            "Territorio Británico do Océano Índico"

        Cldr.IQ ->
            "Iraq"

        Cldr.IR ->
            "Irán"

        Cldr.IS ->
            "Islandia"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Xamaica"

        Cldr.JO ->
            "Xordania"

        Cldr.JP ->
            "O Xapón"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirguizistán"

        Cldr.KH ->
            "Camboxa"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comores"

        Cldr.KN ->
            "Saint Kitts e Nevis"

        Cldr.KP ->
            "Corea do Norte"

        Cldr.KR ->
            "Corea do Sur"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Illas Caimán"

        Cldr.KZ ->
            "Kazakistán"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "O Líbano"

        Cldr.LC ->
            "Santa Lucía"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Lituania"

        Cldr.LU ->
            "Luxemburgo"

        Cldr.LV ->
            "Letonia"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Marrocos"

        Cldr.MC ->
            "Mónaco"

        Cldr.MD ->
            "Moldavia"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Illas Marshall"

        Cldr.MK ->
            "Macedonia do Norte"

        Cldr.ML ->
            "Malí"

        Cldr.MM ->
            "Myanmar (Birmania)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macau"

        Cldr.MP ->
            "Illas Marianas do Norte"

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
            "Malawi"

        Cldr.MX ->
            "México"

        Cldr.MY ->
            "Malaisia"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Nova Caledonia"

        Cldr.NE ->
            "Níxer"

        Cldr.NF ->
            "Illa Norfolk"

        Cldr.NG ->
            "Nixeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Países Baixos"

        Cldr.NO ->
            "Noruega"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nova Zelandia"

        Cldr.OM ->
            "Omán"

        Cldr.PA ->
            "Panamá"

        Cldr.PE ->
            "O Perú"

        Cldr.PF ->
            "A Polinesia Francesa"

        Cldr.PG ->
            "Papúa-Nova Guinea"

        Cldr.PH ->
            "Filipinas"

        Cldr.PK ->
            "Paquistán"

        Cldr.PL ->
            "Polonia"

        Cldr.PM ->
            "Saint Pierre et Miquelon"

        Cldr.PN ->
            "Illas Pitcairn"

        Cldr.PR ->
            "Porto Rico"

        Cldr.PS ->
            "Palestina"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "O Paraguai"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Reunión"

        Cldr.RO ->
            "Romanía"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rusia"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Arabia Saudita"

        Cldr.SB ->
            "Illas Salomón"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "O Sudán"

        Cldr.SE ->
            "Suecia"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Santa Helena"

        Cldr.SI ->
            "Eslovenia"

        Cldr.SJ ->
            "Svalbard e Jan Mayen"

        Cldr.SK ->
            "Eslovaquia"

        Cldr.SL ->
            "Serra Leoa"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "O Sudán do Sur"

        Cldr.ST ->
            "San Tomé e Príncipe"

        Cldr.SV ->
            "O Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Siria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Illas Turks e Caicos"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Territorios Austrais Franceses"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailandia"

        Cldr.TJ ->
            "Taxiquistán"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor Leste"

        Cldr.TM ->
            "Turkmenistán"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turquía"

        Cldr.TT ->
            "Trinidad e Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwán"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ucraína"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Illas Menores Distantes dos Estados Unidos"

        Cldr.US ->
            "Os Estados Unidos"

        Cldr.UY ->
            "O Uruguai"

        Cldr.UZ ->
            "Uzbekistán"

        Cldr.VA ->
            "Cidade do Vaticano"

        Cldr.VC ->
            "San Vicente e As Granadinas"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Illas Virxes Británicas"

        Cldr.VI ->
            "Illas Virxes Estadounidenses"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis e Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "O Iemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Suráfrica"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"