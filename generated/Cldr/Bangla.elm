module Cldr.Bangla exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Bangla.

    AD আন্ডোরা
    AE সংযুক্ত আরব আমিরাত
    AF আফগানিস্তান
    AG অ্যান্টিগুয়া ও বারবুডা
    AI অ্যাঙ্গুইলা
    AL আলবেনিয়া
    AM আর্মেনিয়া
    AO অ্যাঙ্গোলা
    AQ অ্যান্টার্কটিকা
    AR আর্জেন্টিনা
    AS আমেরিকান সামোয়া
    AT অস্ট্রিয়া
    AU অস্ট্রেলিয়া
    AW আরুবা
    AX অলান্ড দ্বীপপুঞ্জ
    AZ আজারবাইজান
    BA বসনিয়া ও হার্জেগোভিনা
    BB বার্বাডোজ
    BD বাংলাদেশ
    BE বেলজিয়াম
    BF বুরকিনা ফাসো
    BG বুলগেরিয়া
    BH বাহারিন
    BI বুরুন্ডি
    BJ বেনিন
    BL সেন্ট বার্থেলেমি
    BM বারমুডা
    BN ব্রুনেই
    BO বলিভিয়া
    BQ ক্যারিবিয়ান নেদারল্যান্ডস
    BR ব্রাজিল
    BS বাহামা দ্বীপপুঞ্জ
    BT ভুটান
    BV বোভেট দ্বীপ
    BW বতসোয়ানা
    BY বেলারুশ
    BZ বেলিজ
    CA কানাডা
    CC কোকোস (কিলিং) দ্বীপপুঞ্জ
    CD কঙ্গো-কিনশাসা
    CF মধ্য আফ্রিকার প্রজাতন্ত্র
    CG কঙ্গো - ব্রাজাভিল
    CH সুইজারল্যান্ড
    CI কোট ডি‘আইভোর
    CK কুক দ্বীপপুঞ্জ
    CL চিলি
    CM ক্যামেরুন
    CN চীন
    CO কলম্বিয়া
    CR কোস্টারিকা
    CU কিউবা
    CV কেপ ভার্দে
    CW কুরাসাও
    CX ক্রিসমাস দ্বীপ
    CY সাইপ্রাস
    CZ চেকিয়া
    DE জার্মানি
    DJ জিবুতি
    DK ডেনমার্ক
    DM ডোমিনিকা
    DO ডোমেনিকান প্রজাতন্ত্র
    DZ আলজেরিয়া
    EC ইকুয়েডর
    EE এস্তোনিয়া
    EG মিশর
    EH পশ্চিম সাহারা
    ER ইরিত্রিয়া
    ES স্পেন
    ET ইথিওপিয়া
    FI ফিনল্যান্ড
    FJ ফিজি
    FK ফকল্যান্ড দ্বীপপুঞ্জ
    FM মাইক্রোনেশিয়া
    FO ফ্যারো দ্বীপপুঞ্জ
    FR ফ্রান্স
    GA গ্যাবন
    GB যুক্তরাজ্য
    GD গ্রেনাডা
    GE জর্জিয়া
    GF ফরাসী গায়ানা
    GG গার্নসি
    GH ঘানা
    GI জিব্রাল্টার
    GL গ্রীনল্যান্ড
    GM গাম্বিয়া
    GN গিনি
    GP গুয়াদেলৌপ
    GQ নিরক্ষীয় গিনি
    GR গ্রীস
    GS দক্ষিণ জর্জিয়া ও দক্ষিণ স্যান্ডউইচ দ্বীপপুঞ্জ
    GT গুয়াতেমালা
    GU গুয়াম
    GW গিনি-বিসাউ
    GY গিয়ানা
    HK হংকং এসএআর চীনা
    HM হার্ড এবং ম্যাকডোনাল্ড দ্বীপপুঞ্জ
    HN হন্ডুরাস
    HR ক্রোয়েশিয়া
    HT হাইতি
    HU হাঙ্গেরি
    ID ইন্দোনেশিয়া
    IE আয়ারল্যান্ড
    IL ইজরায়েল
    IM আইল অফ ম্যান
    IN ভারত
    IO ব্রিটিশ ভারত মহাসাগরীয় অঞ্চল
    IQ ইরাক
    IR ইরান
    IS আইসল্যান্ড
    IT ইতালি
    JE জার্সি
    JM জামাইকা
    JO জর্ডন
    JP জাপান
    KE কেনিয়া
    KG কিরগিজিস্তান
    KH কম্বোডিয়া
    KI কিরিবাতি
    KM কমোরোস
    KN সেন্ট কিটস ও নেভিস
    KP উত্তর কোরিয়া
    KR দক্ষিণ কোরিয়া
    KW কুয়েত
    KY কেম্যান দ্বীপপুঞ্জ
    KZ কাজাখস্তান
    LA লাওস
    LB লেবানন
    LC সেন্ট লুসিয়া
    LI লিচেনস্টেইন
    LK শ্রীলঙ্কা
    LR লাইবেরিয়া
    LS লেসোথো
    LT লিথুয়ানিয়া
    LU লাক্সেমবার্গ
    LV লাটভিয়া
    LY লিবিয়া
    MA মোরক্কো
    MC মোনাকো
    MD মলডোভা
    ME মন্টিনিগ্রো
    MF সেন্ট মার্টিন
    MG মাদাগাস্কার
    MH মার্শাল দ্বীপপুঞ্জ
    MK উত্তর ম্যাসেডোনিয়া
    ML মালি
    MM মায়ানমার (বার্মা)
    MN মঙ্গোলিয়া
    MO ম্যাকাও এসএআর চীন
    MP উত্তরাঞ্চলীয় মারিয়ানা দ্বীপপুঞ্জ
    MQ মার্টিনিক
    MR মরিতানিয়া
    MS মন্টসেরাট
    MT মাল্টা
    MU মরিশাস
    MV মালদ্বীপ
    MW মালাউই
    MX মেক্সিকো
    MY মালয়েশিয়া
    MZ মোজাম্বিক
    NA নামিবিয়া
    NC নিউ ক্যালেডোনিয়া
    NE নাইজার
    NF নরফোক দ্বীপ
    NG নাইজেরিয়া
    NI নিকারাগুয়া
    NL নেদারল্যান্ডস
    NO নরওয়ে
    NP নেপাল
    NR নাউরু
    NU নিউয়ে
    NZ নিউজিল্যান্ড
    OM ওমান
    PA পানামা
    PE পেরু
    PF ফরাসী পলিনেশিয়া
    PG পাপুয়া নিউ গিনি
    PH ফিলিপাইন
    PK পাকিস্তান
    PL পোল্যান্ড
    PM সেন্ট পিয়ের ও মিকুয়েলন
    PN পিটকেয়ার্ন দ্বীপপুঞ্জ
    PR পুয়ের্তো রিকো
    PS প্যালেস্টাইন ভূখণ্ড
    PT পর্তুগাল
    PW পালাউ
    PY প্যারাগুয়ে
    QA কাতার
    RE রিইউনিয়ন
    RO রোমানিয়া
    RS সার্বিয়া
    RU রাশিয়া
    RW রুয়ান্ডা
    SA সৌদি আরব
    SB সলোমন দ্বীপপুঞ্জ
    SC সিসিলি
    SD সুদান
    SE সুইডেন
    SG সিঙ্গাপুর
    SH সেন্ট হেলেনা
    SI স্লোভানিয়া
    SJ স্বালবার্ড ও জান মেয়েন
    SK স্লোভাকিয়া
    SL সিয়েরা লিওন
    SM সান মারিনো
    SN সেনেগাল
    SO সোমালিয়া
    SR সুরিনাম
    SS দক্ষিণ সুদান
    ST সাওটোমা ও প্রিন্সিপি
    SV এল সালভেদর
    SX সিন্ট মার্টেন
    SY সিরিয়া
    SZ ইসওয়াতিনি
    TC তুর্কস ও কাইকোস দ্বীপপুঞ্জ
    TD চাদ
    TF ফরাসী দক্ষিণাঞ্চল
    TG টোগো
    TH থাইল্যান্ড
    TJ তাজিকিস্তান
    TK টোকেলাউ
    TL তিমুর-লেস্তে
    TM তুর্কমেনিস্তান
    TN তিউনিসিয়া
    TO টোঙ্গা
    TR তুরস্ক
    TT ত্রিনিনাদ ও টোব্যাগো
    TV টুভালু
    TW তাইওয়ান
    TZ তাঞ্জানিয়া
    UA ইউক্রেন
    UG উগান্ডা
    UM যুক্তরাষ্ট্রের পার্শ্ববর্তী দ্বীপপুঞ্জ
    US মার্কিন যুক্তরাষ্ট্র
    UY উরুগুয়ে
    UZ উজবেকিস্তান
    VA ভ্যাটিকান সিটি
    VC সেন্ট ভিনসেন্ট ও গ্রেনাডিনস
    VE ভেনেজুয়েলা
    VG ব্রিটিশ ভার্জিন দ্বীপপুঞ্জ
    VI মার্কিন যুক্তরাষ্ট্রীয় ভার্জিন দ্বীপপুঞ্জ
    VN ভিয়েতনাম
    VU ভানুয়াটু
    WF ওয়ালিস ও ফুটুনা
    WS সামোয়া
    XK কসোভো
    YE ইয়েমেন
    YT মায়োত্তে
    ZA দক্ষিণ আফ্রিকা
    ZM জাম্বিয়া
    ZW জিম্বাবোয়ে
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "আন্ডোরা"

        Cldr.AE ->
            "সংযুক্ত আরব আমিরাত"

        Cldr.AF ->
            "আফগানিস্তান"

        Cldr.AG ->
            "অ্যান্টিগুয়া ও বারবুডা"

        Cldr.AI ->
            "অ্যাঙ্গুইলা"

        Cldr.AL ->
            "আলবেনিয়া"

        Cldr.AM ->
            "আর্মেনিয়া"

        Cldr.AO ->
            "অ্যাঙ্গোলা"

        Cldr.AQ ->
            "অ্যান্টার্কটিকা"

        Cldr.AR ->
            "আর্জেন্টিনা"

        Cldr.AS ->
            "আমেরিকান সামোয়া"

        Cldr.AT ->
            "অস্ট্রিয়া"

        Cldr.AU ->
            "অস্ট্রেলিয়া"

        Cldr.AW ->
            "আরুবা"

        Cldr.AX ->
            "অলান্ড দ্বীপপুঞ্জ"

        Cldr.AZ ->
            "আজারবাইজান"

        Cldr.BA ->
            "বসনিয়া ও হার্জেগোভিনা"

        Cldr.BB ->
            "বার্বাডোজ"

        Cldr.BD ->
            "বাংলাদেশ"

        Cldr.BE ->
            "বেলজিয়াম"

        Cldr.BF ->
            "বুরকিনা ফাসো"

        Cldr.BG ->
            "বুলগেরিয়া"

        Cldr.BH ->
            "বাহারিন"

        Cldr.BI ->
            "বুরুন্ডি"

        Cldr.BJ ->
            "বেনিন"

        Cldr.BL ->
            "সেন্ট বার্থেলেমি"

        Cldr.BM ->
            "বারমুডা"

        Cldr.BN ->
            "ব্রুনেই"

        Cldr.BO ->
            "বলিভিয়া"

        Cldr.BQ ->
            "ক্যারিবিয়ান নেদারল্যান্ডস"

        Cldr.BR ->
            "ব্রাজিল"

        Cldr.BS ->
            "বাহামা দ্বীপপুঞ্জ"

        Cldr.BT ->
            "ভুটান"

        Cldr.BV ->
            "বোভেট দ্বীপ"

        Cldr.BW ->
            "বতসোয়ানা"

        Cldr.BY ->
            "বেলারুশ"

        Cldr.BZ ->
            "বেলিজ"

        Cldr.CA ->
            "কানাডা"

        Cldr.CC ->
            "কোকোস (কিলিং) দ্বীপপুঞ্জ"

        Cldr.CD ->
            "কঙ্গো-কিনশাসা"

        Cldr.CF ->
            "মধ্য আফ্রিকার প্রজাতন্ত্র"

        Cldr.CG ->
            "কঙ্গো - ব্রাজাভিল"

        Cldr.CH ->
            "সুইজারল্যান্ড"

        Cldr.CI ->
            "কোট ডি‘আইভোর"

        Cldr.CK ->
            "কুক দ্বীপপুঞ্জ"

        Cldr.CL ->
            "চিলি"

        Cldr.CM ->
            "ক্যামেরুন"

        Cldr.CN ->
            "চীন"

        Cldr.CO ->
            "কলম্বিয়া"

        Cldr.CR ->
            "কোস্টারিকা"

        Cldr.CU ->
            "কিউবা"

        Cldr.CV ->
            "কেপ ভার্দে"

        Cldr.CW ->
            "কুরাসাও"

        Cldr.CX ->
            "ক্রিসমাস দ্বীপ"

        Cldr.CY ->
            "সাইপ্রাস"

        Cldr.CZ ->
            "চেকিয়া"

        Cldr.DE ->
            "জার্মানি"

        Cldr.DJ ->
            "জিবুতি"

        Cldr.DK ->
            "ডেনমার্ক"

        Cldr.DM ->
            "ডোমিনিকা"

        Cldr.DO ->
            "ডোমেনিকান প্রজাতন্ত্র"

        Cldr.DZ ->
            "আলজেরিয়া"

        Cldr.EC ->
            "ইকুয়েডর"

        Cldr.EE ->
            "এস্তোনিয়া"

        Cldr.EG ->
            "মিশর"

        Cldr.EH ->
            "পশ্চিম সাহারা"

        Cldr.ER ->
            "ইরিত্রিয়া"

        Cldr.ES ->
            "স্পেন"

        Cldr.ET ->
            "ইথিওপিয়া"

        Cldr.FI ->
            "ফিনল্যান্ড"

        Cldr.FJ ->
            "ফিজি"

        Cldr.FK ->
            "ফকল্যান্ড দ্বীপপুঞ্জ"

        Cldr.FM ->
            "মাইক্রোনেশিয়া"

        Cldr.FO ->
            "ফ্যারো দ্বীপপুঞ্জ"

        Cldr.FR ->
            "ফ্রান্স"

        Cldr.GA ->
            "গ্যাবন"

        Cldr.GB ->
            "যুক্তরাজ্য"

        Cldr.GD ->
            "গ্রেনাডা"

        Cldr.GE ->
            "জর্জিয়া"

        Cldr.GF ->
            "ফরাসী গায়ানা"

        Cldr.GG ->
            "গার্নসি"

        Cldr.GH ->
            "ঘানা"

        Cldr.GI ->
            "জিব্রাল্টার"

        Cldr.GL ->
            "গ্রীনল্যান্ড"

        Cldr.GM ->
            "গাম্বিয়া"

        Cldr.GN ->
            "গিনি"

        Cldr.GP ->
            "গুয়াদেলৌপ"

        Cldr.GQ ->
            "নিরক্ষীয় গিনি"

        Cldr.GR ->
            "গ্রীস"

        Cldr.GS ->
            "দক্ষিণ জর্জিয়া ও দক্ষিণ স্যান্ডউইচ দ্বীপপুঞ্জ"

        Cldr.GT_ ->
            "গুয়াতেমালা"

        Cldr.GU ->
            "গুয়াম"

        Cldr.GW ->
            "গিনি-বিসাউ"

        Cldr.GY ->
            "গিয়ানা"

        Cldr.HK ->
            "হংকং এসএআর চীনা"

        Cldr.HM ->
            "হার্ড এবং ম্যাকডোনাল্ড দ্বীপপুঞ্জ"

        Cldr.HN ->
            "হন্ডুরাস"

        Cldr.HR ->
            "ক্রোয়েশিয়া"

        Cldr.HT ->
            "হাইতি"

        Cldr.HU ->
            "হাঙ্গেরি"

        Cldr.ID ->
            "ইন্দোনেশিয়া"

        Cldr.IE ->
            "আয়ারল্যান্ড"

        Cldr.IL ->
            "ইজরায়েল"

        Cldr.IM ->
            "আইল অফ ম্যান"

        Cldr.IN ->
            "ভারত"

        Cldr.IO ->
            "ব্রিটিশ ভারত মহাসাগরীয় অঞ্চল"

        Cldr.IQ ->
            "ইরাক"

        Cldr.IR ->
            "ইরান"

        Cldr.IS ->
            "আইসল্যান্ড"

        Cldr.IT ->
            "ইতালি"

        Cldr.JE ->
            "জার্সি"

        Cldr.JM ->
            "জামাইকা"

        Cldr.JO ->
            "জর্ডন"

        Cldr.JP ->
            "জাপান"

        Cldr.KE ->
            "কেনিয়া"

        Cldr.KG ->
            "কিরগিজিস্তান"

        Cldr.KH ->
            "কম্বোডিয়া"

        Cldr.KI ->
            "কিরিবাতি"

        Cldr.KM ->
            "কমোরোস"

        Cldr.KN ->
            "সেন্ট কিটস ও নেভিস"

        Cldr.KP ->
            "উত্তর কোরিয়া"

        Cldr.KR ->
            "দক্ষিণ কোরিয়া"

        Cldr.KW ->
            "কুয়েত"

        Cldr.KY ->
            "কেম্যান দ্বীপপুঞ্জ"

        Cldr.KZ ->
            "কাজাখস্তান"

        Cldr.LA ->
            "লাওস"

        Cldr.LB ->
            "লেবানন"

        Cldr.LC ->
            "সেন্ট লুসিয়া"

        Cldr.LI ->
            "লিচেনস্টেইন"

        Cldr.LK ->
            "শ্রীলঙ্কা"

        Cldr.LR ->
            "লাইবেরিয়া"

        Cldr.LS ->
            "লেসোথো"

        Cldr.LT_ ->
            "লিথুয়ানিয়া"

        Cldr.LU ->
            "লাক্সেমবার্গ"

        Cldr.LV ->
            "লাটভিয়া"

        Cldr.LY ->
            "লিবিয়া"

        Cldr.MA ->
            "মোরক্কো"

        Cldr.MC ->
            "মোনাকো"

        Cldr.MD ->
            "মলডোভা"

        Cldr.ME ->
            "মন্টিনিগ্রো"

        Cldr.MF ->
            "সেন্ট মার্টিন"

        Cldr.MG ->
            "মাদাগাস্কার"

        Cldr.MH ->
            "মার্শাল দ্বীপপুঞ্জ"

        Cldr.MK ->
            "উত্তর ম্যাসেডোনিয়া"

        Cldr.ML ->
            "মালি"

        Cldr.MM ->
            "মায়ানমার (বার্মা)"

        Cldr.MN ->
            "মঙ্গোলিয়া"

        Cldr.MO ->
            "ম্যাকাও এসএআর চীন"

        Cldr.MP ->
            "উত্তরাঞ্চলীয় মারিয়ানা দ্বীপপুঞ্জ"

        Cldr.MQ ->
            "মার্টিনিক"

        Cldr.MR ->
            "মরিতানিয়া"

        Cldr.MS ->
            "মন্টসেরাট"

        Cldr.MT ->
            "মাল্টা"

        Cldr.MU ->
            "মরিশাস"

        Cldr.MV ->
            "মালদ্বীপ"

        Cldr.MW ->
            "মালাউই"

        Cldr.MX ->
            "মেক্সিকো"

        Cldr.MY ->
            "মালয়েশিয়া"

        Cldr.MZ ->
            "মোজাম্বিক"

        Cldr.NA ->
            "নামিবিয়া"

        Cldr.NC ->
            "নিউ ক্যালেডোনিয়া"

        Cldr.NE ->
            "নাইজার"

        Cldr.NF ->
            "নরফোক দ্বীপ"

        Cldr.NG ->
            "নাইজেরিয়া"

        Cldr.NI ->
            "নিকারাগুয়া"

        Cldr.NL ->
            "নেদারল্যান্ডস"

        Cldr.NO ->
            "নরওয়ে"

        Cldr.NP ->
            "নেপাল"

        Cldr.NR ->
            "নাউরু"

        Cldr.NU ->
            "নিউয়ে"

        Cldr.NZ ->
            "নিউজিল্যান্ড"

        Cldr.OM ->
            "ওমান"

        Cldr.PA ->
            "পানামা"

        Cldr.PE ->
            "পেরু"

        Cldr.PF ->
            "ফরাসী পলিনেশিয়া"

        Cldr.PG ->
            "পাপুয়া নিউ গিনি"

        Cldr.PH ->
            "ফিলিপাইন"

        Cldr.PK ->
            "পাকিস্তান"

        Cldr.PL ->
            "পোল্যান্ড"

        Cldr.PM ->
            "সেন্ট পিয়ের ও মিকুয়েলন"

        Cldr.PN ->
            "পিটকেয়ার্ন দ্বীপপুঞ্জ"

        Cldr.PR ->
            "পুয়ের্তো রিকো"

        Cldr.PS ->
            "প্যালেস্টাইন ভূখণ্ড"

        Cldr.PT ->
            "পর্তুগাল"

        Cldr.PW ->
            "পালাউ"

        Cldr.PY ->
            "প্যারাগুয়ে"

        Cldr.QA ->
            "কাতার"

        Cldr.RE ->
            "রিইউনিয়ন"

        Cldr.RO ->
            "রোমানিয়া"

        Cldr.RS ->
            "সার্বিয়া"

        Cldr.RU ->
            "রাশিয়া"

        Cldr.RW ->
            "রুয়ান্ডা"

        Cldr.SA ->
            "সৌদি আরব"

        Cldr.SB ->
            "সলোমন দ্বীপপুঞ্জ"

        Cldr.SC ->
            "সিসিলি"

        Cldr.SD ->
            "সুদান"

        Cldr.SE ->
            "সুইডেন"

        Cldr.SG ->
            "সিঙ্গাপুর"

        Cldr.SH ->
            "সেন্ট হেলেনা"

        Cldr.SI ->
            "স্লোভানিয়া"

        Cldr.SJ ->
            "স্বালবার্ড ও জান মেয়েন"

        Cldr.SK ->
            "স্লোভাকিয়া"

        Cldr.SL ->
            "সিয়েরা লিওন"

        Cldr.SM ->
            "সান মারিনো"

        Cldr.SN ->
            "সেনেগাল"

        Cldr.SO ->
            "সোমালিয়া"

        Cldr.SR ->
            "সুরিনাম"

        Cldr.SS ->
            "দক্ষিণ সুদান"

        Cldr.ST ->
            "সাওটোমা ও প্রিন্সিপি"

        Cldr.SV ->
            "এল সালভেদর"

        Cldr.SX ->
            "সিন্ট মার্টেন"

        Cldr.SY ->
            "সিরিয়া"

        Cldr.SZ ->
            "ইসওয়াতিনি"

        Cldr.TC ->
            "তুর্কস ও কাইকোস দ্বীপপুঞ্জ"

        Cldr.TD ->
            "চাদ"

        Cldr.TF ->
            "ফরাসী দক্ষিণাঞ্চল"

        Cldr.TG ->
            "টোগো"

        Cldr.TH ->
            "থাইল্যান্ড"

        Cldr.TJ ->
            "তাজিকিস্তান"

        Cldr.TK ->
            "টোকেলাউ"

        Cldr.TL ->
            "তিমুর-লেস্তে"

        Cldr.TM ->
            "তুর্কমেনিস্তান"

        Cldr.TN ->
            "তিউনিসিয়া"

        Cldr.TO ->
            "টোঙ্গা"

        Cldr.TR ->
            "তুরস্ক"

        Cldr.TT ->
            "ত্রিনিনাদ ও টোব্যাগো"

        Cldr.TV ->
            "টুভালু"

        Cldr.TW ->
            "তাইওয়ান"

        Cldr.TZ ->
            "তাঞ্জানিয়া"

        Cldr.UA ->
            "ইউক্রেন"

        Cldr.UG ->
            "উগান্ডা"

        Cldr.UM ->
            "যুক্তরাষ্ট্রের পার্শ্ববর্তী দ্বীপপুঞ্জ"

        Cldr.US ->
            "মার্কিন যুক্তরাষ্ট্র"

        Cldr.UY ->
            "উরুগুয়ে"

        Cldr.UZ ->
            "উজবেকিস্তান"

        Cldr.VA ->
            "ভ্যাটিকান সিটি"

        Cldr.VC ->
            "সেন্ট ভিনসেন্ট ও গ্রেনাডিনস"

        Cldr.VE ->
            "ভেনেজুয়েলা"

        Cldr.VG ->
            "ব্রিটিশ ভার্জিন দ্বীপপুঞ্জ"

        Cldr.VI ->
            "মার্কিন যুক্তরাষ্ট্রীয় ভার্জিন দ্বীপপুঞ্জ"

        Cldr.VN ->
            "ভিয়েতনাম"

        Cldr.VU ->
            "ভানুয়াটু"

        Cldr.WF ->
            "ওয়ালিস ও ফুটুনা"

        Cldr.WS ->
            "সামোয়া"

        Cldr.XK ->
            "কসোভো"

        Cldr.YE ->
            "ইয়েমেন"

        Cldr.YT ->
            "মায়োত্তে"

        Cldr.ZA ->
            "দক্ষিণ আফ্রিকা"

        Cldr.ZM ->
            "জাম্বিয়া"

        Cldr.ZW ->
            "জিম্বাবোয়ে"