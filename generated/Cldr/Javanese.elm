module Cldr.Javanese exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Javanese.

    AD Andora
    AE Uni Émirat Arab
    AF Afganistan
    AG Antigua lan Barbuda
    AI Anguilla
    AL Albani
    AM Arménia
    AO Angola
    AQ Antartika
    AR Argèntina
    AS Samoa Amerika
    AT Ostenrik
    AU Ostrali
    AW Aruba
    AX Kapuloan Alan
    AZ Azerbaijan
    BA Bosnia lan Hèrségovina
    BB Barbadhos
    BD Banggaladésa
    BE Bèlgi
    BF Burkina Faso
    BG Bulgari
    BH Bahrain
    BI Burundi
    BJ Bénin
    BL Saint Barthélémi
    BM Bermuda
    BN Brunéi
    BO Bolivia
    BQ Karibia Walanda
    BR Brasil
    BS Bahamas
    BT Bhutan
    BV Pulo Bovèt
    BW Botswana
    BY Bélarus
    BZ Bélisé
    CA Kanada
    CC Kapuloan Cocos (Keeling)
    CD Républik Dhémokratik Kongo
    CF Républik Afrika Tengah
    CG Républik Kongo
    CH Switserlan
    CI Pasisir Gadhing
    CK Kapuloan Cook
    CL Cilé
    CM Kamerun
    CN Tyongkok
    CO Kolombia
    CR Kosta Rika
    CU Kuba
    CV Pongol Verdé
    CW Kurasao
    CX Pulo Natal
    CY Siprus
    CZ Républik Céko
    DE Jérman
    DJ Jibuti
    DK Dhènemarken
    DM Dominika
    DO Républik Dominika
    DZ Aljasair
    EC Ékuadhor
    EE Éstonia
    EG Mesir
    EH Sahara Kulon
    ER Éritréa
    ES Sepanyol
    ET Étiopia
    FI Finlan
    FJ Fiji
    FK Kapuloan Falkland
    FM Féderasi Mikronésia
    FO Kapuloan Faro
    FR Prancis
    GA Gabon
    GB Karajan Manunggal
    GD Grénada
    GE Géorgia
    GF Guyana Prancis
    GG Guernsei
    GH Ghana
    GI Gibraltar
    GL Greenland
    GM Gambia
    GN Guinea
    GP Guadélup
    GQ Guinéa Katulistiwa
    GR Grikenlan
    GS Georgia Kidul lan Kapuloan Sandwich Kidul
    GT Guatémala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hong Kong
    HM Kapuloan Heard lan McDonald
    HN Honduras
    HR Kroasia
    HT Haiti
    HU Honggari
    ID Indonésia
    IE Républik Irlan
    IL Israèl
    IM Pulo Man
    IN Indhia
    IO Wilayah Inggris nang Segoro Hindia
    IQ Irak
    IR Iran
    IS Èslan
    IT Itali
    JE Jersey
    JM Jamaika
    JO Yordania
    JP Jepang
    KE Kénya
    KG Kirgistan
    KH Kamboja
    KI Kiribati
    KM Komoro
    KN Saint Kits lan Nèvis
    KP Korea Lor
    KR Koréa Kidul
    KW Kuwait
    KY Kapuloan Kéman
    KZ Kasakstan
    LA Laos
    LB Libanon
    LC Santa Lusia
    LI Liktenstén
    LK Sri Lanka
    LR Libèria
    LS Lésotho
    LT Litowen
    LU Luksemburg
    LV Latvia
    LY Libya
    MA Maroko
    MC Monako
    MD Moldova
    ME Montenégro
    MF Santa Martin
    MG Madagaskar
    MH Kapuloan Marshall
    MK Républik Makédonia Lor
    ML Mali
    MM Myanmar (Burma)
    MN Mongolia
    MO Macau
    MP Kapuloan Mariana Lor
    MQ Martinik
    MR Mauritania
    MS Monsérat
    MT Malta
    MU Mauritius
    MV Maladéwa
    MW Malawi
    MX Mèksiko
    MY Malaysia
    MZ Mosambik
    NA Namibia
    NC Kalédonia Anyar
    NE Nigér
    NF Pulo Norfolk
    NG Nigéria
    NI Nikaragua
    NL Walanda
    NO Nurwègen
    NP Népal
    NR Nauru
    NU Niue
    NZ Selandia Anyar
    OM Oman
    PA Panama
    PE Peru
    PF Polinesia Prancis
    PG Papua Nugini
    PH Pilipina
    PK Pakistan
    PL Polen
    PM Saint Pièr lan Mikuélon
    PN Kapuloan Pitcairn
    PR Puèrto Riko
    PS Palèstina
    PT Portugal
    PW Palau
    PY Paraguay
    QA Katar
    RE Réunion
    RO Ruméni
    RS Sèrbi
    RU Rusia
    RW Rwanda
    SA Arab Saudi
    SB Kapuloan Suleman
    SC Sésèl
    SD Sudan
    SE Swèdhen
    SG Singapura
    SH Saint Héléna
    SI Slovénia
    SJ Svalbard lan Jan Mayen
    SK Slowak
    SL Siéra Léoné
    SM San Marino
    SN Sénégal
    SO Somalia
    SR Suriname
    SS Sudan Kidul
    ST Sao Tomé lan Principé
    SV Èl Salvador
    SX Sint Martén
    SY Suriah
    SZ Swasiland
    TC Turks lan Kapuloan Kaikos
    TD Chad
    TF Wilayah Prancis nang Kutub Kidul
    TG Togo
    TH Tanah Thai
    TJ Tajikistan
    TK Tokelau
    TL Timor Wétan
    TM Turkménistan
    TN Tunisia
    TO Tonga
    TR Turki
    TT Trinidad lan Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tansania
    UA Ukrania
    UG Uganda
    UM Kapuloan AS Paling Njaba
    US Amérika Sarékat
    UY Uruguay
    UZ Usbèkistan
    VA Kutha Vatikan
    VC Saint Vinsen lan Grénadin
    VE Vénésuéla
    VG Kapuloan Virgin Britania
    VI Kapuloan Virgin Amérika
    VN Viètnam
    VU Vanuatu
    WF Wallis lan Futuna
    WS Samoa
    XK Kosovo
    YE Yaman
    YT Mayotte
    ZA Afrika Kidul
    ZM Sambia
    ZW Simbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andora"

        Cldr.AE ->
            "Uni Émirat Arab"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua lan Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albani"

        Cldr.AM ->
            "Arménia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antartika"

        Cldr.AR ->
            "Argèntina"

        Cldr.AS ->
            "Samoa Amerika"

        Cldr.AT ->
            "Ostenrik"

        Cldr.AU ->
            "Ostrali"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Kapuloan Alan"

        Cldr.AZ ->
            "Azerbaijan"

        Cldr.BA ->
            "Bosnia lan Hèrségovina"

        Cldr.BB ->
            "Barbadhos"

        Cldr.BD ->
            "Banggaladésa"

        Cldr.BE ->
            "Bèlgi"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgari"

        Cldr.BH ->
            "Bahrain"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Bénin"

        Cldr.BL ->
            "Saint Barthélémi"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunéi"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Karibia Walanda"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Pulo Bovèt"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Bélarus"

        Cldr.BZ ->
            "Bélisé"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kapuloan Cocos (Keeling)"

        Cldr.CD ->
            "Républik Dhémokratik Kongo"

        Cldr.CF ->
            "Républik Afrika Tengah"

        Cldr.CG ->
            "Républik Kongo"

        Cldr.CH ->
            "Switserlan"

        Cldr.CI ->
            "Pasisir Gadhing"

        Cldr.CK ->
            "Kapuloan Cook"

        Cldr.CL ->
            "Cilé"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Tyongkok"

        Cldr.CO ->
            "Kolombia"

        Cldr.CR ->
            "Kosta Rika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Pongol Verdé"

        Cldr.CW ->
            "Kurasao"

        Cldr.CX ->
            "Pulo Natal"

        Cldr.CY ->
            "Siprus"

        Cldr.CZ ->
            "Républik Céko"

        Cldr.DE ->
            "Jérman"

        Cldr.DJ ->
            "Jibuti"

        Cldr.DK ->
            "Dhènemarken"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Républik Dominika"

        Cldr.DZ ->
            "Aljasair"

        Cldr.EC ->
            "Ékuadhor"

        Cldr.EE ->
            "Éstonia"

        Cldr.EG ->
            "Mesir"

        Cldr.EH ->
            "Sahara Kulon"

        Cldr.ER ->
            "Éritréa"

        Cldr.ES ->
            "Sepanyol"

        Cldr.ET ->
            "Étiopia"

        Cldr.FI ->
            "Finlan"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Kapuloan Falkland"

        Cldr.FM ->
            "Féderasi Mikronésia"

        Cldr.FO ->
            "Kapuloan Faro"

        Cldr.FR ->
            "Prancis"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Karajan Manunggal"

        Cldr.GD ->
            "Grénada"

        Cldr.GE ->
            "Géorgia"

        Cldr.GF ->
            "Guyana Prancis"

        Cldr.GG ->
            "Guernsei"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Greenland"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadélup"

        Cldr.GQ ->
            "Guinéa Katulistiwa"

        Cldr.GR ->
            "Grikenlan"

        Cldr.GS ->
            "Georgia Kidul lan Kapuloan Sandwich Kidul"

        Cldr.GT_ ->
            "Guatémala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Kapuloan Heard lan McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroasia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Honggari"

        Cldr.ID ->
            "Indonésia"

        Cldr.IE ->
            "Républik Irlan"

        Cldr.IL ->
            "Israèl"

        Cldr.IM ->
            "Pulo Man"

        Cldr.IN ->
            "Indhia"

        Cldr.IO ->
            "Wilayah Inggris nang Segoro Hindia"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Èslan"

        Cldr.IT ->
            "Itali"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Yordania"

        Cldr.JP ->
            "Jepang"

        Cldr.KE ->
            "Kénya"

        Cldr.KG ->
            "Kirgistan"

        Cldr.KH ->
            "Kamboja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komoro"

        Cldr.KN ->
            "Saint Kits lan Nèvis"

        Cldr.KP ->
            "Korea Lor"

        Cldr.KR ->
            "Koréa Kidul"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Kapuloan Kéman"

        Cldr.KZ ->
            "Kasakstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "Santa Lusia"

        Cldr.LI ->
            "Liktenstén"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Libèria"

        Cldr.LS ->
            "Lésotho"

        Cldr.LT_ ->
            "Litowen"

        Cldr.LU ->
            "Luksemburg"

        Cldr.LV ->
            "Latvia"

        Cldr.LY ->
            "Libya"

        Cldr.MA ->
            "Maroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Montenégro"

        Cldr.MF ->
            "Santa Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Kapuloan Marshall"

        Cldr.MK ->
            "Républik Makédonia Lor"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macau"

        Cldr.MP ->
            "Kapuloan Mariana Lor"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Monsérat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maladéwa"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mèksiko"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mosambik"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Kalédonia Anyar"

        Cldr.NE ->
            "Nigér"

        Cldr.NF ->
            "Pulo Norfolk"

        Cldr.NG ->
            "Nigéria"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Walanda"

        Cldr.NO ->
            "Nurwègen"

        Cldr.NP ->
            "Népal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Selandia Anyar"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polinesia Prancis"

        Cldr.PG ->
            "Papua Nugini"

        Cldr.PH ->
            "Pilipina"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polen"

        Cldr.PM ->
            "Saint Pièr lan Mikuélon"

        Cldr.PN ->
            "Kapuloan Pitcairn"

        Cldr.PR ->
            "Puèrto Riko"

        Cldr.PS ->
            "Palèstina"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Ruméni"

        Cldr.RS ->
            "Sèrbi"

        Cldr.RU ->
            "Rusia"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Arab Saudi"

        Cldr.SB ->
            "Kapuloan Suleman"

        Cldr.SC ->
            "Sésèl"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Swèdhen"

        Cldr.SG ->
            "Singapura"

        Cldr.SH ->
            "Saint Héléna"

        Cldr.SI ->
            "Slovénia"

        Cldr.SJ ->
            "Svalbard lan Jan Mayen"

        Cldr.SK ->
            "Slowak"

        Cldr.SL ->
            "Siéra Léoné"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Sénégal"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Sudan Kidul"

        Cldr.ST ->
            "Sao Tomé lan Principé"

        Cldr.SV ->
            "Èl Salvador"

        Cldr.SX ->
            "Sint Martén"

        Cldr.SY ->
            "Suriah"

        Cldr.SZ ->
            "Swasiland"

        Cldr.TC ->
            "Turks lan Kapuloan Kaikos"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Wilayah Prancis nang Kutub Kidul"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tanah Thai"

        Cldr.TJ ->
            "Tajikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor Wétan"

        Cldr.TM ->
            "Turkménistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turki"

        Cldr.TT ->
            "Trinidad lan Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tansania"

        Cldr.UA ->
            "Ukrania"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Kapuloan AS Paling Njaba"

        Cldr.US ->
            "Amérika Sarékat"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Usbèkistan"

        Cldr.VA ->
            "Kutha Vatikan"

        Cldr.VC ->
            "Saint Vinsen lan Grénadin"

        Cldr.VE ->
            "Vénésuéla"

        Cldr.VG ->
            "Kapuloan Virgin Britania"

        Cldr.VI ->
            "Kapuloan Virgin Amérika"

        Cldr.VN ->
            "Viètnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis lan Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yaman"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Afrika Kidul"

        Cldr.ZM ->
            "Sambia"

        Cldr.ZW ->
            "Simbabwe"