module Cldr.Pashto.Pakistan exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Pashto


{-| Name for `CountryCode` in Pashto - Pakistan.

    AD اندورا
    AE متحده عرب امارات
    AF افغانستان
    AG انټيګوا او باربودا
    AI انګیلا
    AL البانیه
    AM ارمنستان
    AO انګولا
    AQ انتارکتیکا
    AR ارجنټاين
    AS امریکایی ساماوا
    AT اتریش
    AU آسټرالیا
    AW آروبا
    AX الاند ټاپوان
    AZ اذربايجان
    BA بوسنيا او هېرزګوينا
    BB باربادوس
    BD بنگله دېش
    BE بیلجیم
    BF بورکینا فاسو
    BG بلغاریه
    BH بحرين
    BI بروندي
    BJ بینن
    BL سينټ بارتيلمي
    BM برمودا
    BN برونائي
    BO بولیویا
    BQ کیریبین هالینډ
    BR برازیل
    BS باهماس
    BT بهوټان
    BV بوویټ ټاپو
    BW بوتسوانه
    BY بیلاروس
    BZ بلیز
    CA کاناډا
    CC کوکوز (کيلنګ) ټاپوګان
    CD کانګو - کینشاسا
    CF وسطي افريقا جمهور
    CG کانګو - بروزوییل
    CH سویس
    CI د عاج ساحل
    CK کوک ټاپوګان
    CL چیلي
    CM کامرون
    CN چین
    CO کولمبیا
    CR کوستاریکا
    CU کیوبا
    CV کیپ ورد
    CW کوراکاو
    CX د کريسمس ټاپو
    CY قبرس
    CZ چکیا
    DE المان
    DJ جبوتي
    DK ډنمارک
    DM دومینیکا
    DO جمهوريه ډومينيکن
    DZ الجزایر
    EC اکوادور
    EE استونیا
    EG مصر
    EH لويديځ صحارا
    ER اریتره
    ES هسپانیه
    ET حبشه
    FI فنلینډ
    FJ فجي
    FK فاکلينډ ټاپوګان
    FM میکرونیزیا
    FO فارو ټاپو
    FR فرانسه
    GA ګابن
    GB برتانیه
    GD ګرنادا
    GE گورجستان
    GF فرانسوي ګانا
    GG ګرنسي
    GH ګانا
    GI جبل الطارق
    GL ګرینلینډ
    GM ګامبیا
    GN ګینه
    GP ګوادلوپ
    GQ استوایی ګیني
    GR یونان
    GS سويلي جارجيا او سويلي سېنډوچ ټاپوګان
    GT ګواتیمالا
    GU ګوام
    GW ګینه بیسو
    GY ګیانا
    HK هانګ کانګ SAR چین
    HM هارډ او ميکډانلډ ټاپوګان
    HN هانډوراس
    HR کرواشيا
    HT هایټي
    HU مجارستان
    ID اندونیزیا
    IE آيرلېنډ
    IL اسراييل
    IM د آئل آف مین
    IN هند
    IO د برتانوي هند سمندري سيمه
    IQ عراق
    IR ايران
    IS آیسلینډ
    IT ایټالیه
    JE جرسی
    JM جمیکا
    JO اردن
    JP جاپان
    KE کینیا
    KG قرغزستان
    KH کمبودیا
    KI کیري باتي
    KM کوموروس
    KN سینټ کټس او نیویس
    KP شمالی کوریا
    KR سویلي کوریا
    KW کويت
    KY کیمان ټاپوګان
    KZ قزاقستان
    LA لاوس
    LB لبنان
    LC سینټ لوسیا
    LI لیختن اشتاین
    LK سريلنکا
    LR لايبيريا
    LS لسوتو
    LT لیتوانیا
    LU لوګزامبورګ
    LV ليتهويا
    LY لیبیا
    MA مراکش
    MC موناکو
    MD مولدوا
    ME مونټینیګرو
    MF سینټ مارټن
    MG مدغاسکر
    MH مارشل ټاپوګان
    MK شمالي مقدونيه
    ML مالي
    MM ميانمار (برما)
    MN منګوليا
    MO مکاو SAR چین
    MP شمالي ماريانا ټاپوګان
    MQ مارټینیک
    MR موریتانیا
    MS مانټیسیرت
    MT مالټا
    MU موریشیس
    MV مالديپ
    MW مالاوي
    MX میکسیکو
    MY مالیزیا
    MZ موزمبيق
    NA نیمبیا
    NC نوی کالیډونیا
    NE نايجير
    NF نارفولک ټاپوګان
    NG نایجیریا
    NI نکاراګوا
    NL هالېنډ
    NO ناروۍ
    NP نیپال
    NR نایرو
    NU نیوو
    NZ نیوزیلنډ
    OM عمان
    PA پاناما
    PE پیرو
    PF فرانسوي پولينيسيا
    PG پاپوا نيو ګيني
    PH فلپين
    PK پاکستان
    PL پولنډ
    PM سینټ پییر او میکولون
    PN پيټکيرن ټاپوګان
    PR پورتو ریکو
    PS فلسطين سيمے
    PT پورتګال
    PW پلاؤ
    PY پاراګوی
    QA قطر
    RE ریونین
    RO رومانیا
    RS سربيا
    RU روسیه
    RW روندا
    SA سعودي عربستان
    SB سليمان ټاپوګان
    SC سیچیلیس
    SD سوډان
    SE سویډن
    SG سينگاپور
    SH سینټ هیلینا
    SI سلوانیا
    SJ سوالبارد او جان ميين
    SK سلواکیا
    SL سییرا لیون
    SM سان مارینو
    SN سينيګال
    SO سومالیا
    SR سورینام
    SS سويلي سوډان
    ST ساو ټیم او پرنسیپ
    SV سالوېډور
    SX سینټ مارټین
    SY سوریه
    SZ اسواټيني
    TC د ترکیے او کیکاسو ټاپو
    TD چاډ
    TF د فرانسے جنوبي سیمے
    TG ټوګو
    TH تهايلنډ
    TJ تاجکستان
    TK توکیلو
    TL تيمور-ليسټ
    TM تورکمنستان
    TN تونس
    TO تونګا
    TR ترکي
    TT ټرينيډاډ او ټوباګو
    TV توالیو
    TW تائيوان
    TZ تنزانیا
    UA اوکراین
    UG یوګانډا
    UM د متحده ایالاتو ټاپوګان
    US متحده آيالات
    UY یوروګوی
    UZ اوزبکستان
    VA واتیکان ښار
    VC سینټ ویسنټینټ او ګرینډینز
    VE وینزویلا
    VG بریتانوی ویګور ټاپوګان
    VI د متحده آيالاتو ورجن ټاپوګان
    VN وېتنام
    VU واناتو
    WF والیس او فوتونا
    WS ساماوا
    XK کوسوو
    YE یمن
    YT مايوټ
    ZA سویلي افریقا
    ZM زیمبیا
    ZW زیمبابوی
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.PS ->
            "فلسطين سيمے"

        Cldr.TC ->
            "د ترکیے او کیکاسو ټاپو"

        Cldr.TF ->
            "د فرانسے جنوبي سیمے"

        _ ->
            Cldr.Pashto.countryCodeToName countryCode