module Cldr.Somali exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Somali.

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
    CD Jamhuuriyadda Dimuqaadiga Kongo
    CF Jamhuuriyadda Afrikada Dhexe
    CG Jamhuuriyadda Kongo
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
    CZ Jamhuuriyadda Jek
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
    PS Falastiin
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
    TL Bariga Timor
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
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andora"

        Cldr.AE ->
            "Midawga Imaaraatka Carabta"

        Cldr.AF ->
            "Afgaanistaan"

        Cldr.AG ->
            "Antigua & Barbuuda"

        Cldr.AI ->
            "Anguula"

        Cldr.AL ->
            "Albaaniya"

        Cldr.AM ->
            "Armeeniya"

        Cldr.AO ->
            "Angoola"

        Cldr.AQ ->
            "Antaarktika"

        Cldr.AR ->
            "Arjentiina"

        Cldr.AS ->
            "Samowa Ameerika"

        Cldr.AT ->
            "Awsteriya"

        Cldr.AU ->
            "Awstaraaliya"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Jasiiradda Aland"

        Cldr.AZ ->
            "Asarbajan"

        Cldr.BA ->
            "Boosniya & Harsegofina"

        Cldr.BB ->
            "Baarbadoos"

        Cldr.BD ->
            "Bangaladhesh"

        Cldr.BE ->
            "Biljam"

        Cldr.BF ->
            "Burkiina Faaso"

        Cldr.BG ->
            "Bulgaariya"

        Cldr.BH ->
            "Baxreyn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Biniin"

        Cldr.BL ->
            "St. Baathelemiy"

        Cldr.BM ->
            "Barmuuda"

        Cldr.BN ->
            "Buruneey"

        Cldr.BO ->
            "Boliifiya"

        Cldr.BQ ->
            "Karibiyaan Nadarlands"

        Cldr.BR ->
            "Baraasiil"

        Cldr.BS ->
            "Bahaamas"

        Cldr.BT ->
            "Buutan"

        Cldr.BV ->
            "Buufet Island"

        Cldr.BW ->
            "Botuswaana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Beliis"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Jasiiradda Kookoos"

        Cldr.CD ->
            "Jamhuuriyadda Dimuqaadiga Kongo"

        Cldr.CF ->
            "Jamhuuriyadda Afrikada Dhexe"

        Cldr.CG ->
            "Jamhuuriyadda Kongo"

        Cldr.CH ->
            "Swiiserlaand"

        Cldr.CI ->
            "Ayfori Koost"

        Cldr.CK ->
            "Jasiiradda Kook"

        Cldr.CL ->
            "Jili"

        Cldr.CM ->
            "Kaameruun"

        Cldr.CN ->
            "Shiinaha"

        Cldr.CO ->
            "Koloombiya"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuuba"

        Cldr.CV ->
            "Jasiiradda Kayb Faarde"

        Cldr.CW ->
            "Kurakaaw"

        Cldr.CX ->
            "Jasiiradda Kirismas"

        Cldr.CY ->
            "Qubrus"

        Cldr.CZ ->
            "Jamhuuriyadda Jek"

        Cldr.DE ->
            "Jarmal"

        Cldr.DJ ->
            "Jabuuti"

        Cldr.DK ->
            "Denmark"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Jamhuuriyaddda Dominika"

        Cldr.DZ ->
            "Aljeeriya"

        Cldr.EC ->
            "Ikuwadoor"

        Cldr.EE ->
            "Estooniya"

        Cldr.EG ->
            "Masar"

        Cldr.EH ->
            "Saxaraha Galbeed"

        Cldr.ER ->
            "Eritreeya"

        Cldr.ES ->
            "Isbeyn"

        Cldr.ET ->
            "Itoobiya"

        Cldr.FI ->
            "Finland"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Jaziiradaha Fooklaan"

        Cldr.FM ->
            "Mikroneesiya"

        Cldr.FO ->
            "Jasiiradda Faroo"

        Cldr.FR ->
            "Faransiis"

        Cldr.GA ->
            "Gaaboon"

        Cldr.GB ->
            "Boqortooyada Midowday"

        Cldr.GD ->
            "Giriinaada"

        Cldr.GE ->
            "Joorjiya"

        Cldr.GF ->
            "Faransiis Gini"

        Cldr.GG ->
            "Guurnsey"

        Cldr.GH ->
            "Gaana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Greenland"

        Cldr.GM ->
            "Gambiya"

        Cldr.GN ->
            "Gini"

        Cldr.GP ->
            "Guadeluub"

        Cldr.GQ ->
            "Ekuwatooriyal Gini"

        Cldr.GR ->
            "Giriig"

        Cldr.GS ->
            "Jasiiradda Joorjiyada Koonfureed & Sandwij"

        Cldr.GT_ ->
            "Guwaatamaala"

        Cldr.GU ->
            "Guaam"

        Cldr.GW ->
            "Gini-Bisaaw"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Jasiiradda Haad & MakDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Korweeshiya"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hangari"

        Cldr.ID ->
            "Indoneesiya"

        Cldr.IE ->
            "Ayrlaand"

        Cldr.IL ->
            "Israaʼiil"

        Cldr.IM ->
            "Jasiiradda Isle of Man"

        Cldr.IN ->
            "Hindiya"

        Cldr.IO ->
            "Dhul xadeedka Badweynta Hindiya ee Biritishka"

        Cldr.IQ ->
            "Ciraaq"

        Cldr.IR ->
            "Iiraan"

        Cldr.IS ->
            "Ayslaand"

        Cldr.IT ->
            "Talyaani"

        Cldr.JE ->
            "Jaarsey"

        Cldr.JM ->
            "Jamaaika"

        Cldr.JO ->
            "Urdun"

        Cldr.JP ->
            "Jabaan"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirgistaan"

        Cldr.KH ->
            "Kamboodiya"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komooros"

        Cldr.KN ->
            "St. Kitts iyo Nevis"

        Cldr.KP ->
            "Kuuriyada Waqooyi"

        Cldr.KR ->
            "Kuuriyada Koonfureed"

        Cldr.KW ->
            "Kuwayt"

        Cldr.KY ->
            "Cayman Islands"

        Cldr.KZ ->
            "Kasaakhistaan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Lubnaan"

        Cldr.LC ->
            "St. Lusia"

        Cldr.LI ->
            "Liyjtensteyn"

        Cldr.LK ->
            "Sirilaanka"

        Cldr.LR ->
            "Laybeeriya"

        Cldr.LS ->
            "Losooto"

        Cldr.LT_ ->
            "Lituweeniya"

        Cldr.LU ->
            "Luksemboorg"

        Cldr.LV ->
            "Latfiya"

        Cldr.LY ->
            "Liibya"

        Cldr.MA ->
            "Morooko"

        Cldr.MC ->
            "Moonako"

        Cldr.MD ->
            "Moldofa"

        Cldr.ME ->
            "Moontenegro"

        Cldr.MF ->
            "St. Maartin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Jasiiradda Maarshal"

        Cldr.MK ->
            "Masedooniya Waqooyi"

        Cldr.ML ->
            "Maali"

        Cldr.MM ->
            "Mayanmar"

        Cldr.MN ->
            "Mongooliya"

        Cldr.MO ->
            "Makaaw"

        Cldr.MP ->
            "Jasiiradda Waqooyiga Mariaana"

        Cldr.MQ ->
            "Maartinik"

        Cldr.MR ->
            "Muritaaniya"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Maalta"

        Cldr.MU ->
            "Mawrishiyaas"

        Cldr.MV ->
            "Maaldiifis"

        Cldr.MW ->
            "Malaawi"

        Cldr.MX ->
            "Meksiko"

        Cldr.MY ->
            "Malaysiya"

        Cldr.MZ ->
            "Musambiik"

        Cldr.NA ->
            "Namiibiya"

        Cldr.NC ->
            "Jasiiradda Niyuu Kaledooniya"

        Cldr.NE ->
            "Nayjer"

        Cldr.NF ->
            "Jasiiradda Noorfolk"

        Cldr.NG ->
            "Nayjeeriya"

        Cldr.NI ->
            "Nikaraaguwa"

        Cldr.NL ->
            "Nederlaands"

        Cldr.NO ->
            "Noorweey"

        Cldr.NP ->
            "Nebaal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Niyuusiilaand"

        Cldr.OM ->
            "Cumaan"

        Cldr.PA ->
            "Baanama"

        Cldr.PE ->
            "Beeru"

        Cldr.PF ->
            "Booliyneesiya Faransiiska"

        Cldr.PG ->
            "Babwa Niyuu Gini"

        Cldr.PH ->
            "Filibiin"

        Cldr.PK ->
            "Bakistaan"

        Cldr.PL ->
            "Booland"

        Cldr.PM ->
            "St. Pierre iyo Miquelon"

        Cldr.PN ->
            "Bitkairn"

        Cldr.PR ->
            "Bueerto Riiko"

        Cldr.PS ->
            "Falastiin"

        Cldr.PT ->
            "Bortugaal"

        Cldr.PW ->
            "Balaaw"

        Cldr.PY ->
            "Baraguaay"

        Cldr.QA ->
            "Qadar"

        Cldr.RE ->
            "Riyuuniyon"

        Cldr.RO ->
            "Rumaaniya"

        Cldr.RS ->
            "Seerbiya"

        Cldr.RU ->
            "Ruush"

        Cldr.RW ->
            "Ruwanda"

        Cldr.SA ->
            "Sacuudi Carabiya"

        Cldr.SB ->
            "Jasiiradda Solomon"

        Cldr.SC ->
            "Sishelis"

        Cldr.SD ->
            "Suudaan"

        Cldr.SE ->
            "Iswidhan"

        Cldr.SG ->
            "Singaboor"

        Cldr.SH ->
            "Saynt Helena"

        Cldr.SI ->
            "Islofeeniya"

        Cldr.SJ ->
            "Jasiiradda Sfaldbaad & Jaan Mayen"

        Cldr.SK ->
            "Islofaakiya"

        Cldr.SL ->
            "Siraaliyoon"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Sinigaal"

        Cldr.SO ->
            "Soomaaliya"

        Cldr.SR ->
            "Surineym"

        Cldr.SS ->
            "Koonfur Suudaan"

        Cldr.ST ->
            "Sao Tome & Birincibal"

        Cldr.SV ->
            "El Salfadoor"

        Cldr.SX ->
            "Siint Maarteen"

        Cldr.SY ->
            "Suuriya"

        Cldr.SZ ->
            "Eswaatiini"

        Cldr.TC ->
            "Turks & Kaikos Island"

        Cldr.TD ->
            "Jaad"

        Cldr.TF ->
            "Dhul xadeedka Koonfureed ee Faransiiska"

        Cldr.TG ->
            "Toogo"

        Cldr.TH ->
            "Taylaand"

        Cldr.TJ ->
            "Tajikistan"

        Cldr.TK ->
            "Tokelaaw"

        Cldr.TL ->
            "Bariga Timor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tuniisiya"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turki"

        Cldr.TT ->
            "Tirinidaad & Tobago"

        Cldr.TV ->
            "Tufaalu"

        Cldr.TW ->
            "Taywaan"

        Cldr.TZ ->
            "Tansaaniya"

        Cldr.UA ->
            "Yukrayn"

        Cldr.UG ->
            "Ugaanda"

        Cldr.UM ->
            "Jasiiradaha ka baxsan Maraykanka"

        Cldr.US ->
            "Maraykanka"

        Cldr.UY ->
            "Uruguwaay"

        Cldr.UZ ->
            "Usbakistan"

        Cldr.VA ->
            "Faatikaan"

        Cldr.VC ->
            "St. Finsent & Girenadiins"

        Cldr.VE ->
            "Fenisuweela"

        Cldr.VG ->
            "Biritish Farjin Island"

        Cldr.VI ->
            "U.S Fargin Island"

        Cldr.VN ->
            "Fiyetnaam"

        Cldr.VU ->
            "Fanuaatu"

        Cldr.WF ->
            "Walis & Futuna"

        Cldr.WS ->
            "Samoowa"

        Cldr.XK ->
            "Koosofo"

        Cldr.YE ->
            "Yaman"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Koonfur Afrika"

        Cldr.ZM ->
            "Saambiya"

        Cldr.ZW ->
            "Simbaabwe"