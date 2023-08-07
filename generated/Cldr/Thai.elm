module Cldr.Thai exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Thai.

    AD อันดอร์รา
    AE สหรัฐอาหรับเอมิเรตส์
    AF อัฟกานิสถาน
    AG แอนติกาและบาร์บูดา
    AI แองกวิลลา
    AL แอลเบเนีย
    AM อาร์เมเนีย
    AO แองโกลา
    AQ แอนตาร์กติกา
    AR อาร์เจนตินา
    AS อเมริกันซามัว
    AT ออสเตรีย
    AU ออสเตรเลีย
    AW อารูบา
    AX หมู่เกาะโอลันด์
    AZ อาเซอร์ไบจาน
    BA บอสเนียและเฮอร์เซโกวีนา
    BB บาร์เบโดส
    BD บังกลาเทศ
    BE เบลเยียม
    BF บูร์กินาฟาโซ
    BG บัลแกเรีย
    BH บาห์เรน
    BI บุรุนดี
    BJ เบนิน
    BL เซนต์บาร์เธเลมี
    BM เบอร์มิวดา
    BN บรูไน
    BO โบลิเวีย
    BQ เนเธอร์แลนด์แคริบเบียน
    BR บราซิล
    BS บาฮามาส
    BT ภูฏาน
    BV เกาะบูเว
    BW บอตสวานา
    BY เบลารุส
    BZ เบลีซ
    CA แคนาดา
    CC หมู่เกาะโคโคส (คีลิง)
    CD คองโก (สาธารณรัฐประชาธิปไตย)
    CF สาธารณรัฐแอฟริกากลาง
    CG คองโก (สาธารณรัฐ)
    CH สวิตเซอร์แลนด์
    CI โกตดิวัวร์
    CK หมู่เกาะคุก
    CL ชิลี
    CM แคเมอรูน
    CN จีน
    CO โคลอมเบีย
    CR คอสตาริกา
    CU คิวบา
    CV เคปเวิร์ด
    CW คูราเซา
    CX เกาะคริสต์มาส
    CY ไซปรัส
    CZ สาธารณรัฐเช็ก
    DE เยอรมนี
    DJ จิบูตี
    DK เดนมาร์ก
    DM โดมินิกา
    DO สาธารณรัฐโดมินิกัน
    DZ แอลจีเรีย
    EC เอกวาดอร์
    EE เอสโตเนีย
    EG อียิปต์
    EH ซาฮาราตะวันตก
    ER เอริเทรีย
    ES สเปน
    ET เอธิโอเปีย
    FI ฟินแลนด์
    FJ ฟิจิ
    FK หมู่เกาะฟอล์กแลนด์
    FM ไมโครนีเซีย
    FO หมู่เกาะแฟโร
    FR ฝรั่งเศส
    GA กาบอง
    GB สหราชอาณาจักร
    GD เกรเนดา
    GE จอร์เจีย
    GF เฟรนช์เกียนา
    GG เกิร์นซีย์
    GH กานา
    GI ยิบรอลตาร์
    GL กรีนแลนด์
    GM แกมเบีย
    GN กินี
    GP กวาเดอลูป
    GQ อิเควทอเรียลกินี
    GR กรีซ
    GS เกาะเซาท์จอร์เจียและหมู่เกาะเซาท์แซนด์วิช
    GT กัวเตมาลา
    GU กวม
    GW กินี-บิสเซา
    GY กายอานา
    HK ฮ่องกง
    HM เกาะเฮิร์ดและหมู่เกาะแมกดอนัลด์
    HN ฮอนดูรัส
    HR โครเอเชีย
    HT เฮติ
    HU ฮังการี
    ID อินโดนีเซีย
    IE ไอร์แลนด์
    IL อิสราเอล
    IM เกาะแมน
    IN อินเดีย
    IO บริติชอินเดียนโอเชียนเทร์ริทอรี
    IQ อิรัก
    IR อิหร่าน
    IS ไอซ์แลนด์
    IT อิตาลี
    JE เจอร์ซีย์
    JM จาเมกา
    JO จอร์แดน
    JP ญี่ปุ่น
    KE เคนยา
    KG คีร์กีซสถาน
    KH กัมพูชา
    KI คิริบาส
    KM คอโมโรส
    KN เซนต์คิตส์และเนวิส
    KP เกาหลีเหนือ
    KR เกาหลีใต้
    KW คูเวต
    KY หมู่เกาะเคย์แมน
    KZ คาซัคสถาน
    LA ลาว
    LB เลบานอน
    LC เซนต์ลูเซีย
    LI ลิกเตนสไตน์
    LK ศรีลังกา
    LR ไลบีเรีย
    LS เลโซโท
    LT ลิทัวเนีย
    LU ลักเซมเบิร์ก
    LV ลัตเวีย
    LY ลิเบีย
    MA โมร็อกโก
    MC โมนาโก
    MD มอลโดวา
    ME มอนเตเนโกร
    MF เซนต์มาร์ติน
    MG มาดากัสการ์
    MH หมู่เกาะมาร์แชลล์
    MK มาซิโดเนียเหนือ
    ML มาลี
    MM เมียนมา (พม่า)
    MN มองโกเลีย
    MO มาเก๊า
    MP หมู่เกาะนอร์เทิร์นมาเรียนา
    MQ มาร์ตินีก
    MR มอริเตเนีย
    MS มอนต์เซอร์รัต
    MT มอลตา
    MU มอริเชียส
    MV มัลดีฟส์
    MW มาลาวี
    MX เม็กซิโก
    MY มาเลเซีย
    MZ โมซัมบิก
    NA นามิเบีย
    NC นิวแคลิโดเนีย
    NE ไนเจอร์
    NF เกาะนอร์ฟอล์ก
    NG ไนจีเรีย
    NI นิการากัว
    NL เนเธอร์แลนด์
    NO นอร์เวย์
    NP เนปาล
    NR นาอูรู
    NU นีอูเอ
    NZ นิวซีแลนด์
    OM โอมาน
    PA ปานามา
    PE เปรู
    PF เฟรนช์โปลินีเซีย
    PG ปาปัวนิวกินี
    PH ฟิลิปปินส์
    PK ปากีสถาน
    PL โปแลนด์
    PM แซงปีแยร์และมีเกอลง
    PN หมู่เกาะพิตแคร์น
    PR เปอร์โตริโก
    PS ปาเลสไตน์
    PT โปรตุเกส
    PW ปาเลา
    PY ปารากวัย
    QA กาตาร์
    RE เรอูนียง
    RO โรมาเนีย
    RS เซอร์เบีย
    RU รัสเซีย
    RW รวันดา
    SA ซาอุดีอาระเบีย
    SB หมู่เกาะโซโลมอน
    SC เซเชลส์
    SD ซูดาน
    SE สวีเดน
    SG สิงคโปร์
    SH เซนต์เฮเลนา
    SI สโลวีเนีย
    SJ สฟาลบาร์และยานไมเอน
    SK สโลวะเกีย
    SL เซียร์ราลีโอน
    SM ซานมาริโน
    SN เซเนกัล
    SO โซมาเลีย
    SR ซูรินาเม
    SS ซูดานใต้
    ST เซาตูเมและปรินซิปี
    SV เอลซัลวาดอร์
    SX ซินต์มาร์เทน
    SY ซีเรีย
    SZ เอสวาตีนี
    TC หมู่เกาะเติกส์และหมู่เกาะเคคอส
    TD ชาด
    TF เฟรนช์เซาเทิร์นเทร์ริทอรีส์
    TG โตโก
    TH ไทย
    TJ ทาจิกิสถาน
    TK โตเกเลา
    TL ติมอร์ตะวันออก
    TM เติร์กเมนิสถาน
    TN ตูนิเซีย
    TO ตองกา
    TR ตุรกี
    TT ตรินิแดดและโตเบโก
    TV ตูวาลู
    TW ไต้หวัน
    TZ แทนซาเนีย
    UA ยูเครน
    UG ยูกันดา
    UM หมู่เกาะรอบนอกของสหรัฐอเมริกา
    US สหรัฐอเมริกา
    UY อุรุกวัย
    UZ อุซเบกิสถาน
    VA นครวาติกัน
    VC เซนต์วินเซนต์และเกรนาดีนส์
    VE เวเนซุเอลา
    VG หมู่เกาะบริติชเวอร์จิน
    VI หมู่เกาะเวอร์จินของสหรัฐอเมริกา
    VN เวียดนาม
    VU วานูอาตู
    WF วาลลิสและฟุตูนา
    WS ซามัว
    XK โคโซโว
    YE เยเมน
    YT มายอต
    ZA แอฟริกาใต้
    ZM แซมเบีย
    ZW ซิมบับเว
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "อันดอร์รา"

        Cldr.AE ->
            "สหรัฐอาหรับเอมิเรตส์"

        Cldr.AF ->
            "อัฟกานิสถาน"

        Cldr.AG ->
            "แอนติกาและบาร์บูดา"

        Cldr.AI ->
            "แองกวิลลา"

        Cldr.AL ->
            "แอลเบเนีย"

        Cldr.AM ->
            "อาร์เมเนีย"

        Cldr.AO ->
            "แองโกลา"

        Cldr.AQ ->
            "แอนตาร์กติกา"

        Cldr.AR ->
            "อาร์เจนตินา"

        Cldr.AS ->
            "อเมริกันซามัว"

        Cldr.AT ->
            "ออสเตรีย"

        Cldr.AU ->
            "ออสเตรเลีย"

        Cldr.AW ->
            "อารูบา"

        Cldr.AX ->
            "หมู่เกาะโอลันด์"

        Cldr.AZ ->
            "อาเซอร์ไบจาน"

        Cldr.BA ->
            "บอสเนียและเฮอร์เซโกวีนา"

        Cldr.BB ->
            "บาร์เบโดส"

        Cldr.BD ->
            "บังกลาเทศ"

        Cldr.BE ->
            "เบลเยียม"

        Cldr.BF ->
            "บูร์กินาฟาโซ"

        Cldr.BG ->
            "บัลแกเรีย"

        Cldr.BH ->
            "บาห์เรน"

        Cldr.BI ->
            "บุรุนดี"

        Cldr.BJ ->
            "เบนิน"

        Cldr.BL ->
            "เซนต์บาร์เธเลมี"

        Cldr.BM ->
            "เบอร์มิวดา"

        Cldr.BN ->
            "บรูไน"

        Cldr.BO ->
            "โบลิเวีย"

        Cldr.BQ ->
            "เนเธอร์แลนด์แคริบเบียน"

        Cldr.BR ->
            "บราซิล"

        Cldr.BS ->
            "บาฮามาส"

        Cldr.BT ->
            "ภูฏาน"

        Cldr.BV ->
            "เกาะบูเว"

        Cldr.BW ->
            "บอตสวานา"

        Cldr.BY ->
            "เบลารุส"

        Cldr.BZ ->
            "เบลีซ"

        Cldr.CA ->
            "แคนาดา"

        Cldr.CC ->
            "หมู่เกาะโคโคส (คีลิง)"

        Cldr.CD ->
            "คองโก (สาธารณรัฐประชาธิปไตย)"

        Cldr.CF ->
            "สาธารณรัฐแอฟริกากลาง"

        Cldr.CG ->
            "คองโก (สาธารณรัฐ)"

        Cldr.CH ->
            "สวิตเซอร์แลนด์"

        Cldr.CI ->
            "โกตดิวัวร์"

        Cldr.CK ->
            "หมู่เกาะคุก"

        Cldr.CL ->
            "ชิลี"

        Cldr.CM ->
            "แคเมอรูน"

        Cldr.CN ->
            "จีน"

        Cldr.CO ->
            "โคลอมเบีย"

        Cldr.CR ->
            "คอสตาริกา"

        Cldr.CU ->
            "คิวบา"

        Cldr.CV ->
            "เคปเวิร์ด"

        Cldr.CW ->
            "คูราเซา"

        Cldr.CX ->
            "เกาะคริสต์มาส"

        Cldr.CY ->
            "ไซปรัส"

        Cldr.CZ ->
            "สาธารณรัฐเช็ก"

        Cldr.DE ->
            "เยอรมนี"

        Cldr.DJ ->
            "จิบูตี"

        Cldr.DK ->
            "เดนมาร์ก"

        Cldr.DM ->
            "โดมินิกา"

        Cldr.DO ->
            "สาธารณรัฐโดมินิกัน"

        Cldr.DZ ->
            "แอลจีเรีย"

        Cldr.EC ->
            "เอกวาดอร์"

        Cldr.EE ->
            "เอสโตเนีย"

        Cldr.EG ->
            "อียิปต์"

        Cldr.EH ->
            "ซาฮาราตะวันตก"

        Cldr.ER ->
            "เอริเทรีย"

        Cldr.ES ->
            "สเปน"

        Cldr.ET ->
            "เอธิโอเปีย"

        Cldr.FI ->
            "ฟินแลนด์"

        Cldr.FJ ->
            "ฟิจิ"

        Cldr.FK ->
            "หมู่เกาะฟอล์กแลนด์"

        Cldr.FM ->
            "ไมโครนีเซีย"

        Cldr.FO ->
            "หมู่เกาะแฟโร"

        Cldr.FR ->
            "ฝรั่งเศส"

        Cldr.GA ->
            "กาบอง"

        Cldr.GB ->
            "สหราชอาณาจักร"

        Cldr.GD ->
            "เกรเนดา"

        Cldr.GE ->
            "จอร์เจีย"

        Cldr.GF ->
            "เฟรนช์เกียนา"

        Cldr.GG ->
            "เกิร์นซีย์"

        Cldr.GH ->
            "กานา"

        Cldr.GI ->
            "ยิบรอลตาร์"

        Cldr.GL ->
            "กรีนแลนด์"

        Cldr.GM ->
            "แกมเบีย"

        Cldr.GN ->
            "กินี"

        Cldr.GP ->
            "กวาเดอลูป"

        Cldr.GQ ->
            "อิเควทอเรียลกินี"

        Cldr.GR ->
            "กรีซ"

        Cldr.GS ->
            "เกาะเซาท์จอร์เจียและหมู่เกาะเซาท์แซนด์วิช"

        Cldr.GT_ ->
            "กัวเตมาลา"

        Cldr.GU ->
            "กวม"

        Cldr.GW ->
            "กินี-บิสเซา"

        Cldr.GY ->
            "กายอานา"

        Cldr.HK ->
            "ฮ่องกง"

        Cldr.HM ->
            "เกาะเฮิร์ดและหมู่เกาะแมกดอนัลด์"

        Cldr.HN ->
            "ฮอนดูรัส"

        Cldr.HR ->
            "โครเอเชีย"

        Cldr.HT ->
            "เฮติ"

        Cldr.HU ->
            "ฮังการี"

        Cldr.ID ->
            "อินโดนีเซีย"

        Cldr.IE ->
            "ไอร์แลนด์"

        Cldr.IL ->
            "อิสราเอล"

        Cldr.IM ->
            "เกาะแมน"

        Cldr.IN ->
            "อินเดีย"

        Cldr.IO ->
            "บริติชอินเดียนโอเชียนเทร์ริทอรี"

        Cldr.IQ ->
            "อิรัก"

        Cldr.IR ->
            "อิหร่าน"

        Cldr.IS ->
            "ไอซ์แลนด์"

        Cldr.IT ->
            "อิตาลี"

        Cldr.JE ->
            "เจอร์ซีย์"

        Cldr.JM ->
            "จาเมกา"

        Cldr.JO ->
            "จอร์แดน"

        Cldr.JP ->
            "ญี่ปุ่น"

        Cldr.KE ->
            "เคนยา"

        Cldr.KG ->
            "คีร์กีซสถาน"

        Cldr.KH ->
            "กัมพูชา"

        Cldr.KI ->
            "คิริบาส"

        Cldr.KM ->
            "คอโมโรส"

        Cldr.KN ->
            "เซนต์คิตส์และเนวิส"

        Cldr.KP ->
            "เกาหลีเหนือ"

        Cldr.KR ->
            "เกาหลีใต้"

        Cldr.KW ->
            "คูเวต"

        Cldr.KY ->
            "หมู่เกาะเคย์แมน"

        Cldr.KZ ->
            "คาซัคสถาน"

        Cldr.LA ->
            "ลาว"

        Cldr.LB ->
            "เลบานอน"

        Cldr.LC ->
            "เซนต์ลูเซีย"

        Cldr.LI ->
            "ลิกเตนสไตน์"

        Cldr.LK ->
            "ศรีลังกา"

        Cldr.LR ->
            "ไลบีเรีย"

        Cldr.LS ->
            "เลโซโท"

        Cldr.LT_ ->
            "ลิทัวเนีย"

        Cldr.LU ->
            "ลักเซมเบิร์ก"

        Cldr.LV ->
            "ลัตเวีย"

        Cldr.LY ->
            "ลิเบีย"

        Cldr.MA ->
            "โมร็อกโก"

        Cldr.MC ->
            "โมนาโก"

        Cldr.MD ->
            "มอลโดวา"

        Cldr.ME ->
            "มอนเตเนโกร"

        Cldr.MF ->
            "เซนต์มาร์ติน"

        Cldr.MG ->
            "มาดากัสการ์"

        Cldr.MH ->
            "หมู่เกาะมาร์แชลล์"

        Cldr.MK ->
            "มาซิโดเนียเหนือ"

        Cldr.ML ->
            "มาลี"

        Cldr.MM ->
            "เมียนมา (พม่า)"

        Cldr.MN ->
            "มองโกเลีย"

        Cldr.MO ->
            "มาเก๊า"

        Cldr.MP ->
            "หมู่เกาะนอร์เทิร์นมาเรียนา"

        Cldr.MQ ->
            "มาร์ตินีก"

        Cldr.MR ->
            "มอริเตเนีย"

        Cldr.MS ->
            "มอนต์เซอร์รัต"

        Cldr.MT ->
            "มอลตา"

        Cldr.MU ->
            "มอริเชียส"

        Cldr.MV ->
            "มัลดีฟส์"

        Cldr.MW ->
            "มาลาวี"

        Cldr.MX ->
            "เม็กซิโก"

        Cldr.MY ->
            "มาเลเซีย"

        Cldr.MZ ->
            "โมซัมบิก"

        Cldr.NA ->
            "นามิเบีย"

        Cldr.NC ->
            "นิวแคลิโดเนีย"

        Cldr.NE ->
            "ไนเจอร์"

        Cldr.NF ->
            "เกาะนอร์ฟอล์ก"

        Cldr.NG ->
            "ไนจีเรีย"

        Cldr.NI ->
            "นิการากัว"

        Cldr.NL ->
            "เนเธอร์แลนด์"

        Cldr.NO ->
            "นอร์เวย์"

        Cldr.NP ->
            "เนปาล"

        Cldr.NR ->
            "นาอูรู"

        Cldr.NU ->
            "นีอูเอ"

        Cldr.NZ ->
            "นิวซีแลนด์"

        Cldr.OM ->
            "โอมาน"

        Cldr.PA ->
            "ปานามา"

        Cldr.PE ->
            "เปรู"

        Cldr.PF ->
            "เฟรนช์โปลินีเซีย"

        Cldr.PG ->
            "ปาปัวนิวกินี"

        Cldr.PH ->
            "ฟิลิปปินส์"

        Cldr.PK ->
            "ปากีสถาน"

        Cldr.PL ->
            "โปแลนด์"

        Cldr.PM ->
            "แซงปีแยร์และมีเกอลง"

        Cldr.PN ->
            "หมู่เกาะพิตแคร์น"

        Cldr.PR ->
            "เปอร์โตริโก"

        Cldr.PS ->
            "ปาเลสไตน์"

        Cldr.PT ->
            "โปรตุเกส"

        Cldr.PW ->
            "ปาเลา"

        Cldr.PY ->
            "ปารากวัย"

        Cldr.QA ->
            "กาตาร์"

        Cldr.RE ->
            "เรอูนียง"

        Cldr.RO ->
            "โรมาเนีย"

        Cldr.RS ->
            "เซอร์เบีย"

        Cldr.RU ->
            "รัสเซีย"

        Cldr.RW ->
            "รวันดา"

        Cldr.SA ->
            "ซาอุดีอาระเบีย"

        Cldr.SB ->
            "หมู่เกาะโซโลมอน"

        Cldr.SC ->
            "เซเชลส์"

        Cldr.SD ->
            "ซูดาน"

        Cldr.SE ->
            "สวีเดน"

        Cldr.SG ->
            "สิงคโปร์"

        Cldr.SH ->
            "เซนต์เฮเลนา"

        Cldr.SI ->
            "สโลวีเนีย"

        Cldr.SJ ->
            "สฟาลบาร์และยานไมเอน"

        Cldr.SK ->
            "สโลวะเกีย"

        Cldr.SL ->
            "เซียร์ราลีโอน"

        Cldr.SM ->
            "ซานมาริโน"

        Cldr.SN ->
            "เซเนกัล"

        Cldr.SO ->
            "โซมาเลีย"

        Cldr.SR ->
            "ซูรินาเม"

        Cldr.SS ->
            "ซูดานใต้"

        Cldr.ST ->
            "เซาตูเมและปรินซิปี"

        Cldr.SV ->
            "เอลซัลวาดอร์"

        Cldr.SX ->
            "ซินต์มาร์เทน"

        Cldr.SY ->
            "ซีเรีย"

        Cldr.SZ ->
            "เอสวาตีนี"

        Cldr.TC ->
            "หมู่เกาะเติกส์และหมู่เกาะเคคอส"

        Cldr.TD ->
            "ชาด"

        Cldr.TF ->
            "เฟรนช์เซาเทิร์นเทร์ริทอรีส์"

        Cldr.TG ->
            "โตโก"

        Cldr.TH ->
            "ไทย"

        Cldr.TJ ->
            "ทาจิกิสถาน"

        Cldr.TK ->
            "โตเกเลา"

        Cldr.TL ->
            "ติมอร์ตะวันออก"

        Cldr.TM ->
            "เติร์กเมนิสถาน"

        Cldr.TN ->
            "ตูนิเซีย"

        Cldr.TO ->
            "ตองกา"

        Cldr.TR ->
            "ตุรกี"

        Cldr.TT ->
            "ตรินิแดดและโตเบโก"

        Cldr.TV ->
            "ตูวาลู"

        Cldr.TW ->
            "ไต้หวัน"

        Cldr.TZ ->
            "แทนซาเนีย"

        Cldr.UA ->
            "ยูเครน"

        Cldr.UG ->
            "ยูกันดา"

        Cldr.UM ->
            "หมู่เกาะรอบนอกของสหรัฐอเมริกา"

        Cldr.US ->
            "สหรัฐอเมริกา"

        Cldr.UY ->
            "อุรุกวัย"

        Cldr.UZ ->
            "อุซเบกิสถาน"

        Cldr.VA ->
            "นครวาติกัน"

        Cldr.VC ->
            "เซนต์วินเซนต์และเกรนาดีนส์"

        Cldr.VE ->
            "เวเนซุเอลา"

        Cldr.VG ->
            "หมู่เกาะบริติชเวอร์จิน"

        Cldr.VI ->
            "หมู่เกาะเวอร์จินของสหรัฐอเมริกา"

        Cldr.VN ->
            "เวียดนาม"

        Cldr.VU ->
            "วานูอาตู"

        Cldr.WF ->
            "วาลลิสและฟุตูนา"

        Cldr.WS ->
            "ซามัว"

        Cldr.XK ->
            "โคโซโว"

        Cldr.YE ->
            "เยเมน"

        Cldr.YT ->
            "มายอต"

        Cldr.ZA ->
            "แอฟริกาใต้"

        Cldr.ZM ->
            "แซมเบีย"

        Cldr.ZW ->
            "ซิมบับเว"