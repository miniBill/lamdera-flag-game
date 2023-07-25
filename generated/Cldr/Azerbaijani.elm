module Cldr.Azerbaijani exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Azerbaijani.

    AD Andorra
    AE Birləşmiş Ərəb Əmirlikləri
    AF Əfqanıstan
    AG Antiqua və Barbuda
    AI Angilya
    AL Albaniya
    AM Ermənistan
    AO Anqola
    AQ Antarktika
    AR Argentina
    AS Amerika Samoası
    AT Avstriya
    AU Avstraliya
    AW Aruba
    AX Aland adaları
    AZ Azərbaycan
    BA Bosniya və Herseqovina
    BB Barbados
    BD Banqladeş
    BE Belçika
    BF Burkina Faso
    BG Bolqarıstan
    BH Bəhreyn
    BI Burundi
    BJ Benin
    BL Sent-Bartelemi
    BM Bermud adaları
    BN Bruney
    BO Boliviya
    BQ Karib Niderlandı
    BR Braziliya
    BS Baham adaları
    BT Butan
    BV Buve adası
    BW Botsvana
    BY Belarus
    BZ Beliz
    CA Kanada
    CC Kokos (Kilinq) adaları
    CD Konqo - Kinşasa
    CF Mərkəzi Afrika Respublikası
    CG Konqo - Brazzavil
    CH İsveçrə
    CI Kotd’ivuar
    CK Kuk adaları
    CL Çili
    CM Kamerun
    CN Çin
    CO Kolumbiya
    CR Kosta Rika
    CU Kuba
    CV Kabo-Verde
    CW Kurasao
    CX Milad adası
    CY Kipr
    CZ Çexiya
    DE Almaniya
    DJ Cibuti
    DK Danimarka
    DM Dominika
    DO Dominikan Respublikası
    DZ Əlcəzair
    EC Ekvador
    EE Estoniya
    EG Misir
    EH Qərbi Saxara
    ER Eritreya
    ES İspaniya
    ET Efiopiya
    FI Finlandiya
    FJ Fici
    FK Folklend adaları
    FM Mikroneziya
    FO Farer adaları
    FR Fransa
    GA Qabon
    GB Birləşmiş Krallıq
    GD Qrenada
    GE Gürcüstan
    GF Fransa Qvianası
    GG Gernsi
    GH Qana
    GI Cəbəllütariq
    GL Qrenlandiya
    GM Qambiya
    GN Qvineya
    GP Qvadelupa
    GQ Ekvatorial Qvineya
    GR Yunanıstan
    GS Cənubi Corciya və Cənubi Sendviç adaları
    GT Qvatemala
    GU Quam
    GW Qvineya-Bisau
    GY Qayana
    HK Honq Konq Xüsusi İnzibati Rayonu Çin
    HM Herd və Makdonald adaları
    HN Honduras
    HR Xorvatiya
    HT Haiti
    HU Macarıstan
    ID İndoneziya
    IE İrlandiya
    IL İsrail
    IM Men adası
    IN Hindistan
    IO Britaniyanın Hind Okeanı Ərazisi
    IQ İraq
    IR İran
    IS İslandiya
    IT İtaliya
    JE Cersi
    JM Yamayka
    JO İordaniya
    JP Yaponiya
    KE Keniya
    KG Qırğızıstan
    KH Kamboca
    KI Kiribati
    KM Komor adaları
    KN Sent-Kits və Nevis
    KP Şimali Koreya
    KR Cənubi Koreya
    KW Küveyt
    KY Kayman adaları
    KZ Qazaxıstan
    LA Laos
    LB Livan
    LC Sent-Lusiya
    LI Lixtenşteyn
    LK Şri-Lanka
    LR Liberiya
    LS Lesoto
    LT Litva
    LU Lüksemburq
    LV Latviya
    LY Liviya
    MA Mərakeş
    MC Monako
    MD Moldova
    ME Monteneqro
    MF Sent Martin
    MG Madaqaskar
    MH Marşal adaları
    MK Şimali Makedoniya
    ML Mali
    MM Myanma
    MN Monqolustan
    MO Makao XİR Çin
    MP Şimali Marian adaları
    MQ Martinik
    MR Mavritaniya
    MS Monserat
    MT Malta
    MU Mavriki
    MV Maldiv adaları
    MW Malavi
    MX Meksika
    MY Malayziya
    MZ Mozambik
    NA Namibiya
    NC Yeni Kaledoniya
    NE Niger
    NF Norfolk adası
    NG Nigeriya
    NI Nikaraqua
    NL Niderland
    NO Norveç
    NP Nepal
    NR Nauru
    NU Niue
    NZ Yeni Zelandiya
    OM Oman
    PA Panama
    PE Peru
    PF Fransa Polineziyası
    PG Papua-Yeni Qvineya
    PH Filippin
    PK Pakistan
    PL Polşa
    PM Müqəddəs Pyer və Mikelon
    PN Pitkern adaları
    PR Puerto Riko
    PS Fələstin Əraziləri
    PT Portuqaliya
    PW Palau
    PY Paraqvay
    QA Qətər
    RE Reyunyon
    RO Rumıniya
    RS Serbiya
    RU Rusiya
    RW Ruanda
    SA Səudiyyə Ərəbistanı
    SB Solomon adaları
    SC Seyşel adaları
    SD Sudan
    SE İsveç
    SG Sinqapur
    SH Müqəddəs Yelena
    SI Sloveniya
    SJ Svalbard və Yan-Mayen
    SK Slovakiya
    SL Syerra-Leone
    SM San-Marino
    SN Seneqal
    SO Somali
    SR Surinam
    SS Cənubi Sudan
    ST San-Tome və Prinsipi
    SV Salvador
    SX Sint-Marten
    SY Suriya
    SZ Esvatini
    TC Törks və Kaykos adaları
    TD Çad
    TF Fransanın Cənub Əraziləri
    TG Toqo
    TH Tailand
    TJ Tacikistan
    TK Tokelau
    TL Şərqi Timor
    TM Türkmənistan
    TN Tunis
    TO Tonqa
    TR Türkiyə
    TT Trinidad və Tobaqo
    TV Tuvalu
    TW Tayvan
    TZ Tanzaniya
    UA Ukrayna
    UG Uqanda
    UM ABŞ-a bağlı kiçik adacıqlar
    US Amerika Birləşmiş Ştatları
    UY Uruqvay
    UZ Özbəkistan
    VA Vatikan
    VC Sent-Vinsent və Qrenadinlər
    VE Venesuela
    VG Britaniyanın Virgin adaları
    VI ABŞ Virgin adaları
    VN Vyetnam
    VU Vanuatu
    WF Uollis və Futuna
    WS Samoa
    XK Kosovo
    YE Yəmən
    YT Mayot
    ZA Cənub Afrika
    ZM Zambiya
    ZW Zimbabve
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Birləşmiş Ərəb Əmirlikləri"

        Cldr.AF ->
            "Əfqanıstan"

        Cldr.AG ->
            "Antiqua və Barbuda"

        Cldr.AI ->
            "Angilya"

        Cldr.AL ->
            "Albaniya"

        Cldr.AM ->
            "Ermənistan"

        Cldr.AO ->
            "Anqola"

        Cldr.AQ ->
            "Antarktika"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Amerika Samoası"

        Cldr.AT ->
            "Avstriya"

        Cldr.AU ->
            "Avstraliya"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Aland adaları"

        Cldr.AZ ->
            "Azərbaycan"

        Cldr.BA ->
            "Bosniya və Herseqovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Banqladeş"

        Cldr.BE ->
            "Belçika"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bolqarıstan"

        Cldr.BH ->
            "Bəhreyn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Sent-Bartelemi"

        Cldr.BM ->
            "Bermud adaları"

        Cldr.BN ->
            "Bruney"

        Cldr.BO ->
            "Boliviya"

        Cldr.BQ ->
            "Karib Niderlandı"

        Cldr.BR ->
            "Braziliya"

        Cldr.BS ->
            "Baham adaları"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Buve adası"

        Cldr.BW ->
            "Botsvana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Beliz"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokos (Kilinq) adaları"

        Cldr.CD ->
            "Konqo - Kinşasa"

        Cldr.CF ->
            "Mərkəzi Afrika Respublikası"

        Cldr.CG ->
            "Konqo - Brazzavil"

        Cldr.CH ->
            "İsveçrə"

        Cldr.CI ->
            "Kotd’ivuar"

        Cldr.CK ->
            "Kuk adaları"

        Cldr.CL ->
            "Çili"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Çin"

        Cldr.CO ->
            "Kolumbiya"

        Cldr.CR ->
            "Kosta Rika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kabo-Verde"

        Cldr.CW ->
            "Kurasao"

        Cldr.CX ->
            "Milad adası"

        Cldr.CY ->
            "Kipr"

        Cldr.CZ ->
            "Çexiya"

        Cldr.DE ->
            "Almaniya"

        Cldr.DJ ->
            "Cibuti"

        Cldr.DK ->
            "Danimarka"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikan Respublikası"

        Cldr.DZ ->
            "Əlcəzair"

        Cldr.EC ->
            "Ekvador"

        Cldr.EE ->
            "Estoniya"

        Cldr.EG ->
            "Misir"

        Cldr.EH ->
            "Qərbi Saxara"

        Cldr.ER ->
            "Eritreya"

        Cldr.ES ->
            "İspaniya"

        Cldr.ET ->
            "Efiopiya"

        Cldr.FI ->
            "Finlandiya"

        Cldr.FJ ->
            "Fici"

        Cldr.FK ->
            "Folklend adaları"

        Cldr.FM ->
            "Mikroneziya"

        Cldr.FO ->
            "Farer adaları"

        Cldr.FR ->
            "Fransa"

        Cldr.GA ->
            "Qabon"

        Cldr.GB ->
            "Birləşmiş Krallıq"

        Cldr.GD ->
            "Qrenada"

        Cldr.GE ->
            "Gürcüstan"

        Cldr.GF ->
            "Fransa Qvianası"

        Cldr.GG ->
            "Gernsi"

        Cldr.GH ->
            "Qana"

        Cldr.GI ->
            "Cəbəllütariq"

        Cldr.GL ->
            "Qrenlandiya"

        Cldr.GM ->
            "Qambiya"

        Cldr.GN ->
            "Qvineya"

        Cldr.GP ->
            "Qvadelupa"

        Cldr.GQ ->
            "Ekvatorial Qvineya"

        Cldr.GR ->
            "Yunanıstan"

        Cldr.GS ->
            "Cənubi Corciya və Cənubi Sendviç adaları"

        Cldr.GT_ ->
            "Qvatemala"

        Cldr.GU ->
            "Quam"

        Cldr.GW ->
            "Qvineya-Bisau"

        Cldr.GY ->
            "Qayana"

        Cldr.HK ->
            "Honq Konq Xüsusi İnzibati Rayonu Çin"

        Cldr.HM ->
            "Herd və Makdonald adaları"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Xorvatiya"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Macarıstan"

        Cldr.ID ->
            "İndoneziya"

        Cldr.IE ->
            "İrlandiya"

        Cldr.IL ->
            "İsrail"

        Cldr.IM ->
            "Men adası"

        Cldr.IN ->
            "Hindistan"

        Cldr.IO ->
            "Britaniyanın Hind Okeanı Ərazisi"

        Cldr.IQ ->
            "İraq"

        Cldr.IR ->
            "İran"

        Cldr.IS ->
            "İslandiya"

        Cldr.IT ->
            "İtaliya"

        Cldr.JE ->
            "Cersi"

        Cldr.JM ->
            "Yamayka"

        Cldr.JO ->
            "İordaniya"

        Cldr.JP ->
            "Yaponiya"

        Cldr.KE ->
            "Keniya"

        Cldr.KG ->
            "Qırğızıstan"

        Cldr.KH ->
            "Kamboca"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komor adaları"

        Cldr.KN ->
            "Sent-Kits və Nevis"

        Cldr.KP ->
            "Şimali Koreya"

        Cldr.KR ->
            "Cənubi Koreya"

        Cldr.KW ->
            "Küveyt"

        Cldr.KY ->
            "Kayman adaları"

        Cldr.KZ ->
            "Qazaxıstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Livan"

        Cldr.LC ->
            "Sent-Lusiya"

        Cldr.LI ->
            "Lixtenşteyn"

        Cldr.LK ->
            "Şri-Lanka"

        Cldr.LR ->
            "Liberiya"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Litva"

        Cldr.LU ->
            "Lüksemburq"

        Cldr.LV ->
            "Latviya"

        Cldr.LY ->
            "Liviya"

        Cldr.MA ->
            "Mərakeş"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Monteneqro"

        Cldr.MF ->
            "Sent Martin"

        Cldr.MG ->
            "Madaqaskar"

        Cldr.MH ->
            "Marşal adaları"

        Cldr.MK ->
            "Şimali Makedoniya"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanma"

        Cldr.MN ->
            "Monqolustan"

        Cldr.MO ->
            "Makao XİR Çin"

        Cldr.MP ->
            "Şimali Marian adaları"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Mavritaniya"

        Cldr.MS ->
            "Monserat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mavriki"

        Cldr.MV ->
            "Maldiv adaları"

        Cldr.MW ->
            "Malavi"

        Cldr.MX ->
            "Meksika"

        Cldr.MY ->
            "Malayziya"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibiya"

        Cldr.NC ->
            "Yeni Kaledoniya"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk adası"

        Cldr.NG ->
            "Nigeriya"

        Cldr.NI ->
            "Nikaraqua"

        Cldr.NL ->
            "Niderland"

        Cldr.NO ->
            "Norveç"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Yeni Zelandiya"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Fransa Polineziyası"

        Cldr.PG ->
            "Papua-Yeni Qvineya"

        Cldr.PH ->
            "Filippin"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polşa"

        Cldr.PM ->
            "Müqəddəs Pyer və Mikelon"

        Cldr.PN ->
            "Pitkern adaları"

        Cldr.PR ->
            "Puerto Riko"

        Cldr.PS ->
            "Fələstin Əraziləri"

        Cldr.PT ->
            "Portuqaliya"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraqvay"

        Cldr.QA ->
            "Qətər"

        Cldr.RE ->
            "Reyunyon"

        Cldr.RO ->
            "Rumıniya"

        Cldr.RS ->
            "Serbiya"

        Cldr.RU ->
            "Rusiya"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Səudiyyə Ərəbistanı"

        Cldr.SB ->
            "Solomon adaları"

        Cldr.SC ->
            "Seyşel adaları"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "İsveç"

        Cldr.SG ->
            "Sinqapur"

        Cldr.SH ->
            "Müqəddəs Yelena"

        Cldr.SI ->
            "Sloveniya"

        Cldr.SJ ->
            "Svalbard və Yan-Mayen"

        Cldr.SK ->
            "Slovakiya"

        Cldr.SL ->
            "Syerra-Leone"

        Cldr.SM ->
            "San-Marino"

        Cldr.SN ->
            "Seneqal"

        Cldr.SO ->
            "Somali"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Cənubi Sudan"

        Cldr.ST ->
            "San-Tome və Prinsipi"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Sint-Marten"

        Cldr.SY ->
            "Suriya"

        Cldr.SZ ->
            "Esvatini"

        Cldr.TC ->
            "Törks və Kaykos adaları"

        Cldr.TD ->
            "Çad"

        Cldr.TF ->
            "Fransanın Cənub Əraziləri"

        Cldr.TG ->
            "Toqo"

        Cldr.TH ->
            "Tailand"

        Cldr.TJ ->
            "Tacikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Şərqi Timor"

        Cldr.TM ->
            "Türkmənistan"

        Cldr.TN ->
            "Tunis"

        Cldr.TO ->
            "Tonqa"

        Cldr.TR ->
            "Türkiyə"

        Cldr.TT ->
            "Trinidad və Tobaqo"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Tayvan"

        Cldr.TZ ->
            "Tanzaniya"

        Cldr.UA ->
            "Ukrayna"

        Cldr.UG ->
            "Uqanda"

        Cldr.UM ->
            "ABŞ-a bağlı kiçik adacıqlar"

        Cldr.US ->
            "Amerika Birləşmiş Ştatları"

        Cldr.UY ->
            "Uruqvay"

        Cldr.UZ ->
            "Özbəkistan"

        Cldr.VA ->
            "Vatikan"

        Cldr.VC ->
            "Sent-Vinsent və Qrenadinlər"

        Cldr.VE ->
            "Venesuela"

        Cldr.VG ->
            "Britaniyanın Virgin adaları"

        Cldr.VI ->
            "ABŞ Virgin adaları"

        Cldr.VN ->
            "Vyetnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Uollis və Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yəmən"

        Cldr.YT ->
            "Mayot"

        Cldr.ZA ->
            "Cənub Afrika"

        Cldr.ZM ->
            "Zambiya"

        Cldr.ZW ->
            "Zimbabve"