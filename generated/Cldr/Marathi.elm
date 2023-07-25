module Cldr.Marathi exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Marathi.

    AD अँडोरा
    AE संयुक्त अरब अमीरात
    AF अफगाणिस्तान
    AG अँटिग्वा आणि बर्बुडा
    AI अँग्विला
    AL अल्बानिया
    AM अर्मेनिया
    AO अंगोला
    AQ अंटार्क्टिका
    AR अर्जेंटिना
    AS अमेरिकन सामोआ
    AT ऑस्ट्रिया
    AU ऑस्ट्रेलिया
    AW अरुबा
    AX अ‍ॅलँड बेटे
    AZ अझरबैजान
    BA बोस्निया अणि हर्जेगोविना
    BB बार्बाडोस
    BD बांगलादेश
    BE बेल्जियम
    BF बुर्किना फासो
    BG बल्गेरिया
    BH बहारीन
    BI बुरुंडी
    BJ बेनिन
    BL सेंट बार्थेलेमी
    BM बर्मुडा
    BN ब्रुनेई
    BO बोलिव्हिया
    BQ कॅरिबियन नेदरलँड्स
    BR ब्राझिल
    BS बहामाज
    BT भूतान
    BV बोउवेट बेट
    BW बोट्सवाना
    BY बेलारूस
    BZ बेलिझे
    CA कॅनडा
    CC कोकोस (कीलिंग) बेटे
    CD काँगो - किंशासा
    CF केंद्रीय अफ्रिकी प्रजासत्ताक
    CG काँगो - ब्राझाविले
    CH स्वित्झर्लंड
    CI कोत द’ईवोआर
    CK कुक बेटे
    CL चिली
    CM कॅमेरून
    CN चीन
    CO कोलम्बिया
    CR कोस्टा रिका
    CU क्यूबा
    CV केप व्हर्डे
    CW क्युरासाओ
    CX ख्रिसमस बेट
    CY सायप्रस
    CZ झेकिया
    DE जर्मनी
    DJ जिबौटी
    DK डेन्मार्क
    DM डोमिनिका
    DO डोमिनिकन प्रजासत्ताक
    DZ अल्जीरिया
    EC इक्वाडोर
    EE एस्टोनिया
    EG इजिप्त
    EH पश्चिम सहारा
    ER एरिट्रिया
    ES स्पेन
    ET इथिओपिया
    FI फिनलंड
    FJ फिजी
    FK फॉकलंड बेटे
    FM मायक्रोनेशिया
    FO फेरो बेटे
    FR फ्रान्स
    GA गॅबॉन
    GB युनायटेड किंगडम
    GD ग्रेनेडा
    GE जॉर्जिया
    GF फ्रेंच गयाना
    GG ग्वेर्नसे
    GH घाना
    GI जिब्राल्टर
    GL ग्रीनलंड
    GM गाम्बिया
    GN गिनी
    GP ग्वाडेलोउपे
    GQ इक्वेटोरियल गिनी
    GR ग्रीस
    GS दक्षिण जॉर्जिया आणि दक्षिण सँडविच बेटे
    GT ग्वाटेमाला
    GU गुआम
    GW गिनी-बिसाउ
    GY गयाना
    HK हाँगकाँग एसएआर चीन
    HM हर्ड आणि मॅक्डोनाल्ड बेटे
    HN होंडुरास
    HR क्रोएशिया
    HT हैती
    HU हंगेरी
    ID इंडोनेशिया
    IE आयर्लंड
    IL इस्त्राइल
    IM आयल ऑफ मॅन
    IN भारत
    IO ब्रिटिश हिंद महासागर प्रदेश
    IQ इराक
    IR इराण
    IS आइसलँड
    IT इटली
    JE जर्सी
    JM जमैका
    JO जॉर्डन
    JP जपान
    KE केनिया
    KG किरगिझस्तान
    KH कंबोडिया
    KI किरीबाटी
    KM कोमोरोज
    KN सेंट किट्स आणि नेव्हिस
    KP उत्तर कोरिया
    KR दक्षिण कोरिया
    KW कुवेत
    KY केमन बेटे
    KZ कझाकस्तान
    LA लाओस
    LB लेबनॉन
    LC सेंट ल्यूसिया
    LI लिक्टेनस्टाइन
    LK श्रीलंका
    LR लायबेरिया
    LS लेसोथो
    LT लिथुआनिया
    LU लक्झेंबर्ग
    LV लाटव्हिया
    LY लिबिया
    MA मोरोक्को
    MC मोनॅको
    MD मोल्डोव्हा
    ME मोंटेनेग्रो
    MF सेंट मार्टिन
    MG मादागास्कर
    MH मार्शल बेटे
    MK उत्तर मॅसेडोनिया
    ML माली
    MM म्यानमार (बर्मा)
    MN मंगोलिया
    MO मकाओ एसएआर चीन
    MP उत्तरी मारियाना बेटे
    MQ मार्टिनिक
    MR मॉरिटानिया
    MS मॉन्ट्सेराट
    MT माल्टा
    MU मॉरिशस
    MV मालदीव
    MW मलावी
    MX मेक्सिको
    MY मलेशिया
    MZ मोझाम्बिक
    NA नामिबिया
    NC न्यू कॅलेडोनिया
    NE नाइजर
    NF नॉरफॉक बेट
    NG नायजेरिया
    NI निकाराग्वा
    NL नेदरलँड
    NO नॉर्वे
    NP नेपाळ
    NR नाउरू
    NU नीयू
    NZ न्यूझीलंड
    OM ओमान
    PA पनामा
    PE पेरू
    PF फ्रेंच पॉलिनेशिया
    PG पापुआ न्यू गिनी
    PH फिलिपिन्स
    PK पाकिस्तान
    PL पोलंड
    PM सेंट पियरे आणि मिक्वेलोन
    PN पिटकैर्न बेटे
    PR प्युएर्तो रिको
    PS पॅलेस्टिनियन प्रदेश
    PT पोर्तुगाल
    PW पलाऊ
    PY पराग्वे
    QA कतार
    RE रियुनियन
    RO रोमानिया
    RS सर्बिया
    RU रशिया
    RW रवांडा
    SA सौदी अरब
    SB सोलोमन बेटे
    SC सेशेल्स
    SD सुदान
    SE स्वीडन
    SG सिंगापूर
    SH सेंट हेलेना
    SI स्लोव्हेनिया
    SJ स्वालबर्ड आणि जान मायेन
    SK स्लोव्हाकिया
    SL सिएरा लिओन
    SM सॅन मरीनो
    SN सेनेगल
    SO सोमालिया
    SR सुरिनाम
    SS दक्षिण सुदान
    ST साओ टोम आणि प्रिंसिपे
    SV अल साल्वाडोर
    SX सिंट मार्टेन
    SY सीरिया
    SZ इस्वातिनी
    TC टर्क्स आणि कैकोस बेटे
    TD चाड
    TF फ्रेंच दाक्षिणात्य प्रदेश
    TG टोगो
    TH थायलंड
    TJ ताजिकिस्तान
    TK तोकेलाउ
    TL तिमोर-लेस्ते
    TM तुर्कमेनिस्तान
    TN ट्यूनिशिया
    TO टोंगा
    TR तुर्किये
    TT त्रिनिदाद आणि टोबॅगो
    TV टुवालु
    TW तैवान
    TZ टांझानिया
    UA युक्रेन
    UG युगांडा
    UM यू.एस. आउटलाइंग बेटे
    US युनायटेड स्टेट्स
    UY उरुग्वे
    UZ उझबेकिस्तान
    VA व्हॅटिकन सिटी
    VC सेंट व्हिन्सेंट आणि ग्रेनडाइन्स
    VE व्हेनेझुएला
    VG ब्रिटिश व्हर्जिन बेटे
    VI यू.एस. व्हर्जिन बेटे
    VN व्हिएतनाम
    VU वानुआतु
    WF वालिस आणि फ्यूचूना
    WS सामोआ
    XK कोसोव्हो
    YE येमेन
    YT मायोट्टे
    ZA दक्षिण आफ्रिका
    ZM झाम्बिया
    ZW झिम्बाब्वे
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "अँडोरा"

        Cldr.AE ->
            "संयुक्त अरब अमीरात"

        Cldr.AF ->
            "अफगाणिस्तान"

        Cldr.AG ->
            "अँटिग्वा आणि बर्बुडा"

        Cldr.AI ->
            "अँग्विला"

        Cldr.AL ->
            "अल्बानिया"

        Cldr.AM ->
            "अर्मेनिया"

        Cldr.AO ->
            "अंगोला"

        Cldr.AQ ->
            "अंटार्क्टिका"

        Cldr.AR ->
            "अर्जेंटिना"

        Cldr.AS ->
            "अमेरिकन सामोआ"

        Cldr.AT ->
            "ऑस्ट्रिया"

        Cldr.AU ->
            "ऑस्ट्रेलिया"

        Cldr.AW ->
            "अरुबा"

        Cldr.AX ->
            "अ‍ॅलँड बेटे"

        Cldr.AZ ->
            "अझरबैजान"

        Cldr.BA ->
            "बोस्निया अणि हर्जेगोविना"

        Cldr.BB ->
            "बार्बाडोस"

        Cldr.BD ->
            "बांगलादेश"

        Cldr.BE ->
            "बेल्जियम"

        Cldr.BF ->
            "बुर्किना फासो"

        Cldr.BG ->
            "बल्गेरिया"

        Cldr.BH ->
            "बहारीन"

        Cldr.BI ->
            "बुरुंडी"

        Cldr.BJ ->
            "बेनिन"

        Cldr.BL ->
            "सेंट बार्थेलेमी"

        Cldr.BM ->
            "बर्मुडा"

        Cldr.BN ->
            "ब्रुनेई"

        Cldr.BO ->
            "बोलिव्हिया"

        Cldr.BQ ->
            "कॅरिबियन नेदरलँड्स"

        Cldr.BR ->
            "ब्राझिल"

        Cldr.BS ->
            "बहामाज"

        Cldr.BT ->
            "भूतान"

        Cldr.BV ->
            "बोउवेट बेट"

        Cldr.BW ->
            "बोट्सवाना"

        Cldr.BY ->
            "बेलारूस"

        Cldr.BZ ->
            "बेलिझे"

        Cldr.CA ->
            "कॅनडा"

        Cldr.CC ->
            "कोकोस (कीलिंग) बेटे"

        Cldr.CD ->
            "काँगो - किंशासा"

        Cldr.CF ->
            "केंद्रीय अफ्रिकी प्रजासत्ताक"

        Cldr.CG ->
            "काँगो - ब्राझाविले"

        Cldr.CH ->
            "स्वित्झर्लंड"

        Cldr.CI ->
            "कोत द’ईवोआर"

        Cldr.CK ->
            "कुक बेटे"

        Cldr.CL ->
            "चिली"

        Cldr.CM ->
            "कॅमेरून"

        Cldr.CN ->
            "चीन"

        Cldr.CO ->
            "कोलम्बिया"

        Cldr.CR ->
            "कोस्टा रिका"

        Cldr.CU ->
            "क्यूबा"

        Cldr.CV ->
            "केप व्हर्डे"

        Cldr.CW ->
            "क्युरासाओ"

        Cldr.CX ->
            "ख्रिसमस बेट"

        Cldr.CY ->
            "सायप्रस"

        Cldr.CZ ->
            "झेकिया"

        Cldr.DE ->
            "जर्मनी"

        Cldr.DJ ->
            "जिबौटी"

        Cldr.DK ->
            "डेन्मार्क"

        Cldr.DM ->
            "डोमिनिका"

        Cldr.DO ->
            "डोमिनिकन प्रजासत्ताक"

        Cldr.DZ ->
            "अल्जीरिया"

        Cldr.EC ->
            "इक्वाडोर"

        Cldr.EE ->
            "एस्टोनिया"

        Cldr.EG ->
            "इजिप्त"

        Cldr.EH ->
            "पश्चिम सहारा"

        Cldr.ER ->
            "एरिट्रिया"

        Cldr.ES ->
            "स्पेन"

        Cldr.ET ->
            "इथिओपिया"

        Cldr.FI ->
            "फिनलंड"

        Cldr.FJ ->
            "फिजी"

        Cldr.FK ->
            "फॉकलंड बेटे"

        Cldr.FM ->
            "मायक्रोनेशिया"

        Cldr.FO ->
            "फेरो बेटे"

        Cldr.FR ->
            "फ्रान्स"

        Cldr.GA ->
            "गॅबॉन"

        Cldr.GB ->
            "युनायटेड किंगडम"

        Cldr.GD ->
            "ग्रेनेडा"

        Cldr.GE ->
            "जॉर्जिया"

        Cldr.GF ->
            "फ्रेंच गयाना"

        Cldr.GG ->
            "ग्वेर्नसे"

        Cldr.GH ->
            "घाना"

        Cldr.GI ->
            "जिब्राल्टर"

        Cldr.GL ->
            "ग्रीनलंड"

        Cldr.GM ->
            "गाम्बिया"

        Cldr.GN ->
            "गिनी"

        Cldr.GP ->
            "ग्वाडेलोउपे"

        Cldr.GQ ->
            "इक्वेटोरियल गिनी"

        Cldr.GR ->
            "ग्रीस"

        Cldr.GS ->
            "दक्षिण जॉर्जिया आणि दक्षिण सँडविच बेटे"

        Cldr.GT_ ->
            "ग्वाटेमाला"

        Cldr.GU ->
            "गुआम"

        Cldr.GW ->
            "गिनी-बिसाउ"

        Cldr.GY ->
            "गयाना"

        Cldr.HK ->
            "हाँगकाँग एसएआर चीन"

        Cldr.HM ->
            "हर्ड आणि मॅक्डोनाल्ड बेटे"

        Cldr.HN ->
            "होंडुरास"

        Cldr.HR ->
            "क्रोएशिया"

        Cldr.HT ->
            "हैती"

        Cldr.HU ->
            "हंगेरी"

        Cldr.ID ->
            "इंडोनेशिया"

        Cldr.IE ->
            "आयर्लंड"

        Cldr.IL ->
            "इस्त्राइल"

        Cldr.IM ->
            "आयल ऑफ मॅन"

        Cldr.IN ->
            "भारत"

        Cldr.IO ->
            "ब्रिटिश हिंद महासागर प्रदेश"

        Cldr.IQ ->
            "इराक"

        Cldr.IR ->
            "इराण"

        Cldr.IS ->
            "आइसलँड"

        Cldr.IT ->
            "इटली"

        Cldr.JE ->
            "जर्सी"

        Cldr.JM ->
            "जमैका"

        Cldr.JO ->
            "जॉर्डन"

        Cldr.JP ->
            "जपान"

        Cldr.KE ->
            "केनिया"

        Cldr.KG ->
            "किरगिझस्तान"

        Cldr.KH ->
            "कंबोडिया"

        Cldr.KI ->
            "किरीबाटी"

        Cldr.KM ->
            "कोमोरोज"

        Cldr.KN ->
            "सेंट किट्स आणि नेव्हिस"

        Cldr.KP ->
            "उत्तर कोरिया"

        Cldr.KR ->
            "दक्षिण कोरिया"

        Cldr.KW ->
            "कुवेत"

        Cldr.KY ->
            "केमन बेटे"

        Cldr.KZ ->
            "कझाकस्तान"

        Cldr.LA ->
            "लाओस"

        Cldr.LB ->
            "लेबनॉन"

        Cldr.LC ->
            "सेंट ल्यूसिया"

        Cldr.LI ->
            "लिक्टेनस्टाइन"

        Cldr.LK ->
            "श्रीलंका"

        Cldr.LR ->
            "लायबेरिया"

        Cldr.LS ->
            "लेसोथो"

        Cldr.LT_ ->
            "लिथुआनिया"

        Cldr.LU ->
            "लक्झेंबर्ग"

        Cldr.LV ->
            "लाटव्हिया"

        Cldr.LY ->
            "लिबिया"

        Cldr.MA ->
            "मोरोक्को"

        Cldr.MC ->
            "मोनॅको"

        Cldr.MD ->
            "मोल्डोव्हा"

        Cldr.ME ->
            "मोंटेनेग्रो"

        Cldr.MF ->
            "सेंट मार्टिन"

        Cldr.MG ->
            "मादागास्कर"

        Cldr.MH ->
            "मार्शल बेटे"

        Cldr.MK ->
            "उत्तर मॅसेडोनिया"

        Cldr.ML ->
            "माली"

        Cldr.MM ->
            "म्यानमार (बर्मा)"

        Cldr.MN ->
            "मंगोलिया"

        Cldr.MO ->
            "मकाओ एसएआर चीन"

        Cldr.MP ->
            "उत्तरी मारियाना बेटे"

        Cldr.MQ ->
            "मार्टिनिक"

        Cldr.MR ->
            "मॉरिटानिया"

        Cldr.MS ->
            "मॉन्ट्सेराट"

        Cldr.MT ->
            "माल्टा"

        Cldr.MU ->
            "मॉरिशस"

        Cldr.MV ->
            "मालदीव"

        Cldr.MW ->
            "मलावी"

        Cldr.MX ->
            "मेक्सिको"

        Cldr.MY ->
            "मलेशिया"

        Cldr.MZ ->
            "मोझाम्बिक"

        Cldr.NA ->
            "नामिबिया"

        Cldr.NC ->
            "न्यू कॅलेडोनिया"

        Cldr.NE ->
            "नाइजर"

        Cldr.NF ->
            "नॉरफॉक बेट"

        Cldr.NG ->
            "नायजेरिया"

        Cldr.NI ->
            "निकाराग्वा"

        Cldr.NL ->
            "नेदरलँड"

        Cldr.NO ->
            "नॉर्वे"

        Cldr.NP ->
            "नेपाळ"

        Cldr.NR ->
            "नाउरू"

        Cldr.NU ->
            "नीयू"

        Cldr.NZ ->
            "न्यूझीलंड"

        Cldr.OM ->
            "ओमान"

        Cldr.PA ->
            "पनामा"

        Cldr.PE ->
            "पेरू"

        Cldr.PF ->
            "फ्रेंच पॉलिनेशिया"

        Cldr.PG ->
            "पापुआ न्यू गिनी"

        Cldr.PH ->
            "फिलिपिन्स"

        Cldr.PK ->
            "पाकिस्तान"

        Cldr.PL ->
            "पोलंड"

        Cldr.PM ->
            "सेंट पियरे आणि मिक्वेलोन"

        Cldr.PN ->
            "पिटकैर्न बेटे"

        Cldr.PR ->
            "प्युएर्तो रिको"

        Cldr.PS ->
            "पॅलेस्टिनियन प्रदेश"

        Cldr.PT ->
            "पोर्तुगाल"

        Cldr.PW ->
            "पलाऊ"

        Cldr.PY ->
            "पराग्वे"

        Cldr.QA ->
            "कतार"

        Cldr.RE ->
            "रियुनियन"

        Cldr.RO ->
            "रोमानिया"

        Cldr.RS ->
            "सर्बिया"

        Cldr.RU ->
            "रशिया"

        Cldr.RW ->
            "रवांडा"

        Cldr.SA ->
            "सौदी अरब"

        Cldr.SB ->
            "सोलोमन बेटे"

        Cldr.SC ->
            "सेशेल्स"

        Cldr.SD ->
            "सुदान"

        Cldr.SE ->
            "स्वीडन"

        Cldr.SG ->
            "सिंगापूर"

        Cldr.SH ->
            "सेंट हेलेना"

        Cldr.SI ->
            "स्लोव्हेनिया"

        Cldr.SJ ->
            "स्वालबर्ड आणि जान मायेन"

        Cldr.SK ->
            "स्लोव्हाकिया"

        Cldr.SL ->
            "सिएरा लिओन"

        Cldr.SM ->
            "सॅन मरीनो"

        Cldr.SN ->
            "सेनेगल"

        Cldr.SO ->
            "सोमालिया"

        Cldr.SR ->
            "सुरिनाम"

        Cldr.SS ->
            "दक्षिण सुदान"

        Cldr.ST ->
            "साओ टोम आणि प्रिंसिपे"

        Cldr.SV ->
            "अल साल्वाडोर"

        Cldr.SX ->
            "सिंट मार्टेन"

        Cldr.SY ->
            "सीरिया"

        Cldr.SZ ->
            "इस्वातिनी"

        Cldr.TC ->
            "टर्क्स आणि कैकोस बेटे"

        Cldr.TD ->
            "चाड"

        Cldr.TF ->
            "फ्रेंच दाक्षिणात्य प्रदेश"

        Cldr.TG ->
            "टोगो"

        Cldr.TH ->
            "थायलंड"

        Cldr.TJ ->
            "ताजिकिस्तान"

        Cldr.TK ->
            "तोकेलाउ"

        Cldr.TL ->
            "तिमोर-लेस्ते"

        Cldr.TM ->
            "तुर्कमेनिस्तान"

        Cldr.TN ->
            "ट्यूनिशिया"

        Cldr.TO ->
            "टोंगा"

        Cldr.TR ->
            "तुर्किये"

        Cldr.TT ->
            "त्रिनिदाद आणि टोबॅगो"

        Cldr.TV ->
            "टुवालु"

        Cldr.TW ->
            "तैवान"

        Cldr.TZ ->
            "टांझानिया"

        Cldr.UA ->
            "युक्रेन"

        Cldr.UG ->
            "युगांडा"

        Cldr.UM ->
            "यू.एस. आउटलाइंग बेटे"

        Cldr.US ->
            "युनायटेड स्टेट्स"

        Cldr.UY ->
            "उरुग्वे"

        Cldr.UZ ->
            "उझबेकिस्तान"

        Cldr.VA ->
            "व्हॅटिकन सिटी"

        Cldr.VC ->
            "सेंट व्हिन्सेंट आणि ग्रेनडाइन्स"

        Cldr.VE ->
            "व्हेनेझुएला"

        Cldr.VG ->
            "ब्रिटिश व्हर्जिन बेटे"

        Cldr.VI ->
            "यू.एस. व्हर्जिन बेटे"

        Cldr.VN ->
            "व्हिएतनाम"

        Cldr.VU ->
            "वानुआतु"

        Cldr.WF ->
            "वालिस आणि फ्यूचूना"

        Cldr.WS ->
            "सामोआ"

        Cldr.XK ->
            "कोसोव्हो"

        Cldr.YE ->
            "येमेन"

        Cldr.YT ->
            "मायोट्टे"

        Cldr.ZA ->
            "दक्षिण आफ्रिका"

        Cldr.ZM ->
            "झाम्बिया"

        Cldr.ZW ->
            "झिम्बाब्वे"