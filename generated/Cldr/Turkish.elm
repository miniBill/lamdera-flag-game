module Cldr.Turkish exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Turkish.

    AD Andorra
    AE Birleşik Arap Emirlikleri
    AF Afganistan
    AG Antigua ve Barbuda
    AI Anguilla
    AL Arnavutluk
    AM Ermenistan
    AO Angola
    AQ Antarktika
    AR Arjantin
    AS Amerikan Samoası
    AT Avusturya
    AU Avustralya
    AW Aruba
    AX Åland Adaları
    AZ Azerbaycan
    BA Bosna-Hersek
    BB Barbados
    BD Bangladeş
    BE Belçika
    BF Burkina Faso
    BG Bulgaristan
    BH Bahreyn
    BI Burundi
    BJ Benin
    BL Saint Barthelemy
    BM Bermuda
    BN Brunei
    BO Bolivya
    BQ Karayip Hollandası
    BR Brezilya
    BS Bahamalar
    BT Butan
    BV Bouvet Adası
    BW Botsvana
    BY Belarus
    BZ Belize
    CA Kanada
    CC Cocos (Keeling) Adaları
    CD Kongo - Kinşasa
    CF Orta Afrika Cumhuriyeti
    CG Kongo - Brazavil
    CH İsviçre
    CI Côte d’Ivoire
    CK Cook Adaları
    CL Şili
    CM Kamerun
    CN Çin
    CO Kolombiya
    CR Kosta Rika
    CU Küba
    CV Cape Verde
    CW Curaçao
    CX Christmas Adası
    CY Kıbrıs
    CZ Çekya
    DE Almanya
    DJ Cibuti
    DK Danimarka
    DM Dominika
    DO Dominik Cumhuriyeti
    DZ Cezayir
    EC Ekvador
    EE Estonya
    EG Mısır
    EH Batı Sahra
    ER Eritre
    ES İspanya
    ET Etiyopya
    FI Finlandiya
    FJ Fiji
    FK Falkland Adaları
    FM Mikronezya
    FO Faroe Adaları
    FR Fransa
    GA Gabon
    GB Birleşik Krallık
    GD Grenada
    GE Gürcistan
    GF Fransız Guyanası
    GG Guernsey
    GH Gana
    GI Cebelitarık
    GL Grönland
    GM Gambiya
    GN Gine
    GP Guadeloupe
    GQ Ekvator Ginesi
    GR Yunanistan
    GS Güney Georgia ve Güney Sandwich Adaları
    GT Guatemala
    GU Guam
    GW Gine-Bissau
    GY Guyana
    HK Çin Hong Kong ÖİB
    HM Heard Adası ve McDonald Adaları
    HN Honduras
    HR Hırvatistan
    HT Haiti
    HU Macaristan
    ID Endonezya
    IE İrlanda
    IL İsrail
    IM Man Adası
    IN Hindistan
    IO Britanya Hint Okyanusu Toprakları
    IQ Irak
    IR İran
    IS İzlanda
    IT İtalya
    JE Jersey
    JM Jamaika
    JO Ürdün
    JP Japonya
    KE Kenya
    KG Kırgızistan
    KH Kamboçya
    KI Kiribati
    KM Komorlar
    KN Saint Kitts ve Nevis
    KP Kuzey Kore
    KR Güney Kore
    KW Kuveyt
    KY Cayman Adaları
    KZ Kazakistan
    LA Laos
    LB Lübnan
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberya
    LS Lesotho
    LT Litvanya
    LU Lüksemburg
    LV Letonya
    LY Libya
    MA Fas
    MC Monako
    MD Moldova
    ME Karadağ
    MF Saint Martin
    MG Madagaskar
    MH Marshall Adaları
    MK Kuzey Makedonya
    ML Mali
    MM Myanmar (Burma)
    MN Moğolistan
    MO Çin Makao ÖİB
    MP Kuzey Mariana Adaları
    MQ Martinik
    MR Moritanya
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldivler
    MW Malavi
    MX Meksika
    MY Malezya
    MZ Mozambik
    NA Namibya
    NC Yeni Kaledonya
    NE Nijer
    NF Norfolk Adası
    NG Nijerya
    NI Nikaragua
    NL Hollanda
    NO Norveç
    NP Nepal
    NR Nauru
    NU Niue
    NZ Yeni Zelanda
    OM Umman
    PA Panama
    PE Peru
    PF Fransız Polinezyası
    PG Papua Yeni Gine
    PH Filipinler
    PK Pakistan
    PL Polonya
    PM Saint Pierre ve Miquelon
    PN Pitcairn Adaları
    PR Porto Riko
    PS Filistin Bölgeleri
    PT Portekiz
    PW Palau
    PY Paraguay
    QA Katar
    RE Reunion
    RO Romanya
    RS Sırbistan
    RU Rusya
    RW Ruanda
    SA Suudi Arabistan
    SB Solomon Adaları
    SC Seyşeller
    SD Sudan
    SE İsveç
    SG Singapur
    SH Saint Helena
    SI Slovenya
    SJ Svalbard ve Jan Mayen
    SK Slovakya
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somali
    SR Surinam
    SS Güney Sudan
    ST Sao Tome ve Principe
    SV El Salvador
    SX Sint Maarten
    SY Suriye
    SZ Esvatini
    TC Turks ve Caicos Adaları
    TD Çad
    TF Fransız Güney Toprakları
    TG Togo
    TH Tayland
    TJ Tacikistan
    TK Tokelau
    TL Timor-Leste
    TM Türkmenistan
    TN Tunus
    TO Tonga
    TR Türkiye
    TT Trinidad ve Tobago
    TV Tuvalu
    TW Tayvan
    TZ Tanzanya
    UA Ukrayna
    UG Uganda
    UM ABD Küçük Harici Adaları
    US Amerika Birleşik Devletleri
    UY Uruguay
    UZ Özbekistan
    VA Vatikan
    VC Saint Vincent ve Grenadinler
    VE Venezuela
    VG Britanya Virjin Adaları
    VI ABD Virjin Adaları
    VN Vietnam
    VU Vanuatu
    WF Wallis ve Futuna
    WS Samoa
    XK Kosova
    YE Yemen
    YT Mayotte
    ZA Güney Afrika
    ZM Zambiya
    ZW Zimbabve
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Birleşik Arap Emirlikleri"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua ve Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Arnavutluk"

        Cldr.AM ->
            "Ermenistan"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktika"

        Cldr.AR ->
            "Arjantin"

        Cldr.AS ->
            "Amerikan Samoası"

        Cldr.AT ->
            "Avusturya"

        Cldr.AU ->
            "Avustralya"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Åland Adaları"

        Cldr.AZ ->
            "Azerbaycan"

        Cldr.BA ->
            "Bosna-Hersek"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladeş"

        Cldr.BE ->
            "Belçika"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaristan"

        Cldr.BH ->
            "Bahreyn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Saint Barthelemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivya"

        Cldr.BQ ->
            "Karayip Hollandası"

        Cldr.BR ->
            "Brezilya"

        Cldr.BS ->
            "Bahamalar"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Bouvet Adası"

        Cldr.BW ->
            "Botsvana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Cocos (Keeling) Adaları"

        Cldr.CD ->
            "Kongo - Kinşasa"

        Cldr.CF ->
            "Orta Afrika Cumhuriyeti"

        Cldr.CG ->
            "Kongo - Brazavil"

        Cldr.CH ->
            "İsviçre"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Cook Adaları"

        Cldr.CL ->
            "Şili"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Çin"

        Cldr.CO ->
            "Kolombiya"

        Cldr.CR ->
            "Kosta Rika"

        Cldr.CU ->
            "Küba"

        Cldr.CV ->
            "Cape Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Christmas Adası"

        Cldr.CY ->
            "Kıbrıs"

        Cldr.CZ ->
            "Çekya"

        Cldr.DE ->
            "Almanya"

        Cldr.DJ ->
            "Cibuti"

        Cldr.DK ->
            "Danimarka"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominik Cumhuriyeti"

        Cldr.DZ ->
            "Cezayir"

        Cldr.EC ->
            "Ekvador"

        Cldr.EE ->
            "Estonya"

        Cldr.EG ->
            "Mısır"

        Cldr.EH ->
            "Batı Sahra"

        Cldr.ER ->
            "Eritre"

        Cldr.ES ->
            "İspanya"

        Cldr.ET ->
            "Etiyopya"

        Cldr.FI ->
            "Finlandiya"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Falkland Adaları"

        Cldr.FM ->
            "Mikronezya"

        Cldr.FO ->
            "Faroe Adaları"

        Cldr.FR ->
            "Fransa"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Birleşik Krallık"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gürcistan"

        Cldr.GF ->
            "Fransız Guyanası"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Cebelitarık"

        Cldr.GL ->
            "Grönland"

        Cldr.GM ->
            "Gambiya"

        Cldr.GN ->
            "Gine"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Ekvator Ginesi"

        Cldr.GR ->
            "Yunanistan"

        Cldr.GS ->
            "Güney Georgia ve Güney Sandwich Adaları"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gine-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Çin Hong Kong ÖİB"

        Cldr.HM ->
            "Heard Adası ve McDonald Adaları"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Hırvatistan"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Macaristan"

        Cldr.ID ->
            "Endonezya"

        Cldr.IE ->
            "İrlanda"

        Cldr.IL ->
            "İsrail"

        Cldr.IM ->
            "Man Adası"

        Cldr.IN ->
            "Hindistan"

        Cldr.IO ->
            "Britanya Hint Okyanusu Toprakları"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "İran"

        Cldr.IS ->
            "İzlanda"

        Cldr.IT ->
            "İtalya"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Ürdün"

        Cldr.JP ->
            "Japonya"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kırgızistan"

        Cldr.KH ->
            "Kamboçya"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komorlar"

        Cldr.KN ->
            "Saint Kitts ve Nevis"

        Cldr.KP ->
            "Kuzey Kore"

        Cldr.KR ->
            "Güney Kore"

        Cldr.KW ->
            "Kuveyt"

        Cldr.KY ->
            "Cayman Adaları"

        Cldr.KZ ->
            "Kazakistan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Lübnan"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberya"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Litvanya"

        Cldr.LU ->
            "Lüksemburg"

        Cldr.LV ->
            "Letonya"

        Cldr.LY ->
            "Libya"

        Cldr.MA ->
            "Fas"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Karadağ"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshall Adaları"

        Cldr.MK ->
            "Kuzey Makedonya"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Moğolistan"

        Cldr.MO ->
            "Çin Makao ÖİB"

        Cldr.MP ->
            "Kuzey Mariana Adaları"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Moritanya"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldivler"

        Cldr.MW ->
            "Malavi"

        Cldr.MX ->
            "Meksika"

        Cldr.MY ->
            "Malezya"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibya"

        Cldr.NC ->
            "Yeni Kaledonya"

        Cldr.NE ->
            "Nijer"

        Cldr.NF ->
            "Norfolk Adası"

        Cldr.NG ->
            "Nijerya"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Hollanda"

        Cldr.NO ->
            "Norveç"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Yeni Zelanda"

        Cldr.OM ->
            "Umman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Fransız Polinezyası"

        Cldr.PG ->
            "Papua Yeni Gine"

        Cldr.PH ->
            "Filipinler"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polonya"

        Cldr.PM ->
            "Saint Pierre ve Miquelon"

        Cldr.PN ->
            "Pitcairn Adaları"

        Cldr.PR ->
            "Porto Riko"

        Cldr.PS ->
            "Filistin Bölgeleri"

        Cldr.PT ->
            "Portekiz"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Reunion"

        Cldr.RO ->
            "Romanya"

        Cldr.RS ->
            "Sırbistan"

        Cldr.RU ->
            "Rusya"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Suudi Arabistan"

        Cldr.SB ->
            "Solomon Adaları"

        Cldr.SC ->
            "Seyşeller"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "İsveç"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Saint Helena"

        Cldr.SI ->
            "Slovenya"

        Cldr.SJ ->
            "Svalbard ve Jan Mayen"

        Cldr.SK ->
            "Slovakya"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somali"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Güney Sudan"

        Cldr.ST ->
            "Sao Tome ve Principe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Suriye"

        Cldr.SZ ->
            "Esvatini"

        Cldr.TC ->
            "Turks ve Caicos Adaları"

        Cldr.TD ->
            "Çad"

        Cldr.TF ->
            "Fransız Güney Toprakları"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tayland"

        Cldr.TJ ->
            "Tacikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Türkmenistan"

        Cldr.TN ->
            "Tunus"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Türkiye"

        Cldr.TT ->
            "Trinidad ve Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Tayvan"

        Cldr.TZ ->
            "Tanzanya"

        Cldr.UA ->
            "Ukrayna"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "ABD Küçük Harici Adaları"

        Cldr.US ->
            "Amerika Birleşik Devletleri"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Özbekistan"

        Cldr.VA ->
            "Vatikan"

        Cldr.VC ->
            "Saint Vincent ve Grenadinler"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Britanya Virjin Adaları"

        Cldr.VI ->
            "ABD Virjin Adaları"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis ve Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosova"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Güney Afrika"

        Cldr.ZM ->
            "Zambiya"

        Cldr.ZW ->
            "Zimbabve"