module Cldr.Pidgin.Nigerian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Nigerian Pidgin.

    AD Andọ́ra
    AE Yunaítẹ́d Áráb Ẹ́mírets
    AF Afgánístan
    AG Antígwua & Barbúda
    AI Angwíla
    AL Albénia
    AM Armẹ́niá
    AO Angóla
    AQ Antáktíka
    AR Ajẹntína
    AS Amẹ́ríká Samoa
    AT Ọ́stria
    AU Ọstrélia
    AW Arúba
    AX Ọ́lánd Aílands
    AZ Azẹrbaijan
    BA Bọ́zniá & Hẹzẹgovína
    BB Barbédọs
    BD Bangladẹsh
    BE Bẹ́ljọm
    BF Burkína Fáso
    BG Bọlgéria
    BH Barein
    BI Burúndi
    BJ Binin
    BL Sént Batẹlẹ́mi
    BM Bẹmiúda
    BN Brunẹi
    BO Bolívia
    BQ Karíbián Nẹ́dalands
    BR Brázil
    BS Bahámas
    BT Butan
    BV Buvẹ́ Aíland
    BW Botswána
    BY Bẹ́larus
    BZ Bẹliz
    CA Kánáda
    CC Kókós Aílands
    CD Kóngo (DRC)
    CF Sẹ́ntrál Áfríkán Ripọ́blik
    CG Kóngó (Ripọ́blik)
    CH Swítsaland
    CI Aívri Kost
    CK Kúk Aílands
    CL Chílẹ
    CM Kamẹrun
    CN Chaína
    CO Kolómbia
    CR Kósta Ríka
    CU Kiúbá
    CV Kép Vẹ́d
    CW Kiurásao
    CX Krísmás Aíland
    CY Saíprọs
    CZ Chẹ́k Ripọ́blik
    DE Jámáni
    DJ Jibúti
    DK Dẹ́nmak
    DM Dọmíníka
    DO Dọmíníka Ripọ́blik
    DZ Aljíria
    EC Ẹ́kwuádọ
    EE Ẹstónia
    EG Íjipt
    EH Wẹ́stán Sahára
    ER Ẹritrẹ́a
    ES Spen
    ET Ẹtiópia
    FI Fínland
    FJ Fíji
    FK Fọ́klánd Aílands
    FM Maikroníshia
    FO Fáro Aílands
    FR Frans
    GA Gabọn
    GB Yunáítẹ́d Kíndọm
    GD Grẹnéda
    GE Jọ́jia
    GF Frẹ́nch Giána
    GG Guẹnzi
    GH Gána
    GI Jibrọ́lta
    GL Grínland
    GM Gámbia
    GN Gíni
    GP Guadalúpẹ
    GQ Ikwétóriál Gíni
    GR Gris
    GS Saút Jọ́jia an Saút Sándwích Aílands
    GT Guátẹmála
    GU Guam
    GW Gíní-Bisáu
    GY Gayána
    HK Họng Kọng
    HM Hiád & MakDónáld Aílands
    HN Họndúras
    HR Kroéshia
    HT Haíti
    HU Họ́ngári
    ID Indoníshia
    IE Ayaland
    IL Ízrẹl
    IM Aíl ọf Man
    IN Índia
    IO Brítísh Índián Óshen Tẹ́rẹ́tri
    IQ Irak
    IR Iran
    IS Aísland
    IT Ítáli
    JE Jẹ́si
    JM Jamaíka
    JO Jọ́dan
    JP Japan
    KE Kẹ́nya
    KG Kẹjístan
    KH Kambódia
    KI Kiribáti
    KM Kọ́mọ́ros
    KN Sent Kits & Nẹ́vis
    KP Nọ́t Koria
    KR Saút Koria
    KW Kuwét
    KY Kéman Aílands
    KZ Kazakstan
    LA Laos
    LB Lẹ́bánọn
    LC Sent Lúshia
    LI Líktẹ́nstain
    LK Sri Lánka
    LR Laibẹ́ria
    LS Lẹsóto
    LT Lituénia
    LU Lọ́ksẹ́mbọg
    LV Látvia
    LY Líbia
    MA Morọko
    MC Mọ́náko
    MD Mọldóva
    ME Mọntinígro
    MF Sent Mátin
    MG Madagáska
    MH Máshál Aílands
    MK Nọ́t Masidónia
    ML Máli
    MM Miánma (Bọ́ma)
    MN Mọngólia
    MO Makáo
    MP Nọ́tán Mariána Aílands
    MQ Matínik
    MR Mọriténia
    MS Mọntsẹrat
    MT Mọ́lta
    MU Mọríshọs
    MV Mọ́ldivs
    MW Maláwi
    MX Mẹ́ksíko
    MY Maléshia
    MZ Mozámbik
    NA Namíbia
    NC Niú Kalẹdónia
    NE Nizhẹr
    NF Nọ́fọlk Aíland
    NG Naijíria
    NI Nikarágwua
    NL Nẹ́dalands
    NO Nọ́we
    NP Nẹ́pal
    NR Náuru
    NU Niúẹ
    NZ Niú Zíland
    OM Oman
    PA Pánáma
    PE Pẹ́ru
    PF Frẹ́nch Poliníshia
    PG Pápuá Niú Gíni
    PH Fílípins
    PK Pakístan
    PL Póland
    PM Sent Piẹr & Míkẹlọn
    PN Pítkén Aílands
    PR Puẹ́rto Ríkọ
    PS Pálẹ́stain
    PT Pọ́túgal
    PW Palau
    PY Párágwue
    QA Kata
    RE Réyúniọn
    RO Ruménia
    RS Sẹ́bia
    RU Rọ́shia
    RW Ruwánda
    SA Saúdí Arébia
    SB Sólómọ́n Aílands
    SC Sẹ́chẹls
    SD Sudan
    SE Swídẹn
    SG Singapọ
    SH Sent Hẹlẹ́na
    SI Slovẹ́nia
    SJ Sválbad & Jén Meyẹn
    SK Slovékia
    SL Siẹ́ra Líon
    SM San Maríno
    SN Sẹ́nẹ́gal
    SO Sọmália
    SR Súrínam
    SS Saút Sudan
    ST Sao Tómé & Prínsípẹ
    SV El Sálvádọ
    SX Sint Mátin
    SY Síria
    SZ Ẹswatíni
    TC Tọks an Kaíkọ́s Aílands
    TD Chad
    TF Frẹ́nch Saútán Tẹ́rẹ́tris
    TG Tógo
    TH Taíland
    TJ Tajíkstan
    TK Tókẹ́lau
    TL Íst Tímọ
    TM Tọkmẹ́nístan
    TN Tuníshia
    TO Tónga
    TR Tọ́ki
    TT Trínídad & Tobágo
    TV Tuválu
    TW Taiwan
    TZ Tanzánia
    UA Yukrein
    UG Yugánda
    UM U.S. Faá Faá Aílands
    US Yunaítẹ́d Stets
    UY Yúrugwue
    UZ Uzbẹ́kistan
    VA Vátíkán Síti
    VC Sent Vínsẹnt & Grẹ́nádians
    VE Vẹnẹzuẹ́la
    VG Brítísh Vájín Aílands
    VI U.S. Vájín Aílands
    VN Viẹ́tnam
    VU Vanuátu
    WF Wọ́lis & Fiutúna
    WS Samóa
    XK Kósóvo
    YE Yẹ́mẹn
    YT Meyọt
    ZA Saút Áfríka
    ZM Zámbia
    ZW Zimbábwẹ
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andọ́ra"

        Cldr.AE ->
            "Yunaítẹ́d Áráb Ẹ́mírets"

        Cldr.AF ->
            "Afgánístan"

        Cldr.AG ->
            "Antígwua & Barbúda"

        Cldr.AI ->
            "Angwíla"

        Cldr.AL ->
            "Albénia"

        Cldr.AM ->
            "Armẹ́niá"

        Cldr.AO ->
            "Angóla"

        Cldr.AQ ->
            "Antáktíka"

        Cldr.AR ->
            "Ajẹntína"

        Cldr.AS ->
            "Amẹ́ríká Samoa"

        Cldr.AT ->
            "Ọ́stria"

        Cldr.AU ->
            "Ọstrélia"

        Cldr.AW ->
            "Arúba"

        Cldr.AX ->
            "Ọ́lánd Aílands"

        Cldr.AZ ->
            "Azẹrbaijan"

        Cldr.BA ->
            "Bọ́zniá & Hẹzẹgovína"

        Cldr.BB ->
            "Barbédọs"

        Cldr.BD ->
            "Bangladẹsh"

        Cldr.BE ->
            "Bẹ́ljọm"

        Cldr.BF ->
            "Burkína Fáso"

        Cldr.BG ->
            "Bọlgéria"

        Cldr.BH ->
            "Barein"

        Cldr.BI ->
            "Burúndi"

        Cldr.BJ ->
            "Binin"

        Cldr.BL ->
            "Sént Batẹlẹ́mi"

        Cldr.BM ->
            "Bẹmiúda"

        Cldr.BN ->
            "Brunẹi"

        Cldr.BO ->
            "Bolívia"

        Cldr.BQ ->
            "Karíbián Nẹ́dalands"

        Cldr.BR ->
            "Brázil"

        Cldr.BS ->
            "Bahámas"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Buvẹ́ Aíland"

        Cldr.BW ->
            "Botswána"

        Cldr.BY ->
            "Bẹ́larus"

        Cldr.BZ ->
            "Bẹliz"

        Cldr.CA ->
            "Kánáda"

        Cldr.CC ->
            "Kókós Aílands"

        Cldr.CD ->
            "Kóngo (DRC)"

        Cldr.CF ->
            "Sẹ́ntrál Áfríkán Ripọ́blik"

        Cldr.CG ->
            "Kóngó (Ripọ́blik)"

        Cldr.CH ->
            "Swítsaland"

        Cldr.CI ->
            "Aívri Kost"

        Cldr.CK ->
            "Kúk Aílands"

        Cldr.CL ->
            "Chílẹ"

        Cldr.CM ->
            "Kamẹrun"

        Cldr.CN ->
            "Chaína"

        Cldr.CO ->
            "Kolómbia"

        Cldr.CR ->
            "Kósta Ríka"

        Cldr.CU ->
            "Kiúbá"

        Cldr.CV ->
            "Kép Vẹ́d"

        Cldr.CW ->
            "Kiurásao"

        Cldr.CX ->
            "Krísmás Aíland"

        Cldr.CY ->
            "Saíprọs"

        Cldr.CZ ->
            "Chẹ́k Ripọ́blik"

        Cldr.DE ->
            "Jámáni"

        Cldr.DJ ->
            "Jibúti"

        Cldr.DK ->
            "Dẹ́nmak"

        Cldr.DM ->
            "Dọmíníka"

        Cldr.DO ->
            "Dọmíníka Ripọ́blik"

        Cldr.DZ ->
            "Aljíria"

        Cldr.EC ->
            "Ẹ́kwuádọ"

        Cldr.EE ->
            "Ẹstónia"

        Cldr.EG ->
            "Íjipt"

        Cldr.EH ->
            "Wẹ́stán Sahára"

        Cldr.ER ->
            "Ẹritrẹ́a"

        Cldr.ES ->
            "Spen"

        Cldr.ET ->
            "Ẹtiópia"

        Cldr.FI ->
            "Fínland"

        Cldr.FJ ->
            "Fíji"

        Cldr.FK ->
            "Fọ́klánd Aílands"

        Cldr.FM ->
            "Maikroníshia"

        Cldr.FO ->
            "Fáro Aílands"

        Cldr.FR ->
            "Frans"

        Cldr.GA ->
            "Gabọn"

        Cldr.GB ->
            "Yunáítẹ́d Kíndọm"

        Cldr.GD ->
            "Grẹnéda"

        Cldr.GE ->
            "Jọ́jia"

        Cldr.GF ->
            "Frẹ́nch Giána"

        Cldr.GG ->
            "Guẹnzi"

        Cldr.GH ->
            "Gána"

        Cldr.GI ->
            "Jibrọ́lta"

        Cldr.GL ->
            "Grínland"

        Cldr.GM ->
            "Gámbia"

        Cldr.GN ->
            "Gíni"

        Cldr.GP ->
            "Guadalúpẹ"

        Cldr.GQ ->
            "Ikwétóriál Gíni"

        Cldr.GR ->
            "Gris"

        Cldr.GS ->
            "Saút Jọ́jia an Saút Sándwích Aílands"

        Cldr.GT_ ->
            "Guátẹmála"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gíní-Bisáu"

        Cldr.GY ->
            "Gayána"

        Cldr.HK ->
            "Họng Kọng"

        Cldr.HM ->
            "Hiád & MakDónáld Aílands"

        Cldr.HN ->
            "Họndúras"

        Cldr.HR ->
            "Kroéshia"

        Cldr.HT ->
            "Haíti"

        Cldr.HU ->
            "Họ́ngári"

        Cldr.ID ->
            "Indoníshia"

        Cldr.IE ->
            "Ayaland"

        Cldr.IL ->
            "Ízrẹl"

        Cldr.IM ->
            "Aíl ọf Man"

        Cldr.IN ->
            "Índia"

        Cldr.IO ->
            "Brítísh Índián Óshen Tẹ́rẹ́tri"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Aísland"

        Cldr.IT ->
            "Ítáli"

        Cldr.JE ->
            "Jẹ́si"

        Cldr.JM ->
            "Jamaíka"

        Cldr.JO ->
            "Jọ́dan"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kẹ́nya"

        Cldr.KG ->
            "Kẹjístan"

        Cldr.KH ->
            "Kambódia"

        Cldr.KI ->
            "Kiribáti"

        Cldr.KM ->
            "Kọ́mọ́ros"

        Cldr.KN ->
            "Sent Kits & Nẹ́vis"

        Cldr.KP ->
            "Nọ́t Koria"

        Cldr.KR ->
            "Saút Koria"

        Cldr.KW ->
            "Kuwét"

        Cldr.KY ->
            "Kéman Aílands"

        Cldr.KZ ->
            "Kazakstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Lẹ́bánọn"

        Cldr.LC ->
            "Sent Lúshia"

        Cldr.LI ->
            "Líktẹ́nstain"

        Cldr.LK ->
            "Sri Lánka"

        Cldr.LR ->
            "Laibẹ́ria"

        Cldr.LS ->
            "Lẹsóto"

        Cldr.LT_ ->
            "Lituénia"

        Cldr.LU ->
            "Lọ́ksẹ́mbọg"

        Cldr.LV ->
            "Látvia"

        Cldr.LY ->
            "Líbia"

        Cldr.MA ->
            "Morọko"

        Cldr.MC ->
            "Mọ́náko"

        Cldr.MD ->
            "Mọldóva"

        Cldr.ME ->
            "Mọntinígro"

        Cldr.MF ->
            "Sent Mátin"

        Cldr.MG ->
            "Madagáska"

        Cldr.MH ->
            "Máshál Aílands"

        Cldr.MK ->
            "Nọ́t Masidónia"

        Cldr.ML ->
            "Máli"

        Cldr.MM ->
            "Miánma (Bọ́ma)"

        Cldr.MN ->
            "Mọngólia"

        Cldr.MO ->
            "Makáo"

        Cldr.MP ->
            "Nọ́tán Mariána Aílands"

        Cldr.MQ ->
            "Matínik"

        Cldr.MR ->
            "Mọriténia"

        Cldr.MS ->
            "Mọntsẹrat"

        Cldr.MT ->
            "Mọ́lta"

        Cldr.MU ->
            "Mọríshọs"

        Cldr.MV ->
            "Mọ́ldivs"

        Cldr.MW ->
            "Maláwi"

        Cldr.MX ->
            "Mẹ́ksíko"

        Cldr.MY ->
            "Maléshia"

        Cldr.MZ ->
            "Mozámbik"

        Cldr.NA ->
            "Namíbia"

        Cldr.NC ->
            "Niú Kalẹdónia"

        Cldr.NE ->
            "Nizhẹr"

        Cldr.NF ->
            "Nọ́fọlk Aíland"

        Cldr.NG ->
            "Naijíria"

        Cldr.NI ->
            "Nikarágwua"

        Cldr.NL ->
            "Nẹ́dalands"

        Cldr.NO ->
            "Nọ́we"

        Cldr.NP ->
            "Nẹ́pal"

        Cldr.NR ->
            "Náuru"

        Cldr.NU ->
            "Niúẹ"

        Cldr.NZ ->
            "Niú Zíland"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Pánáma"

        Cldr.PE ->
            "Pẹ́ru"

        Cldr.PF ->
            "Frẹ́nch Poliníshia"

        Cldr.PG ->
            "Pápuá Niú Gíni"

        Cldr.PH ->
            "Fílípins"

        Cldr.PK ->
            "Pakístan"

        Cldr.PL ->
            "Póland"

        Cldr.PM ->
            "Sent Piẹr & Míkẹlọn"

        Cldr.PN ->
            "Pítkén Aílands"

        Cldr.PR ->
            "Puẹ́rto Ríkọ"

        Cldr.PS ->
            "Pálẹ́stain"

        Cldr.PT ->
            "Pọ́túgal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Párágwue"

        Cldr.QA ->
            "Kata"

        Cldr.RE ->
            "Réyúniọn"

        Cldr.RO ->
            "Ruménia"

        Cldr.RS ->
            "Sẹ́bia"

        Cldr.RU ->
            "Rọ́shia"

        Cldr.RW ->
            "Ruwánda"

        Cldr.SA ->
            "Saúdí Arébia"

        Cldr.SB ->
            "Sólómọ́n Aílands"

        Cldr.SC ->
            "Sẹ́chẹls"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Swídẹn"

        Cldr.SG ->
            "Singapọ"

        Cldr.SH ->
            "Sent Hẹlẹ́na"

        Cldr.SI ->
            "Slovẹ́nia"

        Cldr.SJ ->
            "Sválbad & Jén Meyẹn"

        Cldr.SK ->
            "Slovékia"

        Cldr.SL ->
            "Siẹ́ra Líon"

        Cldr.SM ->
            "San Maríno"

        Cldr.SN ->
            "Sẹ́nẹ́gal"

        Cldr.SO ->
            "Sọmália"

        Cldr.SR ->
            "Súrínam"

        Cldr.SS ->
            "Saút Sudan"

        Cldr.ST ->
            "Sao Tómé & Prínsípẹ"

        Cldr.SV ->
            "El Sálvádọ"

        Cldr.SX ->
            "Sint Mátin"

        Cldr.SY ->
            "Síria"

        Cldr.SZ ->
            "Ẹswatíni"

        Cldr.TC ->
            "Tọks an Kaíkọ́s Aílands"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Frẹ́nch Saútán Tẹ́rẹ́tris"

        Cldr.TG ->
            "Tógo"

        Cldr.TH ->
            "Taíland"

        Cldr.TJ ->
            "Tajíkstan"

        Cldr.TK ->
            "Tókẹ́lau"

        Cldr.TL ->
            "Íst Tímọ"

        Cldr.TM ->
            "Tọkmẹ́nístan"

        Cldr.TN ->
            "Tuníshia"

        Cldr.TO ->
            "Tónga"

        Cldr.TR ->
            "Tọ́ki"

        Cldr.TT ->
            "Trínídad & Tobágo"

        Cldr.TV ->
            "Tuválu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzánia"

        Cldr.UA ->
            "Yukrein"

        Cldr.UG ->
            "Yugánda"

        Cldr.UM ->
            "U.S. Faá Faá Aílands"

        Cldr.US ->
            "Yunaítẹ́d Stets"

        Cldr.UY ->
            "Yúrugwue"

        Cldr.UZ ->
            "Uzbẹ́kistan"

        Cldr.VA ->
            "Vátíkán Síti"

        Cldr.VC ->
            "Sent Vínsẹnt & Grẹ́nádians"

        Cldr.VE ->
            "Vẹnẹzuẹ́la"

        Cldr.VG ->
            "Brítísh Vájín Aílands"

        Cldr.VI ->
            "U.S. Vájín Aílands"

        Cldr.VN ->
            "Viẹ́tnam"

        Cldr.VU ->
            "Vanuátu"

        Cldr.WF ->
            "Wọ́lis & Fiutúna"

        Cldr.WS ->
            "Samóa"

        Cldr.XK ->
            "Kósóvo"

        Cldr.YE ->
            "Yẹ́mẹn"

        Cldr.YT ->
            "Meyọt"

        Cldr.ZA ->
            "Saút Áfríka"

        Cldr.ZM ->
            "Zámbia"

        Cldr.ZW ->
            "Zimbábwẹ"