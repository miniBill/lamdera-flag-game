module Cldr.Portuguese exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Portuguese.

    AD Andorra
    AE Emirados Árabes Unidos
    AF Afeganistão
    AG Antígua e Barbuda
    AI Anguila
    AL Albânia
    AM Armênia
    AO Angola
    AQ Antártida
    AR Argentina
    AS Samoa Americana
    AT Áustria
    AU Austrália
    AW Aruba
    AX Ilhas Aland
    AZ Azerbaijão
    BA Bósnia e Herzegovina
    BB Barbados
    BD Bangladesh
    BE Bélgica
    BF Burquina Faso
    BG Bulgária
    BH Barein
    BI Burundi
    BJ Benin
    BL São Bartolomeu
    BM Bermudas
    BN Brunei
    BO Bolívia
    BQ Países Baixos Caribenhos
    BR Brasil
    BS Bahamas
    BT Butão
    BV Ilha Bouvet
    BW Botsuana
    BY Bielorrússia
    BZ Belize
    CA Canadá
    CC Ilhas Cocos (Keeling)
    CD República Democrática do Congo
    CF República Centro-Africana
    CG Congo
    CH Suíça
    CI Costa do Marfim
    CK Ilhas Cook
    CL Chile
    CM Camarões
    CN China
    CO Colômbia
    CR Costa Rica
    CU Cuba
    CV Cabo Verde
    CW Curaçao
    CX Ilha Christmas
    CY Chipre
    CZ República Tcheca
    DE Alemanha
    DJ Djibuti
    DK Dinamarca
    DM Dominica
    DO República Dominicana
    DZ Argélia
    EC Equador
    EE Estônia
    EG Egito
    EH Saara Ocidental
    ER Eritreia
    ES Espanha
    ET Etiópia
    FI Finlândia
    FJ Fiji
    FK Ilhas Malvinas
    FM Micronésia
    FO Ilhas Faroé
    FR França
    GA Gabão
    GB Reino Unido
    GD Granada
    GE Geórgia
    GF Guiana Francesa
    GG Guernsey
    GH Gana
    GI Gibraltar
    GL Groenlândia
    GM Gâmbia
    GN Guiné
    GP Guadalupe
    GQ Guiné Equatorial
    GR Grécia
    GS Ilhas Geórgia do Sul e Sandwich do Sul
    GT Guatemala
    GU Guam
    GW Guiné-Bissau
    GY Guiana
    HK Hong Kong
    HM Ilhas Heard e McDonald
    HN Honduras
    HR Croácia
    HT Haiti
    HU Hungria
    ID Indonésia
    IE Irlanda
    IL Israel
    IM Ilha de Man
    IN Índia
    IO Território Britânico do Oceano Índico
    IQ Iraque
    IR Irã
    IS Islândia
    IT Itália
    JE Jersey
    JM Jamaica
    JO Jordânia
    JP Japão
    KE Quênia
    KG Quirguistão
    KH Camboja
    KI Quiribati
    KM Comores
    KN São Cristóvão e Névis
    KP Coreia do Norte
    KR Coreia do Sul
    KW Kuwait
    KY Ilhas Cayman
    KZ Cazaquistão
    LA Laos
    LB Líbano
    LC Santa Lúcia
    LI Liechtenstein
    LK Sri Lanka
    LR Libéria
    LS Lesoto
    LT Lituânia
    LU Luxemburgo
    LV Letônia
    LY Líbia
    MA Marrocos
    MC Mônaco
    MD Moldávia
    ME Montenegro
    MF São Martinho
    MG Madagascar
    MH Ilhas Marshall
    MK Macedônia do Norte
    ML Mali
    MM Mianmar (Birmânia)
    MN Mongólia
    MO Macau
    MP Ilhas Marianas do Norte
    MQ Martinica
    MR Mauritânia
    MS Montserrat
    MT Malta
    MU Maurício
    MV Maldivas
    MW Malaui
    MX México
    MY Malásia
    MZ Moçambique
    NA Namíbia
    NC Nova Caledônia
    NE Níger
    NF Ilha Norfolk
    NG Nigéria
    NI Nicarágua
    NL Países Baixos
    NO Noruega
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nova Zelândia
    OM Omã
    PA Panamá
    PE Peru
    PF Polinésia Francesa
    PG Papua-Nova Guiné
    PH Filipinas
    PK Paquistão
    PL Polônia
    PM São Pedro e Miquelão
    PN Ilhas Pitcairn
    PR Porto Rico
    PS Palestina
    PT Portugal
    PW Palau
    PY Paraguai
    QA Catar
    RE Reunião
    RO Romênia
    RS Sérvia
    RU Rússia
    RW Ruanda
    SA Arábia Saudita
    SB Ilhas Salomão
    SC Seicheles
    SD Sudão
    SE Suécia
    SG Singapura
    SH Santa Helena
    SI Eslovênia
    SJ Svalbard e Jan Mayen
    SK Eslováquia
    SL Serra Leoa
    SM San Marino
    SN Senegal
    SO Somália
    SR Suriname
    SS Sudão do Sul
    ST São Tomé e Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Síria
    SZ Essuatíni
    TC Ilhas Turcas e Caicos
    TD Chade
    TF Territórios Franceses do Sul
    TG Togo
    TH Tailândia
    TJ Tadjiquistão
    TK Tokelau
    TL República Democrática de Timor-Leste
    TM Turcomenistão
    TN Tunísia
    TO Tonga
    TR Turquia
    TT Trinidad e Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzânia
    UA Ucrânia
    UG Uganda
    UM Ilhas Menores Distantes dos EUA
    US Estados Unidos
    UY Uruguai
    UZ Uzbequistão
    VA Cidade do Vaticano
    VC São Vicente e Granadinas
    VE Venezuela
    VG Ilhas Virgens Britânicas
    VI Ilhas Virgens Americanas
    VN Vietnã
    VU Vanuatu
    WF Wallis e Futuna
    WS Samoa
    XK Kosovo
    YE Iêmen
    YT Mayotte
    ZA África do Sul
    ZM Zâmbia
    ZW Zimbábue
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Emirados Árabes Unidos"

        Cldr.AF ->
            "Afeganistão"

        Cldr.AG ->
            "Antígua e Barbuda"

        Cldr.AI ->
            "Anguila"

        Cldr.AL ->
            "Albânia"

        Cldr.AM ->
            "Armênia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antártida"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa Americana"

        Cldr.AT ->
            "Áustria"

        Cldr.AU ->
            "Austrália"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ilhas Aland"

        Cldr.AZ ->
            "Azerbaijão"

        Cldr.BA ->
            "Bósnia e Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Bélgica"

        Cldr.BF ->
            "Burquina Faso"

        Cldr.BG ->
            "Bulgária"

        Cldr.BH ->
            "Barein"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "São Bartolomeu"

        Cldr.BM ->
            "Bermudas"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolívia"

        Cldr.BQ ->
            "Países Baixos Caribenhos"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Butão"

        Cldr.BV ->
            "Ilha Bouvet"

        Cldr.BW ->
            "Botsuana"

        Cldr.BY ->
            "Bielorrússia"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canadá"

        Cldr.CC ->
            "Ilhas Cocos (Keeling)"

        Cldr.CD ->
            "República Democrática do Congo"

        Cldr.CF ->
            "República Centro-Africana"

        Cldr.CG ->
            "Congo"

        Cldr.CH ->
            "Suíça"

        Cldr.CI ->
            "Costa do Marfim"

        Cldr.CK ->
            "Ilhas Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Camarões"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Colômbia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cabo Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Ilha Christmas"

        Cldr.CY ->
            "Chipre"

        Cldr.CZ ->
            "República Tcheca"

        Cldr.DE ->
            "Alemanha"

        Cldr.DJ ->
            "Djibuti"

        Cldr.DK ->
            "Dinamarca"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "República Dominicana"

        Cldr.DZ ->
            "Argélia"

        Cldr.EC ->
            "Equador"

        Cldr.EE ->
            "Estônia"

        Cldr.EG ->
            "Egito"

        Cldr.EH ->
            "Saara Ocidental"

        Cldr.ER ->
            "Eritreia"

        Cldr.ES ->
            "Espanha"

        Cldr.ET ->
            "Etiópia"

        Cldr.FI ->
            "Finlândia"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Ilhas Malvinas"

        Cldr.FM ->
            "Micronésia"

        Cldr.FO ->
            "Ilhas Faroé"

        Cldr.FR ->
            "França"

        Cldr.GA ->
            "Gabão"

        Cldr.GB ->
            "Reino Unido"

        Cldr.GD ->
            "Granada"

        Cldr.GE ->
            "Geórgia"

        Cldr.GF ->
            "Guiana Francesa"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenlândia"

        Cldr.GM ->
            "Gâmbia"

        Cldr.GN ->
            "Guiné"

        Cldr.GP ->
            "Guadalupe"

        Cldr.GQ ->
            "Guiné Equatorial"

        Cldr.GR ->
            "Grécia"

        Cldr.GS ->
            "Ilhas Geórgia do Sul e Sandwich do Sul"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guiné-Bissau"

        Cldr.GY ->
            "Guiana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Ilhas Heard e McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croácia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hungria"

        Cldr.ID ->
            "Indonésia"

        Cldr.IE ->
            "Irlanda"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Ilha de Man"

        Cldr.IN ->
            "Índia"

        Cldr.IO ->
            "Território Britânico do Oceano Índico"

        Cldr.IQ ->
            "Iraque"

        Cldr.IR ->
            "Irã"

        Cldr.IS ->
            "Islândia"

        Cldr.IT ->
            "Itália"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordânia"

        Cldr.JP ->
            "Japão"

        Cldr.KE ->
            "Quênia"

        Cldr.KG ->
            "Quirguistão"

        Cldr.KH ->
            "Camboja"

        Cldr.KI ->
            "Quiribati"

        Cldr.KM ->
            "Comores"

        Cldr.KN ->
            "São Cristóvão e Névis"

        Cldr.KP ->
            "Coreia do Norte"

        Cldr.KR ->
            "Coreia do Sul"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Ilhas Cayman"

        Cldr.KZ ->
            "Cazaquistão"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Líbano"

        Cldr.LC ->
            "Santa Lúcia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Libéria"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Lituânia"

        Cldr.LU ->
            "Luxemburgo"

        Cldr.LV ->
            "Letônia"

        Cldr.LY ->
            "Líbia"

        Cldr.MA ->
            "Marrocos"

        Cldr.MC ->
            "Mônaco"

        Cldr.MD ->
            "Moldávia"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "São Martinho"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Ilhas Marshall"

        Cldr.MK ->
            "Macedônia do Norte"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mianmar (Birmânia)"

        Cldr.MN ->
            "Mongólia"

        Cldr.MO ->
            "Macau"

        Cldr.MP ->
            "Ilhas Marianas do Norte"

        Cldr.MQ ->
            "Martinica"

        Cldr.MR ->
            "Mauritânia"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Maurício"

        Cldr.MV ->
            "Maldivas"

        Cldr.MW ->
            "Malaui"

        Cldr.MX ->
            "México"

        Cldr.MY ->
            "Malásia"

        Cldr.MZ ->
            "Moçambique"

        Cldr.NA ->
            "Namíbia"

        Cldr.NC ->
            "Nova Caledônia"

        Cldr.NE ->
            "Níger"

        Cldr.NF ->
            "Ilha Norfolk"

        Cldr.NG ->
            "Nigéria"

        Cldr.NI ->
            "Nicarágua"

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
            "Nova Zelândia"

        Cldr.OM ->
            "Omã"

        Cldr.PA ->
            "Panamá"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polinésia Francesa"

        Cldr.PG ->
            "Papua-Nova Guiné"

        Cldr.PH ->
            "Filipinas"

        Cldr.PK ->
            "Paquistão"

        Cldr.PL ->
            "Polônia"

        Cldr.PM ->
            "São Pedro e Miquelão"

        Cldr.PN ->
            "Ilhas Pitcairn"

        Cldr.PR ->
            "Porto Rico"

        Cldr.PS ->
            "Palestina"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguai"

        Cldr.QA ->
            "Catar"

        Cldr.RE ->
            "Reunião"

        Cldr.RO ->
            "Romênia"

        Cldr.RS ->
            "Sérvia"

        Cldr.RU ->
            "Rússia"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Arábia Saudita"

        Cldr.SB ->
            "Ilhas Salomão"

        Cldr.SC ->
            "Seicheles"

        Cldr.SD ->
            "Sudão"

        Cldr.SE ->
            "Suécia"

        Cldr.SG ->
            "Singapura"

        Cldr.SH ->
            "Santa Helena"

        Cldr.SI ->
            "Eslovênia"

        Cldr.SJ ->
            "Svalbard e Jan Mayen"

        Cldr.SK ->
            "Eslováquia"

        Cldr.SL ->
            "Serra Leoa"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somália"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Sudão do Sul"

        Cldr.ST ->
            "São Tomé e Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Síria"

        Cldr.SZ ->
            "Essuatíni"

        Cldr.TC ->
            "Ilhas Turcas e Caicos"

        Cldr.TD ->
            "Chade"

        Cldr.TF ->
            "Territórios Franceses do Sul"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailândia"

        Cldr.TJ ->
            "Tadjiquistão"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "República Democrática de Timor-Leste"

        Cldr.TM ->
            "Turcomenistão"

        Cldr.TN ->
            "Tunísia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turquia"

        Cldr.TT ->
            "Trinidad e Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzânia"

        Cldr.UA ->
            "Ucrânia"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Ilhas Menores Distantes dos EUA"

        Cldr.US ->
            "Estados Unidos"

        Cldr.UY ->
            "Uruguai"

        Cldr.UZ ->
            "Uzbequistão"

        Cldr.VA ->
            "Cidade do Vaticano"

        Cldr.VC ->
            "São Vicente e Granadinas"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Ilhas Virgens Britânicas"

        Cldr.VI ->
            "Ilhas Virgens Americanas"

        Cldr.VN ->
            "Vietnã"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis e Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Iêmen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "África do Sul"

        Cldr.ZM ->
            "Zâmbia"

        Cldr.ZW ->
            "Zimbábue"