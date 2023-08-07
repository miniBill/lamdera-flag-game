module Cldr.Catalan.Spain.Valencia exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Catalan - Spain (Valencia).

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
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Emirats Àrabs Units"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua i Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albània"

        Cldr.AM ->
            "Armènia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antàrtida"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa Nord-americana"

        Cldr.AT ->
            "Àustria"

        Cldr.AU ->
            "Austràlia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Illes Åland"

        Cldr.AZ ->
            "Azerbaidjan"

        Cldr.BA ->
            "Bòsnia i Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Bèlgica"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgària"

        Cldr.BH ->
            "Bahrain"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benín"

        Cldr.BL ->
            "Saint-Barthélemy"

        Cldr.BM ->
            "Bermudes"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolívia"

        Cldr.BQ ->
            "Carib Neerlandès"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Bahames"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarús"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canadà"

        Cldr.CC ->
            "Illes Cocos"

        Cldr.CD ->
            "República Democràtica del Congo"

        Cldr.CF ->
            "República Centreafricana"

        Cldr.CG ->
            "República del Congo"

        Cldr.CH ->
            "Suïssa"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Illes Cook"

        Cldr.CL ->
            "Xile"

        Cldr.CM ->
            "Camerun"

        Cldr.CN ->
            "Xina"

        Cldr.CO ->
            "Colòmbia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cap Verd"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Illa Christmas"

        Cldr.CY ->
            "Xipre"

        Cldr.CZ ->
            "República Txeca"

        Cldr.DE ->
            "Alemanya"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Dinamarca"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "República Dominicana"

        Cldr.DZ ->
            "Algèria"

        Cldr.EC ->
            "Equador"

        Cldr.EE ->
            "Estònia"

        Cldr.EG ->
            "Egipte"

        Cldr.EH ->
            "Sàhara Occidental"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Espanya"

        Cldr.ET ->
            "Etiòpia"

        Cldr.FI ->
            "Finlàndia"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Illes Malvines"

        Cldr.FM ->
            "Micronèsia"

        Cldr.FO ->
            "Illes Fèroe"

        Cldr.FR ->
            "França"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Regne Unit"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Geòrgia"

        Cldr.GF ->
            "Guaiana Francesa"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenlàndia"

        Cldr.GM ->
            "Gàmbia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadalupe"

        Cldr.GQ ->
            "Guinea Equatorial"

        Cldr.GR ->
            "Grècia"

        Cldr.GS ->
            "Illes Geòrgia del Sud i Sandwich del Sud"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Illa Heard i Illes McDonald"

        Cldr.HN ->
            "Hondures"

        Cldr.HR ->
            "Croàcia"

        Cldr.HT ->
            "Haití"

        Cldr.HU ->
            "Hongria"

        Cldr.ID ->
            "Indonèsia"

        Cldr.IE ->
            "Irlanda"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Illa de Man"

        Cldr.IN ->
            "Índia"

        Cldr.IO ->
            "Territori Britànic de l’Oceà Índic"

        Cldr.IQ ->
            "Iraq"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islàndia"

        Cldr.IT ->
            "Itàlia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordània"

        Cldr.JP ->
            "Japó"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirguizstan"

        Cldr.KH ->
            "Cambodja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comores"

        Cldr.KN ->
            "Saint Kitts i Nevis"

        Cldr.KP ->
            "Corea del Nord"

        Cldr.KR ->
            "Corea del Sud"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Illes Caiman"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Líban"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Libèria"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Lituània"

        Cldr.LU ->
            "Luxemburg"

        Cldr.LV ->
            "Letònia"

        Cldr.LY ->
            "Líbia"

        Cldr.MA ->
            "Marroc"

        Cldr.MC ->
            "Mònaco"

        Cldr.MD ->
            "Moldàvia"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Illes Marshall"

        Cldr.MK ->
            "Macedònia del Nord"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birmània)"

        Cldr.MN ->
            "Mongòlia"

        Cldr.MO ->
            "Macau"

        Cldr.MP ->
            "Illes Mariannes Septentrionals"

        Cldr.MQ ->
            "Martinica"

        Cldr.MR ->
            "Mauritània"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Maurici"

        Cldr.MV ->
            "Maldives"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mèxic"

        Cldr.MY ->
            "Malàisia"

        Cldr.MZ ->
            "Moçambic"

        Cldr.NA ->
            "Namíbia"

        Cldr.NC ->
            "Nova Caledònia"

        Cldr.NE ->
            "Níger"

        Cldr.NF ->
            "Norfolk"

        Cldr.NG ->
            "Nigèria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Països Baixos"

        Cldr.NO ->
            "Noruega"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nova Zelanda"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panamà"

        Cldr.PE ->
            "Perú"

        Cldr.PF ->
            "Polinèsia Francesa"

        Cldr.PG ->
            "Papua Nova Guinea"

        Cldr.PH ->
            "Filipines"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polònia"

        Cldr.PM ->
            "Saint-Pierre-et-Miquelon"

        Cldr.PN ->
            "Illes Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestina"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguai"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Illa de la Reunió"

        Cldr.RO ->
            "Romania"

        Cldr.RS ->
            "Sèrbia"

        Cldr.RU ->
            "Rússia"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Aràbia Saudita"

        Cldr.SB ->
            "Illes Salomó"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Suècia"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Santa Helena"

        Cldr.SI ->
            "Eslovènia"

        Cldr.SJ ->
            "Svalbard i Jan Mayen"

        Cldr.SK ->
            "Eslovàquia"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somàlia"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Sudan del Sud"

        Cldr.ST ->
            "São Tomé i Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Síria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Illes Turks i Caicos"

        Cldr.TD ->
            "Txad"

        Cldr.TF ->
            "Territoris Australs Francesos"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailàndia"

        Cldr.TJ ->
            "Tadjikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor Oriental"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunísia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turquia"

        Cldr.TT ->
            "Trinitat i Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzània"

        Cldr.UA ->
            "Ucraïna"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Illes Perifèriques Menors dels EUA"

        Cldr.US ->
            "Estats Units"

        Cldr.UY ->
            "Uruguai"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Ciutat del Vaticà"

        Cldr.VC ->
            "Saint Vincent i les Grenadines"

        Cldr.VE ->
            "Veneçuela"

        Cldr.VG ->
            "Illes Verges britàniques"

        Cldr.VI ->
            "Illes Verges nord-americanes"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis i Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Iemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "República de Sud-àfrica"

        Cldr.ZM ->
            "Zàmbia"

        Cldr.ZW ->
            "Zimbàbue"