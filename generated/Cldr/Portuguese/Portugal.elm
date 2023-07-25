module Cldr.Portuguese.Portugal exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Portuguese


{-| Name for `CountryCode` in Portuguese - Portugal.

    AD Andorra
    AE Emirados Árabes Unidos
    AF Afeganistão
    AG Antígua e Barbuda
    AI Anguila
    AL Albânia
    AM Arménia
    AO Angola
    AQ Antártida
    AR Argentina
    AS Samoa Americana
    AT Áustria
    AU Austrália
    AW Aruba
    AX Alanda
    AZ Azerbaijão
    BA Bósnia e Herzegovina
    BB Barbados
    BD Bangladeche
    BE Bélgica
    BF Burquina Faso
    BG Bulgária
    BH Barém
    BI Burundi
    BJ Benim
    BL São Bartolomeu
    BM Bermudas
    BN Brunei
    BO Bolívia
    BQ Países Baixos Caribenhos
    BR Brasil
    BS Baamas
    BT Butão
    BV Ilha Bouvet
    BW Botsuana
    BY Bielorrússia
    BZ Belize
    CA Canadá
    CC Ilhas dos Cocos (Keeling)
    CD Congo-Kinshasa
    CF República Centro-Africana
    CG Congo-Brazzaville
    CH Suíça
    CI Côte d’Ivoire (Costa do Marfim)
    CK Ilhas Cook
    CL Chile
    CM Camarões
    CN China
    CO Colômbia
    CR Costa Rica
    CU Cuba
    CV Cabo Verde
    CW Curaçau
    CX Ilha do Natal
    CY Chipre
    CZ Chéquia
    DE Alemanha
    DJ Jibuti
    DK Dinamarca
    DM Domínica
    DO República Dominicana
    DZ Argélia
    EC Equador
    EE Estónia
    EG Egito
    EH Sara Ocidental
    ER Eritreia
    ES Espanha
    ET Etiópia
    FI Finlândia
    FJ Fiji
    FK Ilhas Falkland
    FM Micronésia
    FO Ilhas Faroé
    FR França
    GA Gabão
    GB Reino Unido
    GD Granada
    GE Geórgia
    GF Guiana Francesa
    GG Guernesey
    GH Gana
    GI Gibraltar
    GL Gronelândia
    GM Gâmbia
    GN Guiné
    GP Guadalupe
    GQ Guiné Equatorial
    GR Grécia
    GS Ilhas Geórgia do Sul e Sandwich do Sul
    GT Guatemala
    GU Guame
    GW Guiné-Bissau
    GY Guiana
    HK Hong Kong, RAE da China
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
    IR Irão
    IS Islândia
    IT Itália
    JE Jersey
    JM Jamaica
    JO Jordânia
    JP Japão
    KE Quénia
    KG Quirguistão
    KH Camboja
    KI Quiribáti
    KM Comores
    KN São Cristóvão e Neves
    KP Coreia do Norte
    KR Coreia do Sul
    KW Koweit
    KY Ilhas Caimão
    KZ Cazaquistão
    LA Laos
    LB Líbano
    LC Santa Lúcia
    LI Listenstaine
    LK Sri Lanca
    LR Libéria
    LS Lesoto
    LT Lituânia
    LU Luxemburgo
    LV Letónia
    LY Líbia
    MA Marrocos
    MC Mónaco
    MD Moldávia
    ME Montenegro
    MF São Martinho (Saint-Martin)
    MG Madagáscar
    MH Ilhas Marshall
    MK Macedónia do Norte
    ML Mali
    MM Mianmar (Birmânia)
    MN Mongólia
    MO Macau, RAE da China
    MP Ilhas Marianas do Norte
    MQ Martinica
    MR Mauritânia
    MS Monserrate
    MT Malta
    MU Maurícia
    MV Maldivas
    MW Maláui
    MX México
    MY Malásia
    MZ Moçambique
    NA Namíbia
    NC Nova Caledónia
    NE Níger
    NF Ilha Norfolk
    NG Nigéria
    NI Nicarágua
    NL Países Baixos
    NO Noruega
    NP Nepal
    NR Nauru
    NU Niuê
    NZ Nova Zelândia
    OM Omã
    PA Panamá
    PE Peru
    PF Polinésia Francesa
    PG Papua-Nova Guiné
    PH Filipinas
    PK Paquistão
    PL Polónia
    PM São Pedro e Miquelão
    PN Ilhas Pitcairn
    PR Porto Rico
    PS Territórios palestinianos
    PT Portugal
    PW Palau
    PY Paraguai
    QA Catar
    RE Reunião
    RO Roménia
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
    SI Eslovénia
    SJ Svalbard e Jan Mayen
    SK Eslováquia
    SL Serra Leoa
    SM São Marinho
    SN Senegal
    SO Somália
    SR Suriname
    SS Sudão do Sul
    ST São Tomé e Príncipe
    SV Salvador
    SX São Martinho (Sint Maarten)
    SY Síria
    SZ Essuatíni
    TC Ilhas Turcas e Caicos
    TD Chade
    TF Territórios Austrais Franceses
    TG Togo
    TH Tailândia
    TJ Tajiquistão
    TK Toquelau
    TL Timor-Leste
    TM Turquemenistão
    TN Tunísia
    TO Tonga
    TR Turquia
    TT Trindade e Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzânia
    UA Ucrânia
    UG Uganda
    UM Ilhas Menores Afastadas dos EUA
    US Estados Unidos
    UY Uruguai
    UZ Usbequistão
    VA Cidade do Vaticano
    VC São Vicente e Granadinas
    VE Venezuela
    VG Ilhas Virgens Britânicas
    VI Ilhas Virgens dos EUA
    VN Vietname
    VU Vanuatu
    WF Wallis e Futuna
    WS Samoa
    XK Kosovo
    YE Iémen
    YT Maiote
    ZA África do Sul
    ZM Zâmbia
    ZW Zimbabué
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AM ->
            "Arménia"

        Cldr.AX ->
            "Alanda"

        Cldr.BD ->
            "Bangladeche"

        Cldr.BH ->
            "Barém"

        Cldr.BJ ->
            "Benim"

        Cldr.BS ->
            "Baamas"

        Cldr.CC ->
            "Ilhas dos Cocos (Keeling)"

        Cldr.CD ->
            "Congo-Kinshasa"

        Cldr.CG ->
            "Congo-Brazzaville"

        Cldr.CI ->
            "Côte d’Ivoire (Costa do Marfim)"

        Cldr.CW ->
            "Curaçau"

        Cldr.CX ->
            "Ilha do Natal"

        Cldr.CZ ->
            "Chéquia"

        Cldr.DJ ->
            "Jibuti"

        Cldr.DM ->
            "Domínica"

        Cldr.EE ->
            "Estónia"

        Cldr.EH ->
            "Sara Ocidental"

        Cldr.FK ->
            "Ilhas Falkland"

        Cldr.GG ->
            "Guernesey"

        Cldr.GL ->
            "Gronelândia"

        Cldr.GU ->
            "Guame"

        Cldr.IR ->
            "Irão"

        Cldr.KE ->
            "Quénia"

        Cldr.KI ->
            "Quiribáti"

        Cldr.KN ->
            "São Cristóvão e Neves"

        Cldr.KW ->
            "Koweit"

        Cldr.KY ->
            "Ilhas Caimão"

        Cldr.LI ->
            "Listenstaine"

        Cldr.LK ->
            "Sri Lanca"

        Cldr.LV ->
            "Letónia"

        Cldr.MC ->
            "Mónaco"

        Cldr.MF ->
            "São Martinho (Saint-Martin)"

        Cldr.MG ->
            "Madagáscar"

        Cldr.MK ->
            "Macedónia do Norte"

        Cldr.MS ->
            "Monserrate"

        Cldr.MU ->
            "Maurícia"

        Cldr.MW ->
            "Maláui"

        Cldr.NC ->
            "Nova Caledónia"

        Cldr.NU ->
            "Niuê"

        Cldr.PL ->
            "Polónia"

        Cldr.PS ->
            "Territórios palestinianos"

        Cldr.RO ->
            "Roménia"

        Cldr.SI ->
            "Eslovénia"

        Cldr.SM ->
            "São Marinho"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "São Martinho (Sint Maarten)"

        Cldr.TF ->
            "Territórios Austrais Franceses"

        Cldr.TJ ->
            "Tajiquistão"

        Cldr.TK ->
            "Toquelau"

        Cldr.TM ->
            "Turquemenistão"

        Cldr.TT ->
            "Trindade e Tobago"

        Cldr.UM ->
            "Ilhas Menores Afastadas dos EUA"

        Cldr.UZ ->
            "Usbequistão"

        Cldr.VI ->
            "Ilhas Virgens dos EUA"

        Cldr.VN ->
            "Vietname"

        Cldr.YE ->
            "Iémen"

        Cldr.YT ->
            "Maiote"

        Cldr.ZW ->
            "Zimbabué"

        _ ->
            Cldr.Portuguese.countryCodeToName countryCode