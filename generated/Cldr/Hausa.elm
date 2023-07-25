module Cldr.Hausa exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Hausa.

    AD Andora
    AE Haɗaɗɗiyar Daular Larabawa
    AF Afaganistan
    AG Antigua da Barbuda
    AI Angila
    AL Albaniya
    AM Armeniya
    AO Angola
    AQ Antatika
    AR Arjantiniya
    AS Samowa Ta Amurka
    AT Ostiriya
    AU Ostareliya
    AW Aruba
    AX Tsibirai na Åland
    AZ Azarbaijan
    BA Bosniya da Harzagobina
    BB Barbadas
    BD Bangiladas
    BE Belgiyom
    BF Burkina Faso
    BG Bulgariya
    BH Baharan
    BI Burundi
    BJ Binin
    BL San Barthélemy
    BM Barmuda
    BN Burune
    BO Bolibiya
    BQ Caribbean Netherlands
    BR Birazil
    BS Bahamas
    BT Butan
    BV Tsibirin Bouvet
    BW Baswana
    BY Belarus
    BZ Beliz
    CA Kanada
    CC Tsibirai Cocos (Keeling)
    CD Jamhuriyar Dimokuraɗiyyar Kongo
    CF Jamhuriyar Afirka Ta Tsakiya
    CG Kongo
    CH Suwizalan
    CI Aibari Kwas
    CK Tsibiran Kuku
    CL Cayile
    CM Kamaru
    CN Sin
    CO Kolambiya
    CR Kwasta Rika
    CU Kyuba
    CV Tsibiran Kap Barde
    CW Ƙasar Curaçao
    CX Tsibirin Kirsmati
    CY Sifurus
    CZ Jamhuriyar Cak
    DE Jamus
    DJ Jibuti
    DK Danmark
    DM Dominika
    DO Jamhuriyar Dominika
    DZ Aljeriya
    EC Ekwador
    EE Estoniya
    EG Misira
    EH Yammacin Sahara
    ER Eritireya
    ES Sipen
    ET Habasha
    FI Finlan
    FJ Fiji
    FK Tsibiran Falkilan
    FM Mikuronesiya
    FO Tsibirai na Faroe
    FR Faransa
    GA Gabon
    GB Biritaniya
    GD Girnada
    GE Jiwarjiya
    GF Gini Ta Faransa
    GG Yankin Guernsey
    GH Gana
    GI Jibaraltar
    GL Grinlan
    GM Gambiya
    GN Gini
    GP Gwadaluf
    GQ Gini Ta Ikwaita
    GR Girka
    GS Kudancin Geogia da Kudancin Tsibirin Sandiwic
    GT Gwatamala
    GU Gwam
    GW Gini Bisau
    GY Guyana
    HK Babban Yankin Mulkin Hong Kong na Ƙasar Sin
    HM Tsibirin Heard da McDonald
    HN Yankin Honduras
    HR Kurowaishiya
    HT Haiti
    HU Hungari
    ID Indunusiya
    IE Ayalan
    IL Israʼila
    IM Isle na Mutum
    IN Indiya
    IO Yankin Birtaniya Na Tekun Indiya
    IQ Iraƙi
    IR Iran
    IS Aisalan
    IT Italiya
    JE Kasar Jersey
    JM Jamaika
    JO Jordan
    JP Japan
    KE Kenya
    KG Kirgizistan
    KH Kambodiya
    KI Kiribati
    KM Kwamoras
    KN San Kiti Da Nebis
    KP Koriya Ta Arewa
    KR Koriya Ta Kudu
    KW Kwiyat
    KY Tsibiran Kaiman
    KZ Kazakistan
    LA Lawas
    LB Labanan
    LC San Lusiya
    LI Licansitan
    LK Siri Lanka
    LR Laberiya
    LS Lesoto
    LT Lituweniya
    LU Lukusambur
    LV Litibiya
    LY Libiya
    MA Maroko
    MC Monako
    MD Maldoba
    ME Mantanegara
    MF San Martin
    MG Madagaskar
    MH Tsibiran Marshal
    MK Macedonia ta Arewa
    ML Mali
    MM Burma, Miyamar
    MN Mangoliya
    MO Babban Yankin Mulkin Macao na Ƙasar Sin
    MP Tsibiran Mariyana Na Arewa
    MQ Martinik
    MR Moritaniya
    MS Manserati
    MT Malta
    MU Moritus
    MV Maldibi
    MW Malawi
    MX Mesiko
    MY Malaisiya
    MZ Mozambik
    NA Namibiya
    NC Kaledoniya Sabuwa
    NE Nijar
    NF Tsibirin Narfalk
    NG Nijeriya
    NI Nikaraguwa
    NL Holan
    NO Norwe
    NP Nefal
    NR Nauru
    NU Niyu
    NZ Nuzilan
    OM Oman
    PA Panama
    PE Feru
    PF Folinesiya Ta Faransa
    PG Papuwa Nugini
    PH Filipin
    PK Pakistan
    PL Polan
    PM San Piyar da Mikelan
    PN Pitakarin
    PR Porto Riko
    PS Yankunan Palasɗinu
    PT Portugal
    PW Palau
    PY Faragwai
    QA Katar
    RE Rawuniyan
    RO Romaniya
    RS Sabiya
    RU Rasha
    RW Ruwanda
    SA Saudiyya
    SB Tsibiran Salaman
    SC Seychelles
    SD Sudan
    SE Suwedan
    SG Singapur
    SH San Helena
    SI Sulobeniya
    SJ Svalbard da Jan Mayen
    SK Sulobakiya
    SL Salewo
    SM San Marino
    SN Sanigal
    SO Somaliya
    SR Suriname
    SS Sudan ta Kudu
    ST Sawo Tome Da Paransip
    SV El Salbador
    SX San Maarten
    SY Sham, Siriya
    SZ Eswatini
    TC Turkis Da Tsibiran Kaikwas
    TD Cadi
    TF Yankin Faransi ta Kudu
    TG Togo
    TH Tailan
    TJ Tajikistan
    TK Takelau
    TL Timor Ta Gabas
    TM Turkumenistan
    TN Tunisiya
    TO Tonga
    TR Turkiyya
    TT Tirinidad Da Tobago
    TV Tubalu
    TW Taiwan
    TZ Tanzaniya
    UA Yukaran
    UG Yuganda
    UM Rukunin Tsibirin U.S
    US Amurka
    UY Yurigwai
    UZ Uzubekistan
    VA Batikan
    VC San Binsan Da Girnadin
    VE Benezuwela
    VG Tsibirin Birjin Na Birtaniya
    VI Tsibiran Birjin Ta Amurka
    VN Biyetinam
    VU Banuwatu
    WF Walis Da Futuna
    WS Samoa
    XK Kasar Kosovo
    YE Yamal
    YT Mayoti
    ZA Afirka Ta Kudu
    ZM Zambiya
    ZW Zimbabuwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andora"

        Cldr.AE ->
            "Haɗaɗɗiyar Daular Larabawa"

        Cldr.AF ->
            "Afaganistan"

        Cldr.AG ->
            "Antigua da Barbuda"

        Cldr.AI ->
            "Angila"

        Cldr.AL ->
            "Albaniya"

        Cldr.AM ->
            "Armeniya"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antatika"

        Cldr.AR ->
            "Arjantiniya"

        Cldr.AS ->
            "Samowa Ta Amurka"

        Cldr.AT ->
            "Ostiriya"

        Cldr.AU ->
            "Ostareliya"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Tsibirai na Åland"

        Cldr.AZ ->
            "Azarbaijan"

        Cldr.BA ->
            "Bosniya da Harzagobina"

        Cldr.BB ->
            "Barbadas"

        Cldr.BD ->
            "Bangiladas"

        Cldr.BE ->
            "Belgiyom"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgariya"

        Cldr.BH ->
            "Baharan"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Binin"

        Cldr.BL ->
            "San Barthélemy"

        Cldr.BM ->
            "Barmuda"

        Cldr.BN ->
            "Burune"

        Cldr.BO ->
            "Bolibiya"

        Cldr.BQ ->
            "Caribbean Netherlands"

        Cldr.BR ->
            "Birazil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Tsibirin Bouvet"

        Cldr.BW ->
            "Baswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Beliz"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Tsibirai Cocos (Keeling)"

        Cldr.CD ->
            "Jamhuriyar Dimokuraɗiyyar Kongo"

        Cldr.CF ->
            "Jamhuriyar Afirka Ta Tsakiya"

        Cldr.CG ->
            "Kongo"

        Cldr.CH ->
            "Suwizalan"

        Cldr.CI ->
            "Aibari Kwas"

        Cldr.CK ->
            "Tsibiran Kuku"

        Cldr.CL ->
            "Cayile"

        Cldr.CM ->
            "Kamaru"

        Cldr.CN ->
            "Sin"

        Cldr.CO ->
            "Kolambiya"

        Cldr.CR ->
            "Kwasta Rika"

        Cldr.CU ->
            "Kyuba"

        Cldr.CV ->
            "Tsibiran Kap Barde"

        Cldr.CW ->
            "Ƙasar Curaçao"

        Cldr.CX ->
            "Tsibirin Kirsmati"

        Cldr.CY ->
            "Sifurus"

        Cldr.CZ ->
            "Jamhuriyar Cak"

        Cldr.DE ->
            "Jamus"

        Cldr.DJ ->
            "Jibuti"

        Cldr.DK ->
            "Danmark"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Jamhuriyar Dominika"

        Cldr.DZ ->
            "Aljeriya"

        Cldr.EC ->
            "Ekwador"

        Cldr.EE ->
            "Estoniya"

        Cldr.EG ->
            "Misira"

        Cldr.EH ->
            "Yammacin Sahara"

        Cldr.ER ->
            "Eritireya"

        Cldr.ES ->
            "Sipen"

        Cldr.ET ->
            "Habasha"

        Cldr.FI ->
            "Finlan"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Tsibiran Falkilan"

        Cldr.FM ->
            "Mikuronesiya"

        Cldr.FO ->
            "Tsibirai na Faroe"

        Cldr.FR ->
            "Faransa"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Biritaniya"

        Cldr.GD ->
            "Girnada"

        Cldr.GE ->
            "Jiwarjiya"

        Cldr.GF ->
            "Gini Ta Faransa"

        Cldr.GG ->
            "Yankin Guernsey"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Jibaraltar"

        Cldr.GL ->
            "Grinlan"

        Cldr.GM ->
            "Gambiya"

        Cldr.GN ->
            "Gini"

        Cldr.GP ->
            "Gwadaluf"

        Cldr.GQ ->
            "Gini Ta Ikwaita"

        Cldr.GR ->
            "Girka"

        Cldr.GS ->
            "Kudancin Geogia da Kudancin Tsibirin Sandiwic"

        Cldr.GT_ ->
            "Gwatamala"

        Cldr.GU ->
            "Gwam"

        Cldr.GW ->
            "Gini Bisau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Babban Yankin Mulkin Hong Kong na Ƙasar Sin"

        Cldr.HM ->
            "Tsibirin Heard da McDonald"

        Cldr.HN ->
            "Yankin Honduras"

        Cldr.HR ->
            "Kurowaishiya"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hungari"

        Cldr.ID ->
            "Indunusiya"

        Cldr.IE ->
            "Ayalan"

        Cldr.IL ->
            "Israʼila"

        Cldr.IM ->
            "Isle na Mutum"

        Cldr.IN ->
            "Indiya"

        Cldr.IO ->
            "Yankin Birtaniya Na Tekun Indiya"

        Cldr.IQ ->
            "Iraƙi"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Aisalan"

        Cldr.IT ->
            "Italiya"

        Cldr.JE ->
            "Kasar Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jordan"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirgizistan"

        Cldr.KH ->
            "Kambodiya"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Kwamoras"

        Cldr.KN ->
            "San Kiti Da Nebis"

        Cldr.KP ->
            "Koriya Ta Arewa"

        Cldr.KR ->
            "Koriya Ta Kudu"

        Cldr.KW ->
            "Kwiyat"

        Cldr.KY ->
            "Tsibiran Kaiman"

        Cldr.KZ ->
            "Kazakistan"

        Cldr.LA ->
            "Lawas"

        Cldr.LB ->
            "Labanan"

        Cldr.LC ->
            "San Lusiya"

        Cldr.LI ->
            "Licansitan"

        Cldr.LK ->
            "Siri Lanka"

        Cldr.LR ->
            "Laberiya"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Lituweniya"

        Cldr.LU ->
            "Lukusambur"

        Cldr.LV ->
            "Litibiya"

        Cldr.LY ->
            "Libiya"

        Cldr.MA ->
            "Maroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Maldoba"

        Cldr.ME ->
            "Mantanegara"

        Cldr.MF ->
            "San Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Tsibiran Marshal"

        Cldr.MK ->
            "Macedonia ta Arewa"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Burma, Miyamar"

        Cldr.MN ->
            "Mangoliya"

        Cldr.MO ->
            "Babban Yankin Mulkin Macao na Ƙasar Sin"

        Cldr.MP ->
            "Tsibiran Mariyana Na Arewa"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Moritaniya"

        Cldr.MS ->
            "Manserati"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Moritus"

        Cldr.MV ->
            "Maldibi"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mesiko"

        Cldr.MY ->
            "Malaisiya"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibiya"

        Cldr.NC ->
            "Kaledoniya Sabuwa"

        Cldr.NE ->
            "Nijar"

        Cldr.NF ->
            "Tsibirin Narfalk"

        Cldr.NG ->
            "Nijeriya"

        Cldr.NI ->
            "Nikaraguwa"

        Cldr.NL ->
            "Holan"

        Cldr.NO ->
            "Norwe"

        Cldr.NP ->
            "Nefal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niyu"

        Cldr.NZ ->
            "Nuzilan"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Feru"

        Cldr.PF ->
            "Folinesiya Ta Faransa"

        Cldr.PG ->
            "Papuwa Nugini"

        Cldr.PH ->
            "Filipin"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polan"

        Cldr.PM ->
            "San Piyar da Mikelan"

        Cldr.PN ->
            "Pitakarin"

        Cldr.PR ->
            "Porto Riko"

        Cldr.PS ->
            "Yankunan Palasɗinu"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Faragwai"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Rawuniyan"

        Cldr.RO ->
            "Romaniya"

        Cldr.RS ->
            "Sabiya"

        Cldr.RU ->
            "Rasha"

        Cldr.RW ->
            "Ruwanda"

        Cldr.SA ->
            "Saudiyya"

        Cldr.SB ->
            "Tsibiran Salaman"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Suwedan"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "San Helena"

        Cldr.SI ->
            "Sulobeniya"

        Cldr.SJ ->
            "Svalbard da Jan Mayen"

        Cldr.SK ->
            "Sulobakiya"

        Cldr.SL ->
            "Salewo"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Sanigal"

        Cldr.SO ->
            "Somaliya"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Sudan ta Kudu"

        Cldr.ST ->
            "Sawo Tome Da Paransip"

        Cldr.SV ->
            "El Salbador"

        Cldr.SX ->
            "San Maarten"

        Cldr.SY ->
            "Sham, Siriya"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turkis Da Tsibiran Kaikwas"

        Cldr.TD ->
            "Cadi"

        Cldr.TF ->
            "Yankin Faransi ta Kudu"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailan"

        Cldr.TJ ->
            "Tajikistan"

        Cldr.TK ->
            "Takelau"

        Cldr.TL ->
            "Timor Ta Gabas"

        Cldr.TM ->
            "Turkumenistan"

        Cldr.TN ->
            "Tunisiya"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkiyya"

        Cldr.TT ->
            "Tirinidad Da Tobago"

        Cldr.TV ->
            "Tubalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzaniya"

        Cldr.UA ->
            "Yukaran"

        Cldr.UG ->
            "Yuganda"

        Cldr.UM ->
            "Rukunin Tsibirin U.S"

        Cldr.US ->
            "Amurka"

        Cldr.UY ->
            "Yurigwai"

        Cldr.UZ ->
            "Uzubekistan"

        Cldr.VA ->
            "Batikan"

        Cldr.VC ->
            "San Binsan Da Girnadin"

        Cldr.VE ->
            "Benezuwela"

        Cldr.VG ->
            "Tsibirin Birjin Na Birtaniya"

        Cldr.VI ->
            "Tsibiran Birjin Ta Amurka"

        Cldr.VN ->
            "Biyetinam"

        Cldr.VU ->
            "Banuwatu"

        Cldr.WF ->
            "Walis Da Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kasar Kosovo"

        Cldr.YE ->
            "Yamal"

        Cldr.YT ->
            "Mayoti"

        Cldr.ZA ->
            "Afirka Ta Kudu"

        Cldr.ZM ->
            "Zambiya"

        Cldr.ZW ->
            "Zimbabuwe"