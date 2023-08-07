module Cldr.Persian.Afghanistan exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Persian


{-| Name for `CountryCode` in Persian - Afghanistan.

    AD اندورا
    AE امارات متحدهٔ عربی
    AF افغانستان
    AG انتیگوا و باربودا
    AI آنگویلا
    AL البانیا
    AM ارمنستان
    AO انگولا
    AQ انترکتیکا
    AR ارجنتاین
    AS ساموآی امریکا
    AT اتریش
    AU استرالیا
    AW آروبا
    AX جزایر آلاند
    AZ جمهوری آذربایجان
    BA بوسنیا و هرزه‌گوینا
    BB باربادوس
    BD بنگله‌دیش
    BE بلجیم
    BF بورکینافاسو
    BG بلغاریا
    BH بحرین
    BI بوروندی
    BJ بنین
    BL سن بارتلمی
    BM برمودا
    BN برونی
    BO بولیویا
    BQ جزایر کارائیب هلند
    BR برازیل
    BS بهاماس
    BT بوتان
    BV جزیرهٔ بووه
    BW بوتسوانا
    BY بلاروس
    BZ بلیز
    CA کانادا
    CC جزایر کوکوس
    CD کنگو (جمهوری دموکراتیک)
    CF جمهوری افریقای مرکزی
    CG کنگو (جمهوری)
    CH سویس
    CI ساحل عاج
    CK جزایر کوک
    CL چلی
    CM کامرون
    CN چین
    CO کولمبیا
    CR کاستریکا
    CU کیوبا
    CV کیپ‌ورد
    CW کوراسائو
    CX جزیرهٔ کریسمس
    CY قبرس
    CZ جمهوری چک
    DE آلمان
    DJ جیبوتی
    DK دنمارک
    DM دومینیکا
    DO جمهوری دومینیکن
    DZ الجزایر
    EC اکوادور
    EE استونیا
    EG مصر
    EH صحرای غربی
    ER اریتریا
    ES هسپانیه
    ET ایتوپیا
    FI فنلند
    FJ فیجی
    FK جزایر فالکلند
    FM میکرونزیا
    FO جزایر فارو
    FR فرانسه
    GA گابن
    GB بریتانیا
    GD گرینادا
    GE گرجستان
    GF گویان فرانسه
    GG گرنزی
    GH گانا
    GI جبل‌الطارق
    GL گرینلند
    GM گامبیا
    GN گینیا
    GP گوادلوپ
    GQ گینیا استوایی
    GR یونان
    GS جورجیای جنوبی و جزایر ساندویچ جنوبی
    GT گواتیمالا
    GU گوام
    GW گینیا بیسائو
    GY گیانا
    HK هانگ کانگ
    HM هرد و جزایر مک‌دونالد
    HN هاندوراس
    HR کروشیا
    HT هایتی
    HU مجارستان
    ID اندونیزیا
    IE آیرلند
    IL اسرائیل
    IM جزیرهٔ من
    IN هند
    IO قلمرو بریتانیا در اقیانوس هند
    IQ عراق
    IR ایران
    IS آیسلند
    IT ایتالیا
    JE جرزی
    JM جامائیکا
    JO اردن
    JP جاپان
    KE کینیا
    KG قرقیزستان
    KH کمپوچیا
    KI کیریباتی
    KM کومور
    KN سنت کیتس و نویس
    KP کوریای شمالی
    KR کوریای جنوبی
    KW کویت
    KY جزایر کِیمن
    KZ قزاقستان
    LA لائوس
    LB لبنان
    LC سنت لوسیا
    LI لیختن‌اشتاین
    LK سریلانکا
    LR لیبریا
    LS لیسوتو
    LT لتوانیا
    LU لوکزامبورگ
    LV لاتویا
    LY لیبیا
    MA مراکش
    MC موناکو
    MD مولداوی
    ME مونته‌نگرو
    MF سنت مارتین
    MG مادغاسکر
    MH جزایر مارشال
    MK مقدونیهٔ شمالی
    ML مالی
    MM میانمار (برمه)
    MN منگولیا
    MO ماکائو
    MP جزایر ماریانای شمالی
    MQ مارتینیک
    MR موریتانیا
    MS مونت‌سرات
    MT مالتا
    MU موریس
    MV مالدیو
    MW مالاوی
    MX مکسیکو
    MY مالیزیا
    MZ موزمبیق
    NA نامیبیا
    NC کالدونیای جدید
    NE نیجر
    NF جزیرهٔ نورفولک
    NG نیجریا
    NI نیکاراگوا
    NL هالند
    NO ناروی
    NP نیپال
    NR نائورو
    NU نیوئه
    NZ زیلاند جدید
    OM عمان
    PA پانامه
    PE پیرو
    PF پلی‌نزی فرانسه
    PG پاپوا نیو گینیا
    PH فیلیپین
    PK پاکستان
    PL پولند
    PM سن پیر و میکلن
    PN جزایر پیت‌کرن
    PR پورتوریکو
    PS فلسطین
    PT پرتگال
    PW پالائو
    PY پاراگوای
    QA قطر
    RE رئونیون
    RO رومانیا
    RS صربستان
    RU روسیه
    RW رواندا
    SA عربستان سعودی
    SB جزایر سلیمان
    SC سیشل
    SD سودان
    SE سویدن
    SG سینگاپور
    SH سنت هلن
    SI سلونیا
    SJ اسوالبارد و جان ماین
    SK سلواکیا
    SL سیرالیون
    SM سان‌مارینو
    SN سینیگال
    SO سومالیه
    SR سورینام
    SS سودان جنوبی
    ST سائوتومه و پرینسیپ
    SV السلوادور
    SX سنت مارتن
    SY سوریه
    SZ اسواتینی
    TC جزایر تورکس و کایکوس
    TD چاد
    TF سرزمین‌های جنوبی فرانسه
    TG توگو
    TH تایلند
    TJ تاجکستان
    TK توکلائو
    TL تیمور شرقی
    TM ترکمنستان
    TN تونس
    TO تونگا
    TR ترکیه
    TT ترینیداد و توباگو
    TV تووالو
    TW تایوان
    TZ تانزانیا
    UA اوکراین
    UG یوگاندا
    UM جزایر دورافتادهٔ ایالات متحده
    US ایالات متحده
    UY یوروگوای
    UZ ازبکستان
    VA واتیکان
    VC سنت وینسنت و گرنادین‌ها
    VE ونزویلا
    VG جزایر ویرجین بریتانیا
    VI جزایر ویرجین ایالات متحده
    VN ویتنام
    VU وانواتو
    WF والیس و فوتونا
    WS ساموآ
    XK کوسوا
    YE یمن
    YT مایوت
    ZA افریقای جنوبی
    ZM زامبیا
    ZW زیمبابوی
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "اندورا"

        Cldr.AG ->
            "انتیگوا و باربودا"

        Cldr.AL ->
            "البانیا"

        Cldr.AO ->
            "انگولا"

        Cldr.AQ ->
            "انترکتیکا"

        Cldr.AR ->
            "ارجنتاین"

        Cldr.BA ->
            "بوسنیا و هرزه‌گوینا"

        Cldr.BD ->
            "بنگله‌دیش"

        Cldr.BE ->
            "بلجیم"

        Cldr.BG ->
            "بلغاریا"

        Cldr.BN ->
            "برونی"

        Cldr.BO ->
            "بولیویا"

        Cldr.BR ->
            "برازیل"

        Cldr.BS ->
            "بهاماس"

        Cldr.CH ->
            "سویس"

        Cldr.CL ->
            "چلی"

        Cldr.CO ->
            "کولمبیا"

        Cldr.CR ->
            "کاستریکا"

        Cldr.CU ->
            "کیوبا"

        Cldr.DK ->
            "دنمارک"

        Cldr.EE ->
            "استونیا"

        Cldr.ER ->
            "اریتریا"

        Cldr.ES ->
            "هسپانیه"

        Cldr.ET ->
            "ایتوپیا"

        Cldr.FI ->
            "فنلند"

        Cldr.FM ->
            "میکرونزیا"

        Cldr.GD ->
            "گرینادا"

        Cldr.GH ->
            "گانا"

        Cldr.GN ->
            "گینیا"

        Cldr.GQ ->
            "گینیا استوایی"

        Cldr.GT_ ->
            "گواتیمالا"

        Cldr.GW ->
            "گینیا بیسائو"

        Cldr.GY ->
            "گیانا"

        Cldr.HK ->
            "هانگ کانگ"

        Cldr.HN ->
            "هاندوراس"

        Cldr.HR ->
            "کروشیا"

        Cldr.HT ->
            "هایتی"

        Cldr.ID ->
            "اندونیزیا"

        Cldr.IE ->
            "آیرلند"

        Cldr.IS ->
            "آیسلند"

        Cldr.JP ->
            "جاپان"

        Cldr.KE ->
            "کینیا"

        Cldr.KH ->
            "کمپوچیا"

        Cldr.KP ->
            "کوریای شمالی"

        Cldr.KR ->
            "کوریای جنوبی"

        Cldr.LK ->
            "سریلانکا"

        Cldr.LS ->
            "لیسوتو"

        Cldr.LT_ ->
            "لتوانیا"

        Cldr.LV ->
            "لاتویا"

        Cldr.LY ->
            "لیبیا"

        Cldr.MG ->
            "مادغاسکر"

        Cldr.MN ->
            "منگولیا"

        Cldr.MR ->
            "موریتانیا"

        Cldr.MT ->
            "مالتا"

        Cldr.MX ->
            "مکسیکو"

        Cldr.MY ->
            "مالیزیا"

        Cldr.MZ ->
            "موزمبیق"

        Cldr.NG ->
            "نیجریا"

        Cldr.NI ->
            "نیکاراگوا"

        Cldr.NL ->
            "هالند"

        Cldr.NO ->
            "ناروی"

        Cldr.NP ->
            "نیپال"

        Cldr.NZ ->
            "زیلاند جدید"

        Cldr.PA ->
            "پانامه"

        Cldr.PE ->
            "پیرو"

        Cldr.PG ->
            "پاپوا نیو گینیا"

        Cldr.PL ->
            "پولند"

        Cldr.PT ->
            "پرتگال"

        Cldr.PY ->
            "پاراگوای"

        Cldr.RO ->
            "رومانیا"

        Cldr.SE ->
            "سویدن"

        Cldr.SG ->
            "سینگاپور"

        Cldr.SI ->
            "سلونیا"

        Cldr.SJ ->
            "اسوالبارد و جان ماین"

        Cldr.SK ->
            "سلواکیا"

        Cldr.SL ->
            "سیرالیون"

        Cldr.SN ->
            "سینیگال"

        Cldr.SO ->
            "سومالیه"

        Cldr.SV ->
            "السلوادور"

        Cldr.TJ ->
            "تاجکستان"

        Cldr.UG ->
            "یوگاندا"

        Cldr.UY ->
            "یوروگوای"

        Cldr.VC ->
            "سنت وینسنت و گرنادین‌ها"

        Cldr.VE ->
            "ونزویلا"

        Cldr.XK ->
            "کوسوا"

        Cldr.ZW ->
            "زیمبابوی"

        _ ->
            Cldr.Persian.countryCodeToName countryCode