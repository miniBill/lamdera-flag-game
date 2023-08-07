module Cldr.Amharic exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Amharic.

    AD አንዶራ
    AE የተባበሩት ዓረብ ኤምሬትስ
    AF አፍጋኒስታን
    AG አንቲጓ እና ባሩዳ
    AI አንጉይላ
    AL አልባኒያ
    AM አርሜኒያ
    AO አንጐላ
    AQ አንታርክቲካ
    AR አርጀንቲና
    AS የአሜሪካ ሳሞአ
    AT ኦስትሪያ
    AU አውስትራልያ
    AW አሩባ
    AX የአላንድ ደሴቶች
    AZ አዘርባጃን
    BA ቦስኒያ እና ሄርዞጎቪኒያ
    BB ባርቤዶስ
    BD ባንግላዲሽ
    BE ቤልጄም
    BF ቡርኪና ፋሶ
    BG ቡልጌሪያ
    BH ባህሬን
    BI ብሩንዲ
    BJ ቤኒን
    BL ቅዱስ በርቴሎሜ
    BM ቤርሙዳ
    BN ብሩኒ
    BO ቦሊቪያ
    BQ የካሪቢያን ኔዘርላንድስ
    BR ብራዚል
    BS ባሃማስ
    BT ቡህታን
    BV ቡቬት ደሴት
    BW ቦትስዋና
    BY ቤላሩስ
    BZ በሊዝ
    CA ካናዳ
    CC ኮኮስ(ኬሊንግ) ደሴቶች
    CD ኮንጎ (የዲሞክራቲክ ሪፐብሊክ ኮንጎ)
    CF ማዕከላዊ አፍሪካ ሪፑብሊክ
    CG ኮንጎ (ሪፑብሊክ)
    CH ስዊዘርላንድ
    CI ኮት ዲቯር
    CK ኩክ ደሴቶች
    CL ቺሊ
    CM ካሜሩን
    CN ቻይና
    CO ኮሎምቢያ
    CR ኮስታሪካ
    CU ኩባ
    CV ኬፕ ቬርዴ
    CW ኩራሳዎ
    CX ክሪስማስ ደሴት
    CY ሳይፕረስ
    CZ ቼክ ሪፑብሊክ
    DE ጀርመን
    DJ ጂቡቲ
    DK ዴንማርክ
    DM ዶሚኒካ
    DO ዶመኒካን ሪፑብሊክ
    DZ አልጄሪያ
    EC ኢኳዶር
    EE ኤስቶኒያ
    EG ግብጽ
    EH ምዕራባዊ ሳህራ
    ER ኤርትራ
    ES ስፔን
    ET ኢትዮጵያ
    FI ፊንላንድ
    FJ ፊጂ
    FK የፎክላንድ ደሴቶች
    FM ሚክሮኔዢያ
    FO የፋሮ ደሴቶች
    FR ፈረንሳይ
    GA ጋቦን
    GB ዩናይትድ ኪንግደም
    GD ግሬናዳ
    GE ጆርጂያ
    GF የፈረንሳይ ጉዊአና
    GG ጉርነሲ
    GH ጋና
    GI ጂብራልተር
    GL ግሪንላንድ
    GM ጋምቢያ
    GN ጊኒ
    GP ጉዋደሉፕ
    GQ ኢኳቶሪያል ጊኒ
    GR ግሪክ
    GS ደቡብ ጆርጂያ እና የደቡብ ሳንድዊች ደሴቶች
    GT ጉዋቲማላ
    GU ጉዋም
    GW ጊኒ ቢሳኦ
    GY ጉያና
    HK ሆንግ ኮንግ
    HM ኽርድ ደሴቶችና ማክዶናልድ ደሴቶች
    HN ሆንዱራስ
    HR ክሮኤሽያ
    HT ሀይቲ
    HU ሀንጋሪ
    ID ኢንዶኔዢያ
    IE አየርላንድ
    IL እስራኤል
    IM አይል ኦፍ ማን
    IN ህንድ
    IO የብሪታኒያ ህንድ ውቂያኖስ ግዛት
    IQ ኢራቅ
    IR ኢራን
    IS አይስላንድ
    IT ጣሊያን
    JE ጀርሲ
    JM ጃማይካ
    JO ጆርዳን
    JP ጃፓን
    KE ኬንያ
    KG ኪርጊስታን
    KH ካምቦዲያ
    KI ኪሪባቲ
    KM ኮሞሮስ
    KN ቅዱስ ኪትስ እና ኔቪስ
    KP ሰሜን ኮሪያ
    KR ደቡብ ኮሪያ
    KW ክዌት
    KY ካይማን ደሴቶች
    KZ ካዛኪስታን
    LA ላኦስ
    LB ሊባኖስ
    LC ሴንት ሉቺያ
    LI ሊችተንስታይን
    LK ሲሪላንካ
    LR ላይቤሪያ
    LS ሌሶቶ
    LT ሊቱዌኒያ
    LU ሉክሰምበርግ
    LV ላትቪያ
    LY ሊቢያ
    MA ሞሮኮ
    MC ሞናኮ
    MD ሞልዶቫ
    ME ሞንተኔግሮ
    MF ሴንት ማርቲን
    MG ማዳጋስካር
    MH ማርሻል አይላንድ
    MK ሰሜን መቄዶንያ
    ML ማሊ
    MM ማይናማር(በርማ)
    MN ሞንጎሊያ
    MO ማካኦ
    MP የሰሜናዊ ማሪያና ደሴቶች
    MQ ማርቲኒክ
    MR ሞሪቴኒያ
    MS ሞንትሴራት
    MT ማልታ
    MU ሞሪሸስ
    MV ማልዲቭስ
    MW ማላዊ
    MX ሜክሲኮ
    MY ማሌዢያ
    MZ ሞዛምቢክ
    NA ናሚቢያ
    NC ኒው ካሌዶኒያ
    NE ኒጀር
    NF ኖርፎልክ ደሴት
    NG ናይጄሪያ
    NI ኒካራጓ
    NL ኔዘርላንድ
    NO ኖርዌይ
    NP ኔፓል
    NR ናኡሩ
    NU ኒኡይ
    NZ ኒው ዚላንድ
    OM ኦማን
    PA ፓናማ
    PE ፔሩ
    PF የፈረንሳይ ፖሊኔዢያ
    PG ፓፑዋ ኒው ጊኒ
    PH ፊሊፒንስ
    PK ፓኪስታን
    PL ፖላንድ
    PM ቅዱስ ፒዬር እና ሚኩኤሎን
    PN ፒትካኢርን ደሴቶች
    PR ፖርታ ሪኮ
    PS ፍልስጥኤም
    PT ፖርቱጋል
    PW ፓላው
    PY ፓራጓይ
    QA ኳታር
    RE ሪዩኒየን
    RO ሮሜኒያ
    RS ሰርብያ
    RU ሩስያ
    RW ሩዋንዳ
    SA ሳውድአረቢያ
    SB ሰሎሞን ደሴት
    SC ሲሼልስ
    SD ሱዳን
    SE ስዊድን
    SG ሲንጋፖር
    SH ሴንት ሄለና
    SI ስሎቬኒያ
    SJ ስቫልባርድ እና ጃን ማየን
    SK ስሎቫኪያ
    SL ሴራሊዮን
    SM ሳን ማሪኖ
    SN ሴኔጋል
    SO ሱማሌ
    SR ሱሪናም
    SS ደቡብ ሱዳን
    ST ሳኦ ቶሜ እና ፕሪንሲፔ
    SV ኤል ሳልቫዶር
    SX ሲንት ማርተን
    SY ሲሪያ
    SZ ሱዋዚላንድ
    TC የቱርኮችና የካኢኮስ ደሴቶች
    TD ቻድ
    TF የፈረንሳይ ደቡባዊ ግዛቶች
    TG ቶጐ
    TH ታይላንድ
    TJ ታጃኪስታን
    TK ቶክላው
    TL ምስራቅ ቲሞር
    TM ቱርክሜኒስታን
    TN ቱኒዚያ
    TO ቶንጋ
    TR ቱርክ
    TT ትሪናዳድ እና ቶቤጎ
    TV ቱቫሉ
    TW ታይዋን
    TZ ታንዛኒያ
    UA ዩክሬን
    UG ዩጋንዳ
    UM የዩ ኤስ ጠረፍ ላይ ያሉ ደሴቶች
    US ዩናይትድ ስቴትስ
    UY ኡራጓይ
    UZ ኡዝቤኪስታን
    VA ቫቲካን ከተማ
    VC ቅዱስ ቪንሴንት እና ግሬናዲንስ
    VE ቬንዙዌላ
    VG የእንግሊዝ ቨርጂን ደሴቶች
    VI የአሜሪካ ቨርጂን ደሴቶች
    VN ቬትናም
    VU ቫኑአቱ
    WF ዋሊስ እና ፉቱና ደሴቶች
    WS ሳሞአ
    XK ኮሶቮ
    YE የመን
    YT ሜይኦቴ
    ZA ደቡብ አፍሪካ
    ZM ዛምቢያ
    ZW ዚምቧቤ
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "አንዶራ"

        Cldr.AE ->
            "የተባበሩት ዓረብ ኤምሬትስ"

        Cldr.AF ->
            "አፍጋኒስታን"

        Cldr.AG ->
            "አንቲጓ እና ባሩዳ"

        Cldr.AI ->
            "አንጉይላ"

        Cldr.AL ->
            "አልባኒያ"

        Cldr.AM ->
            "አርሜኒያ"

        Cldr.AO ->
            "አንጐላ"

        Cldr.AQ ->
            "አንታርክቲካ"

        Cldr.AR ->
            "አርጀንቲና"

        Cldr.AS ->
            "የአሜሪካ ሳሞአ"

        Cldr.AT ->
            "ኦስትሪያ"

        Cldr.AU ->
            "አውስትራልያ"

        Cldr.AW ->
            "አሩባ"

        Cldr.AX ->
            "የአላንድ ደሴቶች"

        Cldr.AZ ->
            "አዘርባጃን"

        Cldr.BA ->
            "ቦስኒያ እና ሄርዞጎቪኒያ"

        Cldr.BB ->
            "ባርቤዶስ"

        Cldr.BD ->
            "ባንግላዲሽ"

        Cldr.BE ->
            "ቤልጄም"

        Cldr.BF ->
            "ቡርኪና ፋሶ"

        Cldr.BG ->
            "ቡልጌሪያ"

        Cldr.BH ->
            "ባህሬን"

        Cldr.BI ->
            "ብሩንዲ"

        Cldr.BJ ->
            "ቤኒን"

        Cldr.BL ->
            "ቅዱስ በርቴሎሜ"

        Cldr.BM ->
            "ቤርሙዳ"

        Cldr.BN ->
            "ብሩኒ"

        Cldr.BO ->
            "ቦሊቪያ"

        Cldr.BQ ->
            "የካሪቢያን ኔዘርላንድስ"

        Cldr.BR ->
            "ብራዚል"

        Cldr.BS ->
            "ባሃማስ"

        Cldr.BT ->
            "ቡህታን"

        Cldr.BV ->
            "ቡቬት ደሴት"

        Cldr.BW ->
            "ቦትስዋና"

        Cldr.BY ->
            "ቤላሩስ"

        Cldr.BZ ->
            "በሊዝ"

        Cldr.CA ->
            "ካናዳ"

        Cldr.CC ->
            "ኮኮስ(ኬሊንግ) ደሴቶች"

        Cldr.CD ->
            "ኮንጎ (የዲሞክራቲክ ሪፐብሊክ ኮንጎ)"

        Cldr.CF ->
            "ማዕከላዊ አፍሪካ ሪፑብሊክ"

        Cldr.CG ->
            "ኮንጎ (ሪፑብሊክ)"

        Cldr.CH ->
            "ስዊዘርላንድ"

        Cldr.CI ->
            "ኮት ዲቯር"

        Cldr.CK ->
            "ኩክ ደሴቶች"

        Cldr.CL ->
            "ቺሊ"

        Cldr.CM ->
            "ካሜሩን"

        Cldr.CN ->
            "ቻይና"

        Cldr.CO ->
            "ኮሎምቢያ"

        Cldr.CR ->
            "ኮስታሪካ"

        Cldr.CU ->
            "ኩባ"

        Cldr.CV ->
            "ኬፕ ቬርዴ"

        Cldr.CW ->
            "ኩራሳዎ"

        Cldr.CX ->
            "ክሪስማስ ደሴት"

        Cldr.CY ->
            "ሳይፕረስ"

        Cldr.CZ ->
            "ቼክ ሪፑብሊክ"

        Cldr.DE ->
            "ጀርመን"

        Cldr.DJ ->
            "ጂቡቲ"

        Cldr.DK ->
            "ዴንማርክ"

        Cldr.DM ->
            "ዶሚኒካ"

        Cldr.DO ->
            "ዶመኒካን ሪፑብሊክ"

        Cldr.DZ ->
            "አልጄሪያ"

        Cldr.EC ->
            "ኢኳዶር"

        Cldr.EE ->
            "ኤስቶኒያ"

        Cldr.EG ->
            "ግብጽ"

        Cldr.EH ->
            "ምዕራባዊ ሳህራ"

        Cldr.ER ->
            "ኤርትራ"

        Cldr.ES ->
            "ስፔን"

        Cldr.ET ->
            "ኢትዮጵያ"

        Cldr.FI ->
            "ፊንላንድ"

        Cldr.FJ ->
            "ፊጂ"

        Cldr.FK ->
            "የፎክላንድ ደሴቶች"

        Cldr.FM ->
            "ሚክሮኔዢያ"

        Cldr.FO ->
            "የፋሮ ደሴቶች"

        Cldr.FR ->
            "ፈረንሳይ"

        Cldr.GA ->
            "ጋቦን"

        Cldr.GB ->
            "ዩናይትድ ኪንግደም"

        Cldr.GD ->
            "ግሬናዳ"

        Cldr.GE ->
            "ጆርጂያ"

        Cldr.GF ->
            "የፈረንሳይ ጉዊአና"

        Cldr.GG ->
            "ጉርነሲ"

        Cldr.GH ->
            "ጋና"

        Cldr.GI ->
            "ጂብራልተር"

        Cldr.GL ->
            "ግሪንላንድ"

        Cldr.GM ->
            "ጋምቢያ"

        Cldr.GN ->
            "ጊኒ"

        Cldr.GP ->
            "ጉዋደሉፕ"

        Cldr.GQ ->
            "ኢኳቶሪያል ጊኒ"

        Cldr.GR ->
            "ግሪክ"

        Cldr.GS ->
            "ደቡብ ጆርጂያ እና የደቡብ ሳንድዊች ደሴቶች"

        Cldr.GT_ ->
            "ጉዋቲማላ"

        Cldr.GU ->
            "ጉዋም"

        Cldr.GW ->
            "ጊኒ ቢሳኦ"

        Cldr.GY ->
            "ጉያና"

        Cldr.HK ->
            "ሆንግ ኮንግ"

        Cldr.HM ->
            "ኽርድ ደሴቶችና ማክዶናልድ ደሴቶች"

        Cldr.HN ->
            "ሆንዱራስ"

        Cldr.HR ->
            "ክሮኤሽያ"

        Cldr.HT ->
            "ሀይቲ"

        Cldr.HU ->
            "ሀንጋሪ"

        Cldr.ID ->
            "ኢንዶኔዢያ"

        Cldr.IE ->
            "አየርላንድ"

        Cldr.IL ->
            "እስራኤል"

        Cldr.IM ->
            "አይል ኦፍ ማን"

        Cldr.IN ->
            "ህንድ"

        Cldr.IO ->
            "የብሪታኒያ ህንድ ውቂያኖስ ግዛት"

        Cldr.IQ ->
            "ኢራቅ"

        Cldr.IR ->
            "ኢራን"

        Cldr.IS ->
            "አይስላንድ"

        Cldr.IT ->
            "ጣሊያን"

        Cldr.JE ->
            "ጀርሲ"

        Cldr.JM ->
            "ጃማይካ"

        Cldr.JO ->
            "ጆርዳን"

        Cldr.JP ->
            "ጃፓን"

        Cldr.KE ->
            "ኬንያ"

        Cldr.KG ->
            "ኪርጊስታን"

        Cldr.KH ->
            "ካምቦዲያ"

        Cldr.KI ->
            "ኪሪባቲ"

        Cldr.KM ->
            "ኮሞሮስ"

        Cldr.KN ->
            "ቅዱስ ኪትስ እና ኔቪስ"

        Cldr.KP ->
            "ሰሜን ኮሪያ"

        Cldr.KR ->
            "ደቡብ ኮሪያ"

        Cldr.KW ->
            "ክዌት"

        Cldr.KY ->
            "ካይማን ደሴቶች"

        Cldr.KZ ->
            "ካዛኪስታን"

        Cldr.LA ->
            "ላኦስ"

        Cldr.LB ->
            "ሊባኖስ"

        Cldr.LC ->
            "ሴንት ሉቺያ"

        Cldr.LI ->
            "ሊችተንስታይን"

        Cldr.LK ->
            "ሲሪላንካ"

        Cldr.LR ->
            "ላይቤሪያ"

        Cldr.LS ->
            "ሌሶቶ"

        Cldr.LT_ ->
            "ሊቱዌኒያ"

        Cldr.LU ->
            "ሉክሰምበርግ"

        Cldr.LV ->
            "ላትቪያ"

        Cldr.LY ->
            "ሊቢያ"

        Cldr.MA ->
            "ሞሮኮ"

        Cldr.MC ->
            "ሞናኮ"

        Cldr.MD ->
            "ሞልዶቫ"

        Cldr.ME ->
            "ሞንተኔግሮ"

        Cldr.MF ->
            "ሴንት ማርቲን"

        Cldr.MG ->
            "ማዳጋስካር"

        Cldr.MH ->
            "ማርሻል አይላንድ"

        Cldr.MK ->
            "ሰሜን መቄዶንያ"

        Cldr.ML ->
            "ማሊ"

        Cldr.MM ->
            "ማይናማር(በርማ)"

        Cldr.MN ->
            "ሞንጎሊያ"

        Cldr.MO ->
            "ማካኦ"

        Cldr.MP ->
            "የሰሜናዊ ማሪያና ደሴቶች"

        Cldr.MQ ->
            "ማርቲኒክ"

        Cldr.MR ->
            "ሞሪቴኒያ"

        Cldr.MS ->
            "ሞንትሴራት"

        Cldr.MT ->
            "ማልታ"

        Cldr.MU ->
            "ሞሪሸስ"

        Cldr.MV ->
            "ማልዲቭስ"

        Cldr.MW ->
            "ማላዊ"

        Cldr.MX ->
            "ሜክሲኮ"

        Cldr.MY ->
            "ማሌዢያ"

        Cldr.MZ ->
            "ሞዛምቢክ"

        Cldr.NA ->
            "ናሚቢያ"

        Cldr.NC ->
            "ኒው ካሌዶኒያ"

        Cldr.NE ->
            "ኒጀር"

        Cldr.NF ->
            "ኖርፎልክ ደሴት"

        Cldr.NG ->
            "ናይጄሪያ"

        Cldr.NI ->
            "ኒካራጓ"

        Cldr.NL ->
            "ኔዘርላንድ"

        Cldr.NO ->
            "ኖርዌይ"

        Cldr.NP ->
            "ኔፓል"

        Cldr.NR ->
            "ናኡሩ"

        Cldr.NU ->
            "ኒኡይ"

        Cldr.NZ ->
            "ኒው ዚላንድ"

        Cldr.OM ->
            "ኦማን"

        Cldr.PA ->
            "ፓናማ"

        Cldr.PE ->
            "ፔሩ"

        Cldr.PF ->
            "የፈረንሳይ ፖሊኔዢያ"

        Cldr.PG ->
            "ፓፑዋ ኒው ጊኒ"

        Cldr.PH ->
            "ፊሊፒንስ"

        Cldr.PK ->
            "ፓኪስታን"

        Cldr.PL ->
            "ፖላንድ"

        Cldr.PM ->
            "ቅዱስ ፒዬር እና ሚኩኤሎን"

        Cldr.PN ->
            "ፒትካኢርን ደሴቶች"

        Cldr.PR ->
            "ፖርታ ሪኮ"

        Cldr.PS ->
            "ፍልስጥኤም"

        Cldr.PT ->
            "ፖርቱጋል"

        Cldr.PW ->
            "ፓላው"

        Cldr.PY ->
            "ፓራጓይ"

        Cldr.QA ->
            "ኳታር"

        Cldr.RE ->
            "ሪዩኒየን"

        Cldr.RO ->
            "ሮሜኒያ"

        Cldr.RS ->
            "ሰርብያ"

        Cldr.RU ->
            "ሩስያ"

        Cldr.RW ->
            "ሩዋንዳ"

        Cldr.SA ->
            "ሳውድአረቢያ"

        Cldr.SB ->
            "ሰሎሞን ደሴት"

        Cldr.SC ->
            "ሲሼልስ"

        Cldr.SD ->
            "ሱዳን"

        Cldr.SE ->
            "ስዊድን"

        Cldr.SG ->
            "ሲንጋፖር"

        Cldr.SH ->
            "ሴንት ሄለና"

        Cldr.SI ->
            "ስሎቬኒያ"

        Cldr.SJ ->
            "ስቫልባርድ እና ጃን ማየን"

        Cldr.SK ->
            "ስሎቫኪያ"

        Cldr.SL ->
            "ሴራሊዮን"

        Cldr.SM ->
            "ሳን ማሪኖ"

        Cldr.SN ->
            "ሴኔጋል"

        Cldr.SO ->
            "ሱማሌ"

        Cldr.SR ->
            "ሱሪናም"

        Cldr.SS ->
            "ደቡብ ሱዳን"

        Cldr.ST ->
            "ሳኦ ቶሜ እና ፕሪንሲፔ"

        Cldr.SV ->
            "ኤል ሳልቫዶር"

        Cldr.SX ->
            "ሲንት ማርተን"

        Cldr.SY ->
            "ሲሪያ"

        Cldr.SZ ->
            "ሱዋዚላንድ"

        Cldr.TC ->
            "የቱርኮችና የካኢኮስ ደሴቶች"

        Cldr.TD ->
            "ቻድ"

        Cldr.TF ->
            "የፈረንሳይ ደቡባዊ ግዛቶች"

        Cldr.TG ->
            "ቶጐ"

        Cldr.TH ->
            "ታይላንድ"

        Cldr.TJ ->
            "ታጃኪስታን"

        Cldr.TK ->
            "ቶክላው"

        Cldr.TL ->
            "ምስራቅ ቲሞር"

        Cldr.TM ->
            "ቱርክሜኒስታን"

        Cldr.TN ->
            "ቱኒዚያ"

        Cldr.TO ->
            "ቶንጋ"

        Cldr.TR ->
            "ቱርክ"

        Cldr.TT ->
            "ትሪናዳድ እና ቶቤጎ"

        Cldr.TV ->
            "ቱቫሉ"

        Cldr.TW ->
            "ታይዋን"

        Cldr.TZ ->
            "ታንዛኒያ"

        Cldr.UA ->
            "ዩክሬን"

        Cldr.UG ->
            "ዩጋንዳ"

        Cldr.UM ->
            "የዩ ኤስ ጠረፍ ላይ ያሉ ደሴቶች"

        Cldr.US ->
            "ዩናይትድ ስቴትስ"

        Cldr.UY ->
            "ኡራጓይ"

        Cldr.UZ ->
            "ኡዝቤኪስታን"

        Cldr.VA ->
            "ቫቲካን ከተማ"

        Cldr.VC ->
            "ቅዱስ ቪንሴንት እና ግሬናዲንስ"

        Cldr.VE ->
            "ቬንዙዌላ"

        Cldr.VG ->
            "የእንግሊዝ ቨርጂን ደሴቶች"

        Cldr.VI ->
            "የአሜሪካ ቨርጂን ደሴቶች"

        Cldr.VN ->
            "ቬትናም"

        Cldr.VU ->
            "ቫኑአቱ"

        Cldr.WF ->
            "ዋሊስ እና ፉቱና ደሴቶች"

        Cldr.WS ->
            "ሳሞአ"

        Cldr.XK ->
            "ኮሶቮ"

        Cldr.YE ->
            "የመን"

        Cldr.YT ->
            "ሜይኦቴ"

        Cldr.ZA ->
            "ደቡብ አፍሪካ"

        Cldr.ZM ->
            "ዛምቢያ"

        Cldr.ZW ->
            "ዚምቧቤ"