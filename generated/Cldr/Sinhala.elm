module Cldr.Sinhala exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Sinhala.

    AD ඇන්ඩෝරාව
    AE එක්සත් අරාබි එමිර් රාජ්‍යය
    AF ඇෆ්ගනිස්ථානය
    AG ඇන්ටිගුවා සහ බාබියුඩාව
    AI ඇන්ගුයිලාව
    AL ඇල්බේනියාව
    AM ආර්මේනියාව
    AO ඇන්ගෝලාව
    AQ ඇන්ටාක්ටිකාව
    AR ආර්ජෙන්ටිනාව
    AS ඇමරිකානු සැමෝවා
    AT ඔස්ට්‍රියාව
    AU ඕස්ට්‍රේලියාව
    AW අරූබා
    AX ඕලන්ඩ් දූපත්
    AZ අසර්බයිජානය
    BA බොස්නියාව සහ හර්සගොවීනාව
    BB බාබඩෝස්
    BD බංග්ලාදේශය
    BE බෙල්ජියම
    BF බර්කිනා ෆාසෝ
    BG බල්ගේරියාව
    BH බහරේන්
    BI බුරුන්දි
    BJ බෙනින්
    BL ශාන්ත බර්තලෙමි
    BM බර්මියුඩා
    BN බෲනායි
    BO බොලීවියාව
    BQ කැරිබියානු නෙදර්ලන්තය
    BR බ්‍රසීලය
    BS බහමාස්
    BT භූතානය
    BV බුවට් දුපත්
    BW බොට්ස්වානා
    BY බෙලරුස්
    BZ බෙලීස්
    CA කැනඩාව
    CC කොකෝස් දූපත්
    CD කොංගෝව (ඩීආර්සී)
    CF මධ්‍යම අප්‍රිකානු ජනරජය
    CG කොංගෝ (ජනරජය)
    CH ස්විස්ටර්ලන්තය
    CI කෝට් දි අයිවරි
    CK කුක් දූපත්
    CL චිලී
    CM කැමරූන්
    CN චීනය
    CO කොළොම්බියාව
    CR කොස්ටරිකාව
    CU කියුබාව
    CV කේප් වර්ඩ්
    CW කුරකාවෝ
    CX ක්‍රිස්මස් දූපත
    CY සයිප්‍රසය
    CZ චෙක් ජනරජය
    DE ජර්මනිය
    DJ ජිබුටි
    DK ඩෙන්මාර්කය
    DM ඩොමිනිකාව
    DO ඩොමිනිකා ජනරජය
    DZ ඇල්ජීරියාව
    EC ඉක්වදෝරය
    EE එස්තෝනියාව
    EG ඊජිප්තුව
    EH බටහිර සහරාව
    ER එරිත්‍රියාව
    ES ස්පාඤ්ඤය
    ET ඉතියෝපියාව
    FI ෆින්ලන්තය
    FJ ෆීජී
    FK ෆෝක්ලන්ත දූපත්
    FM මයික්‍රොනීසියාව
    FO ෆැරෝ දූපත්
    FR ප්‍රංශය
    GA ගැබොන්
    GB එක්සත් රාජධානිය
    GD ග්‍රැනඩාව
    GE ජෝර්ජියාව
    GF ප්‍රංශ ගයනාව
    GG ගර්න්සිය
    GH ඝානාව
    GI ජිබ්‍රෝල්ටාව
    GL ග්‍රීන්ලන්තය
    GM ගැම්බියාව
    GN ගිණියාව
    GP ග්වෝඩලෝප්
    GQ සමක ගිනියාව
    GR ග්‍රීසිය
    GS දකුණු ජෝර්ජියාව සහ දකුණු සැන්ඩ්විච් දූපත්
    GT ගෝතමාලාව
    GU ගුවාම්
    GW ගිනි බිසව්
    GY ගයනාව
    HK හොංකොං
    HM හර්ඩ් දූපත සහ මැක්ඩොනල්ඩ් දූපත්
    HN හොන්ඩුරාස්
    HR ක්‍රොඒෂියාව
    HT හයිටි
    HU හන්ගේරියාව
    ID ඉන්දුනීසියාව
    IE අයර්ලන්තය
    IL ඊශ්‍රායලය
    IM අයිල් ඔෆ් මෑන්
    IN ඉන්දියාව
    IO බ්‍රිතාන්‍ය ඉන්දීය සාගර බල ප්‍රදේශය
    IQ ඉරාකය
    IR ඉරානය
    IS අයිස්ලන්තය
    IT ඉතාලිය
    JE ජර්සි
    JM ජැමෙයිකාව
    JO ජෝර්දානය
    JP ජපානය
    KE කෙන්යාව
    KG කිර්ගිස්තානය
    KH කාම්බෝජය
    KI කිරිබති
    KM කොමොරෝස්
    KN ශාන්ත කිට්ස් සහ නේවිස්
    KP උතුරු කොරියාව
    KR දකුණු කොරියාව
    KW කුවේටය
    KY කේමන් දූපත්
    KZ කසකස්තානය
    LA ලාඕසය
    LB ලෙබනනය
    LC ශාන්ත ලුසියා
    LI ලික්ටන්ස්ටයින්
    LK ශ්‍රී ලංකාව
    LR ලයිබීරියාව
    LS ලෙසතෝ
    LT ලිතුවේනියාව
    LU ලක්ශම්බර්ග්
    LV ලැට්වියාව
    LY ලිබියාව
    MA මොරොක්කෝව
    MC මොනාකෝව
    MD මොල්ඩෝවාව
    ME මොන්ටෙනීග්‍රෝ
    MF ශාන්ත මාර්ටින්
    MG මැඩගස්කරය
    MH මාෂල් දූපත්
    MK උතුරු මැසිඩෝනියාව
    ML මාලි
    MM මියන්මාරය (බුරුමය)
    MN මොන්ගෝලියාව
    MO මකාවු
    MP උතුරු මරියානා දූපත්
    MQ මර්ටිනික්
    MR මොරිටේනියාව
    MS මොන්සෙරාට්
    MT මෝල්ටාව
    MU මුරුසිය
    MV මාල දිවයින
    MW මලාවි
    MX මෙක්සිකෝව
    MY මැලේසියාව
    MZ මොසැම්බික්
    NA නැමීබියාව
    NC නව කැලිඩෝනියාව
    NE නයිජර්
    NF නෝෆෝක් දූපත
    NG නයිජීරියාව
    NI නිකරගුවාව
    NL නෙදර්ලන්තය
    NO නෝර්වේ
    NP නේපාලය
    NR නාවුරු
    NU නියූ
    NZ නවසීලන්තය
    OM ඕමානය
    PA පැනමාව
    PE පේරු
    PF ප්‍රංශ පොලිනීසියාව
    PG පැපුවා නිව් ගිනියාව
    PH පිලිපීනය
    PK පාකිස්තානය
    PL පෝලන්තය
    PM ශාන්ත පියරේ සහ මැකෝලන්
    PN පිට්කෙය්න් දූපත්
    PR පුවර්ටෝ රිකෝ
    PS පලස්තීනය
    PT පෘතුගාලය
    PW පලාවු
    PY පැරගුවේ
    QA කටාර්
    RE රීයුනියන්
    RO රුමේනියාව
    RS සර්බියාව
    RU රුසියාව
    RW රුවන්ඩාව
    SA සෞදි අරාබිය
    SB සොලමන් දූපත්
    SC සීශෙල්ස්
    SD සූඩානය
    SE ස්වීඩනය
    SG සිංගප්පූරුව
    SH ශාන්ත හෙලේනා
    SI ස්ලෝවේනියාව
    SJ ස්වෙල්බර්ඩ් සහ ජේන් මයේන්
    SK ස්ලෝවැකියාව
    SL සියරාලියෝන්
    SM සැන් මැරිනෝ
    SN සෙනගාලය
    SO සෝමාලියාව
    SR සුරිනාමය
    SS දකුණු සුඩානය
    ST සාඕ තෝම් සහ ප්‍රින්සිප්
    SV එල් සැල්වදෝරය
    SX ශාන්ත මාර්ටෙන්
    SY සිරියාව
    SZ එස්වාටිනි
    TC ටර්ක්ස් සහ කයිකොස් දූපත්
    TD චැච්
    TF දකුණු ප්‍රංශ දූපත් සමූහය
    TG ටොගෝ
    TH තායිලන්තය
    TJ ටජිකිස්තානය
    TK ටොකලාවු
    TL නැගෙනහිර ටිමෝරය
    TM ටර්ක්මෙනිස්ථානය
    TN ටියුනීසියාව
    TO ටොංගා
    TR තුර්කිය
    TT ට්‍රිනිඩෑඩ් සහ ටොබැගෝ
    TV ටුවාලූ
    TW තායිවානය
    TZ ටැන්සානියාව
    UA යුක්රේනය
    UG උගන්ඩාව
    UM එක්සත් ජනපද ඈත දූපත්
    US එක්සත් ජනපදය
    UY උරුගුවේ
    UZ උස්බෙකිස්ථානය
    VA වතිකානු නගරය
    VC ශාන්ත වින්සන්ට් සහ ග්‍රෙනඩින්ස්
    VE වෙනිසියුලාව
    VG බ්‍රිතාන්‍ය වර්ජින් දූපත්
    VI ඇමරිකානු වර්ජින් දූපත්
    VN වියට්නාමය
    VU වනුවාටු
    WF වැලිස් සහ ෆුටුනා
    WS සැමෝවා
    XK කොසෝවෝ
    YE යේමනය
    YT මයෝට්
    ZA දකුණු අප්‍රිකාව
    ZM සැම්බියාව
    ZW සිම්බාබ්වේ
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "ඇන්ඩෝරාව"

        Cldr.AE ->
            "එක්සත් අරාබි එමිර් රාජ්‍යය"

        Cldr.AF ->
            "ඇෆ්ගනිස්ථානය"

        Cldr.AG ->
            "ඇන්ටිගුවා සහ බාබියුඩාව"

        Cldr.AI ->
            "ඇන්ගුයිලාව"

        Cldr.AL ->
            "ඇල්බේනියාව"

        Cldr.AM ->
            "ආර්මේනියාව"

        Cldr.AO ->
            "ඇන්ගෝලාව"

        Cldr.AQ ->
            "ඇන්ටාක්ටිකාව"

        Cldr.AR ->
            "ආර්ජෙන්ටිනාව"

        Cldr.AS ->
            "ඇමරිකානු සැමෝවා"

        Cldr.AT ->
            "ඔස්ට්‍රියාව"

        Cldr.AU ->
            "ඕස්ට්‍රේලියාව"

        Cldr.AW ->
            "අරූබා"

        Cldr.AX ->
            "ඕලන්ඩ් දූපත්"

        Cldr.AZ ->
            "අසර්බයිජානය"

        Cldr.BA ->
            "බොස්නියාව සහ හර්සගොවීනාව"

        Cldr.BB ->
            "බාබඩෝස්"

        Cldr.BD ->
            "බංග්ලාදේශය"

        Cldr.BE ->
            "බෙල්ජියම"

        Cldr.BF ->
            "බර්කිනා ෆාසෝ"

        Cldr.BG ->
            "බල්ගේරියාව"

        Cldr.BH ->
            "බහරේන්"

        Cldr.BI ->
            "බුරුන්දි"

        Cldr.BJ ->
            "බෙනින්"

        Cldr.BL ->
            "ශාන්ත බර්තලෙමි"

        Cldr.BM ->
            "බර්මියුඩා"

        Cldr.BN ->
            "බෲනායි"

        Cldr.BO ->
            "බොලීවියාව"

        Cldr.BQ ->
            "කැරිබියානු නෙදර්ලන්තය"

        Cldr.BR ->
            "බ්‍රසීලය"

        Cldr.BS ->
            "බහමාස්"

        Cldr.BT ->
            "භූතානය"

        Cldr.BV ->
            "බුවට් දුපත්"

        Cldr.BW ->
            "බොට්ස්වානා"

        Cldr.BY ->
            "බෙලරුස්"

        Cldr.BZ ->
            "බෙලීස්"

        Cldr.CA ->
            "කැනඩාව"

        Cldr.CC ->
            "කොකෝස් දූපත්"

        Cldr.CD ->
            "කොංගෝව (ඩීආර්සී)"

        Cldr.CF ->
            "මධ්‍යම අප්‍රිකානු ජනරජය"

        Cldr.CG ->
            "කොංගෝ (ජනරජය)"

        Cldr.CH ->
            "ස්විස්ටර්ලන්තය"

        Cldr.CI ->
            "කෝට් දි අයිවරි"

        Cldr.CK ->
            "කුක් දූපත්"

        Cldr.CL ->
            "චිලී"

        Cldr.CM ->
            "කැමරූන්"

        Cldr.CN ->
            "චීනය"

        Cldr.CO ->
            "කොළොම්බියාව"

        Cldr.CR ->
            "කොස්ටරිකාව"

        Cldr.CU ->
            "කියුබාව"

        Cldr.CV ->
            "කේප් වර්ඩ්"

        Cldr.CW ->
            "කුරකාවෝ"

        Cldr.CX ->
            "ක්‍රිස්මස් දූපත"

        Cldr.CY ->
            "සයිප්‍රසය"

        Cldr.CZ ->
            "චෙක් ජනරජය"

        Cldr.DE ->
            "ජර්මනිය"

        Cldr.DJ ->
            "ජිබුටි"

        Cldr.DK ->
            "ඩෙන්මාර්කය"

        Cldr.DM ->
            "ඩොමිනිකාව"

        Cldr.DO ->
            "ඩොමිනිකා ජනරජය"

        Cldr.DZ ->
            "ඇල්ජීරියාව"

        Cldr.EC ->
            "ඉක්වදෝරය"

        Cldr.EE ->
            "එස්තෝනියාව"

        Cldr.EG ->
            "ඊජිප්තුව"

        Cldr.EH ->
            "බටහිර සහරාව"

        Cldr.ER ->
            "එරිත්‍රියාව"

        Cldr.ES ->
            "ස්පාඤ්ඤය"

        Cldr.ET ->
            "ඉතියෝපියාව"

        Cldr.FI ->
            "ෆින්ලන්තය"

        Cldr.FJ ->
            "ෆීජී"

        Cldr.FK ->
            "ෆෝක්ලන්ත දූපත්"

        Cldr.FM ->
            "මයික්‍රොනීසියාව"

        Cldr.FO ->
            "ෆැරෝ දූපත්"

        Cldr.FR ->
            "ප්‍රංශය"

        Cldr.GA ->
            "ගැබොන්"

        Cldr.GB ->
            "එක්සත් රාජධානිය"

        Cldr.GD ->
            "ග්‍රැනඩාව"

        Cldr.GE ->
            "ජෝර්ජියාව"

        Cldr.GF ->
            "ප්‍රංශ ගයනාව"

        Cldr.GG ->
            "ගර්න්සිය"

        Cldr.GH ->
            "ඝානාව"

        Cldr.GI ->
            "ජිබ්‍රෝල්ටාව"

        Cldr.GL ->
            "ග්‍රීන්ලන්තය"

        Cldr.GM ->
            "ගැම්බියාව"

        Cldr.GN ->
            "ගිණියාව"

        Cldr.GP ->
            "ග්වෝඩලෝප්"

        Cldr.GQ ->
            "සමක ගිනියාව"

        Cldr.GR ->
            "ග්‍රීසිය"

        Cldr.GS ->
            "දකුණු ජෝර්ජියාව සහ දකුණු සැන්ඩ්විච් දූපත්"

        Cldr.GT_ ->
            "ගෝතමාලාව"

        Cldr.GU ->
            "ගුවාම්"

        Cldr.GW ->
            "ගිනි බිසව්"

        Cldr.GY ->
            "ගයනාව"

        Cldr.HK ->
            "හොංකොං"

        Cldr.HM ->
            "හර්ඩ් දූපත සහ මැක්ඩොනල්ඩ් දූපත්"

        Cldr.HN ->
            "හොන්ඩුරාස්"

        Cldr.HR ->
            "ක්‍රොඒෂියාව"

        Cldr.HT ->
            "හයිටි"

        Cldr.HU ->
            "හන්ගේරියාව"

        Cldr.ID ->
            "ඉන්දුනීසියාව"

        Cldr.IE ->
            "අයර්ලන්තය"

        Cldr.IL ->
            "ඊශ්‍රායලය"

        Cldr.IM ->
            "අයිල් ඔෆ් මෑන්"

        Cldr.IN ->
            "ඉන්දියාව"

        Cldr.IO ->
            "බ්‍රිතාන්‍ය ඉන්දීය සාගර බල ප්‍රදේශය"

        Cldr.IQ ->
            "ඉරාකය"

        Cldr.IR ->
            "ඉරානය"

        Cldr.IS ->
            "අයිස්ලන්තය"

        Cldr.IT ->
            "ඉතාලිය"

        Cldr.JE ->
            "ජර්සි"

        Cldr.JM ->
            "ජැමෙයිකාව"

        Cldr.JO ->
            "ජෝර්දානය"

        Cldr.JP ->
            "ජපානය"

        Cldr.KE ->
            "කෙන්යාව"

        Cldr.KG ->
            "කිර්ගිස්තානය"

        Cldr.KH ->
            "කාම්බෝජය"

        Cldr.KI ->
            "කිරිබති"

        Cldr.KM ->
            "කොමොරෝස්"

        Cldr.KN ->
            "ශාන්ත කිට්ස් සහ නේවිස්"

        Cldr.KP ->
            "උතුරු කොරියාව"

        Cldr.KR ->
            "දකුණු කොරියාව"

        Cldr.KW ->
            "කුවේටය"

        Cldr.KY ->
            "කේමන් දූපත්"

        Cldr.KZ ->
            "කසකස්තානය"

        Cldr.LA ->
            "ලාඕසය"

        Cldr.LB ->
            "ලෙබනනය"

        Cldr.LC ->
            "ශාන්ත ලුසියා"

        Cldr.LI ->
            "ලික්ටන්ස්ටයින්"

        Cldr.LK ->
            "ශ්‍රී ලංකාව"

        Cldr.LR ->
            "ලයිබීරියාව"

        Cldr.LS ->
            "ලෙසතෝ"

        Cldr.LT_ ->
            "ලිතුවේනියාව"

        Cldr.LU ->
            "ලක්ශම්බර්ග්"

        Cldr.LV ->
            "ලැට්වියාව"

        Cldr.LY ->
            "ලිබියාව"

        Cldr.MA ->
            "මොරොක්කෝව"

        Cldr.MC ->
            "මොනාකෝව"

        Cldr.MD ->
            "මොල්ඩෝවාව"

        Cldr.ME ->
            "මොන්ටෙනීග්‍රෝ"

        Cldr.MF ->
            "ශාන්ත මාර්ටින්"

        Cldr.MG ->
            "මැඩගස්කරය"

        Cldr.MH ->
            "මාෂල් දූපත්"

        Cldr.MK ->
            "උතුරු මැසිඩෝනියාව"

        Cldr.ML ->
            "මාලි"

        Cldr.MM ->
            "මියන්මාරය (බුරුමය)"

        Cldr.MN ->
            "මොන්ගෝලියාව"

        Cldr.MO ->
            "මකාවු"

        Cldr.MP ->
            "උතුරු මරියානා දූපත්"

        Cldr.MQ ->
            "මර්ටිනික්"

        Cldr.MR ->
            "මොරිටේනියාව"

        Cldr.MS ->
            "මොන්සෙරාට්"

        Cldr.MT ->
            "මෝල්ටාව"

        Cldr.MU ->
            "මුරුසිය"

        Cldr.MV ->
            "මාල දිවයින"

        Cldr.MW ->
            "මලාවි"

        Cldr.MX ->
            "මෙක්සිකෝව"

        Cldr.MY ->
            "මැලේසියාව"

        Cldr.MZ ->
            "මොසැම්බික්"

        Cldr.NA ->
            "නැමීබියාව"

        Cldr.NC ->
            "නව කැලිඩෝනියාව"

        Cldr.NE ->
            "නයිජර්"

        Cldr.NF ->
            "නෝෆෝක් දූපත"

        Cldr.NG ->
            "නයිජීරියාව"

        Cldr.NI ->
            "නිකරගුවාව"

        Cldr.NL ->
            "නෙදර්ලන්තය"

        Cldr.NO ->
            "නෝර්වේ"

        Cldr.NP ->
            "නේපාලය"

        Cldr.NR ->
            "නාවුරු"

        Cldr.NU ->
            "නියූ"

        Cldr.NZ ->
            "නවසීලන්තය"

        Cldr.OM ->
            "ඕමානය"

        Cldr.PA ->
            "පැනමාව"

        Cldr.PE ->
            "පේරු"

        Cldr.PF ->
            "ප්‍රංශ පොලිනීසියාව"

        Cldr.PG ->
            "පැපුවා නිව් ගිනියාව"

        Cldr.PH ->
            "පිලිපීනය"

        Cldr.PK ->
            "පාකිස්තානය"

        Cldr.PL ->
            "පෝලන්තය"

        Cldr.PM ->
            "ශාන්ත පියරේ සහ මැකෝලන්"

        Cldr.PN ->
            "පිට්කෙය්න් දූපත්"

        Cldr.PR ->
            "පුවර්ටෝ රිකෝ"

        Cldr.PS ->
            "පලස්තීනය"

        Cldr.PT ->
            "පෘතුගාලය"

        Cldr.PW ->
            "පලාවු"

        Cldr.PY ->
            "පැරගුවේ"

        Cldr.QA ->
            "කටාර්"

        Cldr.RE ->
            "රීයුනියන්"

        Cldr.RO ->
            "රුමේනියාව"

        Cldr.RS ->
            "සර්බියාව"

        Cldr.RU ->
            "රුසියාව"

        Cldr.RW ->
            "රුවන්ඩාව"

        Cldr.SA ->
            "සෞදි අරාබිය"

        Cldr.SB ->
            "සොලමන් දූපත්"

        Cldr.SC ->
            "සීශෙල්ස්"

        Cldr.SD ->
            "සූඩානය"

        Cldr.SE ->
            "ස්වීඩනය"

        Cldr.SG ->
            "සිංගප්පූරුව"

        Cldr.SH ->
            "ශාන්ත හෙලේනා"

        Cldr.SI ->
            "ස්ලෝවේනියාව"

        Cldr.SJ ->
            "ස්වෙල්බර්ඩ් සහ ජේන් මයේන්"

        Cldr.SK ->
            "ස්ලෝවැකියාව"

        Cldr.SL ->
            "සියරාලියෝන්"

        Cldr.SM ->
            "සැන් මැරිනෝ"

        Cldr.SN ->
            "සෙනගාලය"

        Cldr.SO ->
            "සෝමාලියාව"

        Cldr.SR ->
            "සුරිනාමය"

        Cldr.SS ->
            "දකුණු සුඩානය"

        Cldr.ST ->
            "සාඕ තෝම් සහ ප්‍රින්සිප්"

        Cldr.SV ->
            "එල් සැල්වදෝරය"

        Cldr.SX ->
            "ශාන්ත මාර්ටෙන්"

        Cldr.SY ->
            "සිරියාව"

        Cldr.SZ ->
            "එස්වාටිනි"

        Cldr.TC ->
            "ටර්ක්ස් සහ කයිකොස් දූපත්"

        Cldr.TD ->
            "චැච්"

        Cldr.TF ->
            "දකුණු ප්‍රංශ දූපත් සමූහය"

        Cldr.TG ->
            "ටොගෝ"

        Cldr.TH ->
            "තායිලන්තය"

        Cldr.TJ ->
            "ටජිකිස්තානය"

        Cldr.TK ->
            "ටොකලාවු"

        Cldr.TL ->
            "නැගෙනහිර ටිමෝරය"

        Cldr.TM ->
            "ටර්ක්මෙනිස්ථානය"

        Cldr.TN ->
            "ටියුනීසියාව"

        Cldr.TO ->
            "ටොංගා"

        Cldr.TR ->
            "තුර්කිය"

        Cldr.TT ->
            "ට්‍රිනිඩෑඩ් සහ ටොබැගෝ"

        Cldr.TV ->
            "ටුවාලූ"

        Cldr.TW ->
            "තායිවානය"

        Cldr.TZ ->
            "ටැන්සානියාව"

        Cldr.UA ->
            "යුක්රේනය"

        Cldr.UG ->
            "උගන්ඩාව"

        Cldr.UM ->
            "එක්සත් ජනපද ඈත දූපත්"

        Cldr.US ->
            "එක්සත් ජනපදය"

        Cldr.UY ->
            "උරුගුවේ"

        Cldr.UZ ->
            "උස්බෙකිස්ථානය"

        Cldr.VA ->
            "වතිකානු නගරය"

        Cldr.VC ->
            "ශාන්ත වින්සන්ට් සහ ග්‍රෙනඩින්ස්"

        Cldr.VE ->
            "වෙනිසියුලාව"

        Cldr.VG ->
            "බ්‍රිතාන්‍ය වර්ජින් දූපත්"

        Cldr.VI ->
            "ඇමරිකානු වර්ජින් දූපත්"

        Cldr.VN ->
            "වියට්නාමය"

        Cldr.VU ->
            "වනුවාටු"

        Cldr.WF ->
            "වැලිස් සහ ෆුටුනා"

        Cldr.WS ->
            "සැමෝවා"

        Cldr.XK ->
            "කොසෝවෝ"

        Cldr.YE ->
            "යේමනය"

        Cldr.YT ->
            "මයෝට්"

        Cldr.ZA ->
            "දකුණු අප්‍රිකාව"

        Cldr.ZM ->
            "සැම්බියාව"

        Cldr.ZW ->
            "සිම්බාබ්වේ"