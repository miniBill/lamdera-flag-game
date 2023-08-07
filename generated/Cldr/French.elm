module Cldr.French exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in French.

    AD Andorre
    AE Émirats arabes unis
    AF Afghanistan
    AG Antigua-et-Barbuda
    AI Anguilla
    AL Albanie
    AM Arménie
    AO Angola
    AQ Antarctique
    AR Argentine
    AS Samoa américaines
    AT Autriche
    AU Australie
    AW Aruba
    AX Îles Åland
    AZ Azerbaïdjan
    BA Bosnie-Herzégovine
    BB Barbade
    BD Bangladesh
    BE Belgique
    BF Burkina Faso
    BG Bulgarie
    BH Bahreïn
    BI Burundi
    BJ Bénin
    BL Saint-Barthélemy
    BM Bermudes
    BN Brunei
    BO Bolivie
    BQ Pays-Bas caribéens
    BR Brésil
    BS Bahamas
    BT Bhoutan
    BV Île Bouvet
    BW Botswana
    BY Biélorussie
    BZ Belize
    CA Canada
    CC Îles Cocos
    CD Congo (RDC)
    CF République centrafricaine
    CG République du Congo
    CH Suisse
    CI Côte d’Ivoire
    CK Îles Cook
    CL Chili
    CM Cameroun
    CN Chine
    CO Colombie
    CR Costa Rica
    CU Cuba
    CV Cap-Vert
    CW Curaçao
    CX Île Christmas
    CY Chypre
    CZ République tchèque
    DE Allemagne
    DJ Djibouti
    DK Danemark
    DM Dominique
    DO République dominicaine
    DZ Algérie
    EC Équateur
    EE Estonie
    EG Égypte
    EH Sahara occidental
    ER Érythrée
    ES Espagne
    ET Éthiopie
    FI Finlande
    FJ Fidji
    FK Îles Malouines
    FM Micronésie
    FO Îles Féroé
    FR France
    GA Gabon
    GB Royaume-Uni
    GD Grenade
    GE Géorgie
    GF Guyane française
    GG Guernesey
    GH Ghana
    GI Gibraltar
    GL Groenland
    GM Gambie
    GN Guinée
    GP Guadeloupe
    GQ Guinée équatoriale
    GR Grèce
    GS Géorgie du Sud-et-les Îles Sandwich du Sud
    GT Guatemala
    GU Guam
    GW Guinée-Bissau
    GY Guyana
    HK Hong Kong
    HM Îles Heard-et-MacDonald
    HN Honduras
    HR Croatie
    HT Haïti
    HU Hongrie
    ID Indonésie
    IE Irlande
    IL Israël
    IM Île de Man
    IN Inde
    IO Territoire britannique de l’océan Indien
    IQ Irak
    IR Iran
    IS Islande
    IT Italie
    JE Jersey
    JM Jamaïque
    JO Jordanie
    JP Japon
    KE Kenya
    KG Kirghizstan
    KH Cambodge
    KI Kiribati
    KM Comores
    KN Saint-Christophe-et-Niévès
    KP Corée du Nord
    KR Corée du Sud
    KW Koweït
    KY Îles Caïmans
    KZ Kazakhstan
    LA Laos
    LB Liban
    LC Sainte-Lucie
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lituanie
    LU Luxembourg
    LV Lettonie
    LY Libye
    MA Maroc
    MC Monaco
    MD Moldavie
    ME Monténégro
    MF Saint-Martin
    MG Madagascar
    MH Îles Marshall
    MK Macédoine du Nord
    ML Mali
    MM Myanmar (Birmanie)
    MN Mongolie
    MO Macao
    MP Îles Mariannes du Nord
    MQ Martinique
    MR Mauritanie
    MS Montserrat
    MT Malte
    MU Maurice
    MV Maldives
    MW Malawi
    MX Mexique
    MY Malaisie
    MZ Mozambique
    NA Namibie
    NC Nouvelle-Calédonie
    NE Niger
    NF Île Norfolk
    NG Nigeria
    NI Nicaragua
    NL Pays-Bas
    NO Norvège
    NP Népal
    NR Nauru
    NU Niue
    NZ Nouvelle-Zélande
    OM Oman
    PA Panama
    PE Pérou
    PF Polynésie française
    PG Papouasie-Nouvelle-Guinée
    PH Philippines
    PK Pakistan
    PL Pologne
    PM Saint-Pierre-et-Miquelon
    PN Îles Pitcairn
    PR Porto Rico
    PS Palestine
    PT Portugal
    PW Palaos
    PY Paraguay
    QA Qatar
    RE La Réunion
    RO Roumanie
    RS Serbie
    RU Russie
    RW Rwanda
    SA Arabie saoudite
    SB Îles Salomon
    SC Seychelles
    SD Soudan
    SE Suède
    SG Singapour
    SH Sainte-Hélène
    SI Slovénie
    SJ Svalbard et Jan Mayen
    SK Slovaquie
    SL Sierra Leone
    SM Saint-Marin
    SN Sénégal
    SO Somalie
    SR Suriname
    SS Soudan du Sud
    ST Sao Tomé-et-Principe
    SV Salvador
    SX Saint-Martin (partie néerlandaise)
    SY Syrie
    SZ Eswatini
    TC Îles Turques-et-Caïques
    TD Tchad
    TF Terres australes françaises
    TG Togo
    TH Thaïlande
    TJ Tadjikistan
    TK Tokelau
    TL Timor-Oriental
    TM Turkménistan
    TN Tunisie
    TO Tonga
    TR Turquie
    TT Trinité-et-Tobago
    TV Tuvalu
    TW Taïwan
    TZ Tanzanie
    UA Ukraine
    UG Ouganda
    UM Îles mineures éloignées des États-Unis
    US États-Unis
    UY Uruguay
    UZ Ouzbékistan
    VA État de la Cité du Vatican
    VC Saint-Vincent-et-les Grenadines
    VE Venezuela
    VG Îles Vierges britanniques
    VI Îles Vierges des États-Unis
    VN Viêt Nam
    VU Vanuatu
    WF Wallis-et-Futuna
    WS Samoa
    XK Kosovo
    YE Yémen
    YT Mayotte
    ZA Afrique du Sud
    ZM Zambie
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorre"

        Cldr.AE ->
            "Émirats arabes unis"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua-et-Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albanie"

        Cldr.AM ->
            "Arménie"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarctique"

        Cldr.AR ->
            "Argentine"

        Cldr.AS ->
            "Samoa américaines"

        Cldr.AT ->
            "Autriche"

        Cldr.AU ->
            "Australie"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Îles Åland"

        Cldr.AZ ->
            "Azerbaïdjan"

        Cldr.BA ->
            "Bosnie-Herzégovine"

        Cldr.BB ->
            "Barbade"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgique"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgarie"

        Cldr.BH ->
            "Bahreïn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Bénin"

        Cldr.BL ->
            "Saint-Barthélemy"

        Cldr.BM ->
            "Bermudes"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivie"

        Cldr.BQ ->
            "Pays-Bas caribéens"

        Cldr.BR ->
            "Brésil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhoutan"

        Cldr.BV ->
            "Île Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Biélorussie"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Îles Cocos"

        Cldr.CD ->
            "Congo (RDC)"

        Cldr.CF ->
            "République centrafricaine"

        Cldr.CG ->
            "République du Congo"

        Cldr.CH ->
            "Suisse"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Îles Cook"

        Cldr.CL ->
            "Chili"

        Cldr.CM ->
            "Cameroun"

        Cldr.CN ->
            "Chine"

        Cldr.CO ->
            "Colombie"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cap-Vert"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Île Christmas"

        Cldr.CY ->
            "Chypre"

        Cldr.CZ ->
            "République tchèque"

        Cldr.DE ->
            "Allemagne"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Danemark"

        Cldr.DM ->
            "Dominique"

        Cldr.DO ->
            "République dominicaine"

        Cldr.DZ ->
            "Algérie"

        Cldr.EC ->
            "Équateur"

        Cldr.EE ->
            "Estonie"

        Cldr.EG ->
            "Égypte"

        Cldr.EH ->
            "Sahara occidental"

        Cldr.ER ->
            "Érythrée"

        Cldr.ES ->
            "Espagne"

        Cldr.ET ->
            "Éthiopie"

        Cldr.FI ->
            "Finlande"

        Cldr.FJ ->
            "Fidji"

        Cldr.FK ->
            "Îles Malouines"

        Cldr.FM ->
            "Micronésie"

        Cldr.FO ->
            "Îles Féroé"

        Cldr.FR ->
            "France"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Royaume-Uni"

        Cldr.GD ->
            "Grenade"

        Cldr.GE ->
            "Géorgie"

        Cldr.GF ->
            "Guyane française"

        Cldr.GG ->
            "Guernesey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenland"

        Cldr.GM ->
            "Gambie"

        Cldr.GN ->
            "Guinée"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Guinée équatoriale"

        Cldr.GR ->
            "Grèce"

        Cldr.GS ->
            "Géorgie du Sud-et-les Îles Sandwich du Sud"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinée-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Îles Heard-et-MacDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croatie"

        Cldr.HT ->
            "Haïti"

        Cldr.HU ->
            "Hongrie"

        Cldr.ID ->
            "Indonésie"

        Cldr.IE ->
            "Irlande"

        Cldr.IL ->
            "Israël"

        Cldr.IM ->
            "Île de Man"

        Cldr.IN ->
            "Inde"

        Cldr.IO ->
            "Territoire britannique de l’océan Indien"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islande"

        Cldr.IT ->
            "Italie"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaïque"

        Cldr.JO ->
            "Jordanie"

        Cldr.JP ->
            "Japon"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirghizstan"

        Cldr.KH ->
            "Cambodge"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comores"

        Cldr.KN ->
            "Saint-Christophe-et-Niévès"

        Cldr.KP ->
            "Corée du Nord"

        Cldr.KR ->
            "Corée du Sud"

        Cldr.KW ->
            "Koweït"

        Cldr.KY ->
            "Îles Caïmans"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Liban"

        Cldr.LC ->
            "Sainte-Lucie"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Lituanie"

        Cldr.LU ->
            "Luxembourg"

        Cldr.LV ->
            "Lettonie"

        Cldr.LY ->
            "Libye"

        Cldr.MA ->
            "Maroc"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldavie"

        Cldr.ME ->
            "Monténégro"

        Cldr.MF ->
            "Saint-Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Îles Marshall"

        Cldr.MK ->
            "Macédoine du Nord"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birmanie)"

        Cldr.MN ->
            "Mongolie"

        Cldr.MO ->
            "Macao"

        Cldr.MP ->
            "Îles Mariannes du Nord"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauritanie"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malte"

        Cldr.MU ->
            "Maurice"

        Cldr.MV ->
            "Maldives"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexique"

        Cldr.MY ->
            "Malaisie"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibie"

        Cldr.NC ->
            "Nouvelle-Calédonie"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Île Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Pays-Bas"

        Cldr.NO ->
            "Norvège"

        Cldr.NP ->
            "Népal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nouvelle-Zélande"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Pérou"

        Cldr.PF ->
            "Polynésie française"

        Cldr.PG ->
            "Papouasie-Nouvelle-Guinée"

        Cldr.PH ->
            "Philippines"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Pologne"

        Cldr.PM ->
            "Saint-Pierre-et-Miquelon"

        Cldr.PN ->
            "Îles Pitcairn"

        Cldr.PR ->
            "Porto Rico"

        Cldr.PS ->
            "Palestine"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palaos"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "La Réunion"

        Cldr.RO ->
            "Roumanie"

        Cldr.RS ->
            "Serbie"

        Cldr.RU ->
            "Russie"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Arabie saoudite"

        Cldr.SB ->
            "Îles Salomon"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Soudan"

        Cldr.SE ->
            "Suède"

        Cldr.SG ->
            "Singapour"

        Cldr.SH ->
            "Sainte-Hélène"

        Cldr.SI ->
            "Slovénie"

        Cldr.SJ ->
            "Svalbard et Jan Mayen"

        Cldr.SK ->
            "Slovaquie"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "Saint-Marin"

        Cldr.SN ->
            "Sénégal"

        Cldr.SO ->
            "Somalie"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Soudan du Sud"

        Cldr.ST ->
            "Sao Tomé-et-Principe"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Saint-Martin (partie néerlandaise)"

        Cldr.SY ->
            "Syrie"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Îles Turques-et-Caïques"

        Cldr.TD ->
            "Tchad"

        Cldr.TF ->
            "Terres australes françaises"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thaïlande"

        Cldr.TJ ->
            "Tadjikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Oriental"

        Cldr.TM ->
            "Turkménistan"

        Cldr.TN ->
            "Tunisie"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turquie"

        Cldr.TT ->
            "Trinité-et-Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taïwan"

        Cldr.TZ ->
            "Tanzanie"

        Cldr.UA ->
            "Ukraine"

        Cldr.UG ->
            "Ouganda"

        Cldr.UM ->
            "Îles mineures éloignées des États-Unis"

        Cldr.US ->
            "États-Unis"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Ouzbékistan"

        Cldr.VA ->
            "État de la Cité du Vatican"

        Cldr.VC ->
            "Saint-Vincent-et-les Grenadines"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Îles Vierges britanniques"

        Cldr.VI ->
            "Îles Vierges des États-Unis"

        Cldr.VN ->
            "Viêt Nam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis-et-Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yémen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Afrique du Sud"

        Cldr.ZM ->
            "Zambie"

        Cldr.ZW ->
            "Zimbabwe"