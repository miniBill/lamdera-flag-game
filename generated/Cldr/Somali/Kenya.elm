module Cldr.Somali.Kenya exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Somali


{-| Name for `CountryCode` in Somali - Kenya.

This is identical to the Somali version.

    AD Andora
    AE Midawga Imaaraatka Carabta
    AF Afgaanistaan
    AG Antigua & Barbuuda
    AI Anguula
    AL Albaaniya
    AM Armeeniya
    AO Angoola
    AQ Antaarktika
    AR Arjentiina
    AS Samowa Ameerika
    AT Awsteriya
    AU Awstaraaliya
    AW Aruba
    AX Jasiiradda Aland
    AZ Asarbajan
    BA Boosniya & Harsegofina
    BB Baarbadoos
    BD Bangaladhesh
    BE Biljam
    BF Burkiina Faaso
    BG Bulgaariya
    BH Baxreyn
    BI Burundi
    BJ Biniin
    BL St. Baathelemiy
    BM Barmuuda
    BN Buruneey
    BO Boliifiya
    BQ Karibiyaan Nadarlands
    BR Baraasiil
    BS Bahaamas
    BT Buutan
    BV Buufet Island
    BW Botuswaana
    BY Belarus
    BZ Beliis
    CA Kanada
    CC Jasiiradda Kookoos
    CD Jamhuuriyadda Dimuquraadiga Kongo
    CF Jamhuuriyadda Afrikada Dhexe
    CG Kongo
    CH Swiiserlaand
    CI Ayfori Koost
    CK Jasiiradda Kook
    CL Jili
    CM Kaameruun
    CN Shiinaha
    CO Koloombiya
    CR Costa Rica
    CU Kuuba
    CV Jasiiradda Kayb Faarde
    CW Kurakaaw
    CX Jasiiradda Kirismas
    CY Qubrus
    CZ Jekiya
    DE Jarmal
    DJ Jabuuti
    DK Denmark
    DM Dominika
    DO Jamhuuriyaddda Dominika
    DZ Aljeeriya
    EC Ikuwadoor
    EE Estooniya
    EG Masar
    EH Saxaraha Galbeed
    ER Eritreeya
    ES Isbeyn
    ET Itoobiya
    FI Finland
    FJ Fiji
    FK Jaziiradaha Fooklaan
    FM Mikroneesiya
    FO Jasiiradda Faroo
    FR Faransiis
    GA Gaaboon
    GB Boqortooyada Midowday
    GD Giriinaada
    GE Joorjiya
    GF Faransiis Gini
    GG Guurnsey
    GH Gaana
    GI Gibraltar
    GL Greenland
    GM Gambiya
    GN Gini
    GP Guadeluub
    GQ Ekuwatooriyal Gini
    GR Giriig
    GS Jasiiradda Joorjiyada Koonfureed & Sandwij
    GT Guwaatamaala
    GU Guaam
    GW Gini-Bisaaw
    GY Guyana
    HK Hong Kong
    HM Jasiiradda Haad & MakDonald
    HN Honduras
    HR Korweeshiya
    HT Haiti
    HU Hangari
    ID Indoneesiya
    IE Ayrlaand
    IL Israaʼiil
    IM Jasiiradda Isle of Man
    IN Hindiya
    IO Dhul xadeedka Badweynta Hindiya ee Biritishka
    IQ Ciraaq
    IR Iiraan
    IS Ayslaand
    IT Talyaani
    JE Jaarsey
    JM Jamaaika
    JO Urdun
    JP Jabaan
    KE Kenya
    KG Kirgistaan
    KH Kamboodiya
    KI Kiribati
    KM Komooros
    KN St. Kitts iyo Nevis
    KP Kuuriyada Waqooyi
    KR Kuuriyada Koonfureed
    KW Kuwayt
    KY Cayman Islands
    KZ Kasaakhistaan
    LA Laos
    LB Lubnaan
    LC St. Lusia
    LI Liyjtensteyn
    LK Sirilaanka
    LR Laybeeriya
    LS Losooto
    LT Lituweeniya
    LU Luksemboorg
    LV Latfiya
    LY Liibya
    MA Morooko
    MC Moonako
    MD Moldofa
    ME Moontenegro
    MF St. Maartin
    MG Madagaskar
    MH Jasiiradda Maarshal
    MK Masedooniya Waqooyi
    ML Maali
    MM Mayanmar
    MN Mongooliya
    MO Makaaw
    MP Jasiiradda Waqooyiga Mariaana
    MQ Maartinik
    MR Muritaaniya
    MS Montserrat
    MT Maalta
    MU Mawrishiyaas
    MV Maaldiifis
    MW Malaawi
    MX Meksiko
    MY Malaysiya
    MZ Musambiik
    NA Namiibiya
    NC Jasiiradda Niyuu Kaledooniya
    NE Nayjer
    NF Jasiiradda Noorfolk
    NG Nayjeeriya
    NI Nikaraaguwa
    NL Nederlaands
    NO Noorweey
    NP Nebaal
    NR Nauru
    NU Niue
    NZ Niyuusiilaand
    OM Cumaan
    PA Baanama
    PE Beeru
    PF Booliyneesiya Faransiiska
    PG Babwa Niyuu Gini
    PH Filibiin
    PK Bakistaan
    PL Booland
    PM St. Pierre iyo Miquelon
    PN Bitkairn
    PR Bueerto Riiko
    PS Dhulka Falastiiniyiinta daanta galbeed iyo marinka qasa
    PT Bortugaal
    PW Balaaw
    PY Baraguaay
    QA Qadar
    RE Riyuuniyon
    RO Rumaaniya
    RS Seerbiya
    RU Ruush
    RW Ruwanda
    SA Sacuudi Carabiya
    SB Jasiiradda Solomon
    SC Sishelis
    SD Suudaan
    SE Iswidhan
    SG Singaboor
    SH Saynt Helena
    SI Islofeeniya
    SJ Jasiiradda Sfaldbaad & Jaan Mayen
    SK Islofaakiya
    SL Siraaliyoon
    SM San Marino
    SN Sinigaal
    SO Soomaaliya
    SR Surineym
    SS Koonfur Suudaan
    ST Sao Tome & Birincibal
    SV El Salfadoor
    SX Siint Maarteen
    SY Suuriya
    SZ Eswaatiini
    TC Turks & Kaikos Island
    TD Jaad
    TF Dhul xadeedka Koonfureed ee Faransiiska
    TG Toogo
    TH Taylaand
    TJ Tajikistan
    TK Tokelaaw
    TL Timoor
    TM Turkmenistan
    TN Tuniisiya
    TO Tonga
    TR Turki
    TT Tirinidaad & Tobago
    TV Tufaalu
    TW Taywaan
    TZ Tansaaniya
    UA Yukrayn
    UG Ugaanda
    UM Jasiiradaha ka baxsan Maraykanka
    US Maraykanka
    UY Uruguwaay
    UZ Usbakistan
    VA Faatikaan
    VC St. Finsent & Girenadiins
    VE Fenisuweela
    VG Biritish Farjin Island
    VI U.S Fargin Island
    VN Fiyetnaam
    VU Fanuaatu
    WF Walis & Futuna
    WS Samoowa
    XK Koosofo
    YE Yaman
    YT Mayotte
    ZA Koonfur Afrika
    ZM Saambiya
    ZW Simbaabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName =
    Cldr.Somali.countryCodeToName