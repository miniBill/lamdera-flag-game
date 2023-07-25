module Cldr.Azerbaijani.Latin exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Azerbaijani


{-| Name for `CountryCode` in Azerbaijani (Latin).

This is identical to the Azerbaijani version.

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
countryCodeToName =
    Cldr.Azerbaijani.countryCodeToName