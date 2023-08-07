module Cldr.Arabic.Mauritania exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Arabic


{-| Name for `CountryCode` in Arabic - Mauritania.

This is identical to the Arabic version.

    AD أندورا
    AE الإمارات العربية المتحدة
    AF أفغانستان
    AG أنتيغوا وبربودا
    AI أنغويلا
    AL ألبانيا
    AM أرمينيا
    AO أنغولا
    AQ أنتاركتيكا
    AR الأرجنتين
    AS ساموا الأمريكية
    AT النمسا
    AU أستراليا
    AW أروبا
    AX جزر آلاند
    AZ أذربيجان
    BA البوسنة والهرسك
    BB بربادوس
    BD بنغلاديش
    BE بلجيكا
    BF بوركينا فاسو
    BG بلغاريا
    BH البحرين
    BI بوروندي
    BJ بنين
    BL سان بارتليمي
    BM برمودا
    BN بروناي
    BO بوليفيا
    BQ هولندا الكاريبية
    BR البرازيل
    BS جزر البهاما
    BT بوتان
    BV جزيرة بوفيه
    BW بوتسوانا
    BY بيلاروس
    BZ بليز
    CA كندا
    CC جزر كوكوس (كيلينغ)
    CD جمهورية الكونغو الديمقراطية
    CF جمهورية أفريقيا الوسطى
    CG جمهورية الكونغو
    CH سويسرا
    CI ساحل العاج
    CK جزر كوك
    CL تشيلي
    CM الكاميرون
    CN الصين
    CO كولومبيا
    CR كوستاريكا
    CU كوبا
    CV الرأس الأخضر
    CW كوراساو
    CX جزيرة كريسماس
    CY قبرص
    CZ جمهورية التشيك
    DE ألمانيا
    DJ جيبوتي
    DK الدانمرك
    DM دومينيكا
    DO جمهورية الدومينيكان
    DZ الجزائر
    EC الإكوادور
    EE إستونيا
    EG مصر
    EH الصحراء الغربية
    ER إريتريا
    ES إسبانيا
    ET إثيوبيا
    FI فنلندا
    FJ فيجي
    FK جزر فوكلاند
    FM ميكرونيزيا
    FO جزر فارو
    FR فرنسا
    GA الغابون
    GB المملكة المتحدة
    GD غرينادا
    GE جورجيا
    GF غويانا الفرنسية
    GG غيرنزي
    GH غانا
    GI جبل طارق
    GL غرينلاند
    GM غامبيا
    GN غينيا
    GP غوادلوب
    GQ غينيا الاستوائية
    GR اليونان
    GS جورجيا الجنوبية وجزر ساندويتش الجنوبية
    GT غواتيمالا
    GU غوام
    GW غينيا بيساو
    GY غيانا
    HK هونغ كونغ
    HM جزيرة هيرد وجزر ماكدونالد
    HN هندوراس
    HR كرواتيا
    HT هايتي
    HU هنغاريا
    ID إندونيسيا
    IE أيرلندا
    IL إسرائيل
    IM جزيرة مان
    IN الهند
    IO الإقليم البريطاني في المحيط الهندي
    IQ العراق
    IR إيران
    IS آيسلندا
    IT إيطاليا
    JE جيرسي
    JM جامايكا
    JO الأردن
    JP اليابان
    KE كينيا
    KG قيرغيزستان
    KH كمبوديا
    KI كيريباتي
    KM جزر القمر
    KN سانت كيتس ونيفيس
    KP كوريا الشمالية
    KR كوريا الجنوبية
    KW الكويت
    KY جزر كايمان
    KZ كازاخستان
    LA لاوس
    LB لبنان
    LC سانت لوسيا
    LI ليختنشتاين
    LK سريلانكا
    LR ليبيريا
    LS ليسوتو
    LT ليتوانيا
    LU لوكسمبورغ
    LV لاتفيا
    LY ليبيا
    MA المغرب
    MC موناكو
    MD مولدوفا
    ME الجبل الأسود
    MF سان مارتن
    MG مدغشقر
    MH جزر مارشال
    MK مقدونيا الشمالية
    ML مالي
    MM ميانمار (بورما)
    MN منغوليا
    MO مكاو
    MP جزر ماريانا الشمالية
    MQ جزر المارتينيك
    MR موريتانيا
    MS مونتسرات
    MT مالطا
    MU موريشيوس
    MV جزر المالديف
    MW ملاوي
    MX المكسيك
    MY ماليزيا
    MZ موزمبيق
    NA ناميبيا
    NC كاليدونيا الجديدة
    NE النيجر
    NF جزيرة نورفولك
    NG نيجيريا
    NI نيكاراغوا
    NL هولندا
    NO النرويج
    NP نيبال
    NR ناورو
    NU نيوي
    NZ نيوزيلندا
    OM عُمان
    PA بنما
    PE بيرو
    PF بولينيزيا الفرنسية
    PG بابوا غينيا الجديدة
    PH الفلبين
    PK باكستان
    PL بولندا
    PM سان بيير ومكويلون
    PN جزر بيتكيرن
    PR بورتوريكو
    PS فلسطين
    PT البرتغال
    PW بالاو
    PY باراغواي
    QA قطر
    RE روينيون
    RO رومانيا
    RS صربيا
    RU روسيا
    RW رواندا
    SA المملكة العربية السعودية
    SB جزر سليمان
    SC سيشل
    SD السودان
    SE السويد
    SG سنغافورة
    SH سانت هيلينا
    SI سلوفينيا
    SJ سفالبارد وجان ماين
    SK سلوفاكيا
    SL سيراليون
    SM سان مارينو
    SN السنغال
    SO الصومال
    SR سورينام
    SS جنوب السودان
    ST ساو تومي وبرينسيبي
    SV السلفادور
    SX سانت مارتن
    SY سوريا
    SZ إسواتيني
    TC جزر توركس وكايكوس
    TD تشاد
    TF الأقاليم الجنوبية الفرنسية
    TG توغو
    TH تايلاند
    TJ طاجيكستان
    TK توكيلو
    TL تيمور الشرقية
    TM تركمانستان
    TN تونس
    TO تونغا
    TR تركيا
    TT ترينيداد وتوباغو
    TV توفالو
    TW تايوان
    TZ تنزانيا
    UA أوكرانيا
    UG أوغندا
    UM جزر الولايات المتحدة النائية
    US الولايات المتحدة
    UY أورغواي
    UZ أوزبكستان
    VA الفاتيكان
    VC سانت فنسنت وجزر غرينادين
    VE فنزويلا
    VG جزر فيرجن البريطانية
    VI جزر فيرجن التابعة للولايات المتحدة
    VN فيتنام
    VU فانواتو
    WF جزر والس وفوتونا
    WS ساموا
    XK كوسوفو
    YE اليمن
    YT مايوت
    ZA جنوب أفريقيا
    ZM زامبيا
    ZW زيمبابوي
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName =
    Cldr.Arabic.countryCodeToName