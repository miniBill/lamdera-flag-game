module Cldr.Gujarati exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Gujarati.

    AD ઍંડોરા
    AE યુનાઇટેડ આરબ અમીરાત
    AF અફઘાનિસ્તાન
    AG ઍન્ટિગુઆ અને બર્મુડા
    AI ઍંગ્વિલા
    AL અલ્બેનિયા
    AM આર્મેનિયા
    AO અંગોલા
    AQ એન્ટાર્કટિકા
    AR આર્જેન્ટીના
    AS અમેરિકન સમોઆ
    AT ઑસ્ટ્રિયા
    AU ઑસ્ટ્રેલિયા
    AW અરુબા
    AX ઑલેન્ડ આઇલેન્ડ્સ
    AZ અઝરબૈજાન
    BA બોસ્નિયા અને હર્ઝેગોવિના
    BB બારબાડોસ
    BD બાંગ્લાદેશ
    BE બેલ્જીયમ
    BF બુર્કિના ફાસો
    BG બલ્ગેરિયા
    BH બેહરીન
    BI બુરુંડી
    BJ બેનિન
    BL સેંટ બાર્થેલેમી
    BM બર્મુડા
    BN બ્રુનેઇ
    BO બોલિવિયા
    BQ કેરેબિયન નેધરલેન્ડ્ઝ
    BR બ્રાઝિલ
    BS બહામાસ
    BT ભૂટાન
    BV બૌવેત આઇલેન્ડ
    BW બોત્સ્વાના
    BY બેલારુસ
    BZ બેલીઝ
    CA કેનેડા
    CC કોકોઝ (કીલીંગ) આઇલેન્ડ્સ
    CD કોંગો (ડીઆરસી)
    CF સેન્ટ્રલ આફ્રિકન રિપબ્લિક
    CG કોંગો (રિપબ્લિક)
    CH સ્વિટ્ઝર્લૅન્ડ
    CI કોટ ડીઆઇવરી
    CK કુક આઇલેન્ડ્સ
    CL ચિલી
    CM કૅમરૂન
    CN ચીન
    CO કોલમ્બિયા
    CR કોસ્ટા રિકા
    CU ક્યુબા
    CV કૅપ વર્ડે
    CW ક્યુરાસાઓ
    CX ક્રિસમસ આઇલેન્ડ
    CY સાયપ્રસ
    CZ ચેક રિપબ્લિક
    DE જર્મની
    DJ જીબૌટી
    DK ડેનમાર્ક
    DM ડોમિનિકા
    DO ડોમિનિકન રિપબ્લિક
    DZ અલ્જીરિયા
    EC એક્વાડોર
    EE એસ્ટોનિયા
    EG ઇજિપ્ત
    EH પશ્ચિમી સહારા
    ER એરિટ્રિયા
    ES સ્પેન
    ET ઇથિઓપિયા
    FI ફિનલેન્ડ
    FJ ફીજી
    FK ફૉકલેન્ડ આઇલેન્ડ્સ
    FM માઇક્રોનેશિયા
    FO ફેરો આઇલેન્ડ્સ
    FR ફ્રાંસ
    GA ગેબન
    GB યુનાઇટેડ કિંગડમ
    GD ગ્રેનેડા
    GE જ્યોર્જિયા
    GF ફ્રેંચ ગયાના
    GG ગ્વેર્નસે
    GH ઘાના
    GI જીબ્રાલ્ટર
    GL ગ્રીનલેન્ડ
    GM ગેમ્બિયા
    GN ગિની
    GP ગ્વાડેલોપ
    GQ ઇક્વેટોરિયલ ગિની
    GR ગ્રીસ
    GS દક્ષિણ જ્યોર્જિયા અને દક્ષિણ સેન્ડવિચ આઇલેન્ડ્સ
    GT ગ્વાટેમાલા
    GU ગ્વામ
    GW ગિની-બિસાઉ
    GY ગયાના
    HK હોંગકોંગ
    HM હર્ડ અને મેકડોનાલ્ડ આઇલેન્ડ્સ
    HN હોન્ડુરસ
    HR ક્રોએશિયા
    HT હૈતિ
    HU હંગેરી
    ID ઇન્ડોનેશિયા
    IE આયર્લેન્ડ
    IL ઇઝરાઇલ
    IM આઇલ ઑફ મેન
    IN ભારત
    IO બ્રિટિશ ઇન્ડિયન ઓશન ટેરિટરી
    IQ ઇરાક
    IR ઈરાન
    IS આઇસલેન્ડ
    IT ઇટાલી
    JE જર્સી
    JM જમૈકા
    JO જોર્ડન
    JP જાપાન
    KE કેન્યા
    KG કિર્ગિઝ્સ્તાન
    KH કંબોડિયા
    KI કિરિબાટી
    KM કોમોરસ
    KN સેંટ કિટ્સ અને નેવિસ
    KP ઉત્તર કોરિયા
    KR દક્ષિણ કોરિયા
    KW કુવૈત
    KY કેમેન આઇલેન્ડ્સ
    KZ કઝાકિસ્તાન
    LA લાઓસ
    LB લેબનોન
    LC સેંટ લુસિયા
    LI લૈચટેંસ્ટેઇન
    LK શ્રીલંકા
    LR લાઇબેરિયા
    LS લેસોથો
    LT લિથુઆનિયા
    LU લક્ઝમબર્ગ
    LV લાત્વિયા
    LY લિબિયા
    MA મોરોક્કો
    MC મોનાકો
    MD મોલડોવા
    ME મૉન્ટેનેગ્રો
    MF સેંટ માર્ટિન
    MG મેડાગાસ્કર
    MH માર્શલ આઇલેન્ડ્સ
    MK ઉત્તર મેસેડોનિયા
    ML માલી
    MM મ્યાંમાર (બર્મા)
    MN મંગોલિયા
    MO મકાઉ
    MP ઉત્તરી મારિયાના આઇલેન્ડ્સ
    MQ માર્ટીનીક
    MR મૌરિટાનિયા
    MS મોંટસેરાત
    MT માલ્ટા
    MU મોરિશિયસ
    MV માલદિવ્સ
    MW માલાવી
    MX મેક્સિકો
    MY મલેશિયા
    MZ મોઝામ્બિક
    NA નામિબિયા
    NC ન્યુ સેલેડોનિયા
    NE નાઇજર
    NF નોરફોક આઇલેન્ડ્સ
    NG નાઇજેરિયા
    NI નિકારાગુઆ
    NL નેધરલેન્ડ્સ
    NO નૉર્વે
    NP નેપાળ
    NR નૌરુ
    NU નીયુ
    NZ ન્યુઝીલેન્ડ
    OM ઓમાન
    PA પનામા
    PE પેરુ
    PF ફ્રેંચ પોલિનેશિયા
    PG પાપુઆ ન્યૂ ગિની
    PH ફિલિપિન્સ
    PK પાકિસ્તાન
    PL પોલેંડ
    PM સેંટ પીએરી અને મિક્યુલોન
    PN પીટકૈર્ન આઇલેન્ડ્સ
    PR પ્યુઅર્ટો રિકો
    PS પેલેસ્ટાઇન
    PT પોર્ટુગલ
    PW પલાઉ
    PY પેરાગ્વે
    QA કતાર
    RE રીયુનિયન
    RO રોમાનિયા
    RS સર્બિયા
    RU રશિયા
    RW રવાંડા
    SA સાઉદી અરેબિયા
    SB સોલોમન આઇલેન્ડ્સ
    SC સેશેલ્સ
    SD સુદાન
    SE સ્વીડન
    SG સિંગાપુર
    SH સેંટ હેલેના
    SI સ્લોવેનિયા
    SJ સ્વાલબર્ડ અને જેન મેયન
    SK સ્લોવેકિયા
    SL સીએરા લેઓન
    SM સૅન મેરિનો
    SN સેનેગલ
    SO સોમાલિયા
    SR સુરીનામ
    SS દક્ષિણ સુદાન
    ST સાઓ ટૉમ અને પ્રિંસિપે
    SV એલ સેલ્વાડોર
    SX સિંટ માર્ટેન
    SY સીરિયા
    SZ એસ્વાટીની
    TC તુર્ક્સ અને કેકોઝ આઇલેન્ડ્સ
    TD ચાડ
    TF ફ્રેંચ સધર્ન ટેરિટરીઝ
    TG ટોગો
    TH થાઇલેંડ
    TJ તાજીકિસ્તાન
    TK ટોકેલાઉ
    TL પૂર્વ તિમોર
    TM તુર્કમેનિસ્તાન
    TN ટ્યુનિશિયા
    TO ટોંગા
    TR તુર્કિયે
    TT ટ્રિનીદાદ અને ટોબેગો
    TV તુવાલુ
    TW તાઇવાન
    TZ તાંઝાનિયા
    UA યુક્રેન
    UG યુગાંડા
    UM યુ.એસ. આઉટલાઇનિંગ આઇલેન્ડ્સ
    US યુનાઇટેડ સ્ટેટ્સ
    UY ઉરુગ્વે
    UZ ઉઝ્બેકિસ્તાન
    VA વેટિકન સિટી
    VC સેંટ વિન્સેંટ અને ગ્રેનેડાઇંસ
    VE વેનેઝુએલા
    VG બ્રિટિશ વર્જિન આઇલેન્ડ્સ
    VI યુએસ વર્જિન આઇલેન્ડ્સ
    VN વિયેતનામ
    VU વાનુઆતુ
    WF વૉલિસ અને ફ્યુચુના
    WS સમોઆ
    XK કોસોવો
    YE યમન
    YT મેયોટ
    ZA દક્ષિણ આફ્રિકા
    ZM ઝામ્બિયા
    ZW ઝિમ્બાબ્વે
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "ઍંડોરા"

        Cldr.AE ->
            "યુનાઇટેડ આરબ અમીરાત"

        Cldr.AF ->
            "અફઘાનિસ્તાન"

        Cldr.AG ->
            "ઍન્ટિગુઆ અને બર્મુડા"

        Cldr.AI ->
            "ઍંગ્વિલા"

        Cldr.AL ->
            "અલ્બેનિયા"

        Cldr.AM ->
            "આર્મેનિયા"

        Cldr.AO ->
            "અંગોલા"

        Cldr.AQ ->
            "એન્ટાર્કટિકા"

        Cldr.AR ->
            "આર્જેન્ટીના"

        Cldr.AS ->
            "અમેરિકન સમોઆ"

        Cldr.AT ->
            "ઑસ્ટ્રિયા"

        Cldr.AU ->
            "ઑસ્ટ્રેલિયા"

        Cldr.AW ->
            "અરુબા"

        Cldr.AX ->
            "ઑલેન્ડ આઇલેન્ડ્સ"

        Cldr.AZ ->
            "અઝરબૈજાન"

        Cldr.BA ->
            "બોસ્નિયા અને હર્ઝેગોવિના"

        Cldr.BB ->
            "બારબાડોસ"

        Cldr.BD ->
            "બાંગ્લાદેશ"

        Cldr.BE ->
            "બેલ્જીયમ"

        Cldr.BF ->
            "બુર્કિના ફાસો"

        Cldr.BG ->
            "બલ્ગેરિયા"

        Cldr.BH ->
            "બેહરીન"

        Cldr.BI ->
            "બુરુંડી"

        Cldr.BJ ->
            "બેનિન"

        Cldr.BL ->
            "સેંટ બાર્થેલેમી"

        Cldr.BM ->
            "બર્મુડા"

        Cldr.BN ->
            "બ્રુનેઇ"

        Cldr.BO ->
            "બોલિવિયા"

        Cldr.BQ ->
            "કેરેબિયન નેધરલેન્ડ્ઝ"

        Cldr.BR ->
            "બ્રાઝિલ"

        Cldr.BS ->
            "બહામાસ"

        Cldr.BT ->
            "ભૂટાન"

        Cldr.BV ->
            "બૌવેત આઇલેન્ડ"

        Cldr.BW ->
            "બોત્સ્વાના"

        Cldr.BY ->
            "બેલારુસ"

        Cldr.BZ ->
            "બેલીઝ"

        Cldr.CA ->
            "કેનેડા"

        Cldr.CC ->
            "કોકોઝ (કીલીંગ) આઇલેન્ડ્સ"

        Cldr.CD ->
            "કોંગો (ડીઆરસી)"

        Cldr.CF ->
            "સેન્ટ્રલ આફ્રિકન રિપબ્લિક"

        Cldr.CG ->
            "કોંગો (રિપબ્લિક)"

        Cldr.CH ->
            "સ્વિટ્ઝર્લૅન્ડ"

        Cldr.CI ->
            "કોટ ડીઆઇવરી"

        Cldr.CK ->
            "કુક આઇલેન્ડ્સ"

        Cldr.CL ->
            "ચિલી"

        Cldr.CM ->
            "કૅમરૂન"

        Cldr.CN ->
            "ચીન"

        Cldr.CO ->
            "કોલમ્બિયા"

        Cldr.CR ->
            "કોસ્ટા રિકા"

        Cldr.CU ->
            "ક્યુબા"

        Cldr.CV ->
            "કૅપ વર્ડે"

        Cldr.CW ->
            "ક્યુરાસાઓ"

        Cldr.CX ->
            "ક્રિસમસ આઇલેન્ડ"

        Cldr.CY ->
            "સાયપ્રસ"

        Cldr.CZ ->
            "ચેક રિપબ્લિક"

        Cldr.DE ->
            "જર્મની"

        Cldr.DJ ->
            "જીબૌટી"

        Cldr.DK ->
            "ડેનમાર્ક"

        Cldr.DM ->
            "ડોમિનિકા"

        Cldr.DO ->
            "ડોમિનિકન રિપબ્લિક"

        Cldr.DZ ->
            "અલ્જીરિયા"

        Cldr.EC ->
            "એક્વાડોર"

        Cldr.EE ->
            "એસ્ટોનિયા"

        Cldr.EG ->
            "ઇજિપ્ત"

        Cldr.EH ->
            "પશ્ચિમી સહારા"

        Cldr.ER ->
            "એરિટ્રિયા"

        Cldr.ES ->
            "સ્પેન"

        Cldr.ET ->
            "ઇથિઓપિયા"

        Cldr.FI ->
            "ફિનલેન્ડ"

        Cldr.FJ ->
            "ફીજી"

        Cldr.FK ->
            "ફૉકલેન્ડ આઇલેન્ડ્સ"

        Cldr.FM ->
            "માઇક્રોનેશિયા"

        Cldr.FO ->
            "ફેરો આઇલેન્ડ્સ"

        Cldr.FR ->
            "ફ્રાંસ"

        Cldr.GA ->
            "ગેબન"

        Cldr.GB ->
            "યુનાઇટેડ કિંગડમ"

        Cldr.GD ->
            "ગ્રેનેડા"

        Cldr.GE ->
            "જ્યોર્જિયા"

        Cldr.GF ->
            "ફ્રેંચ ગયાના"

        Cldr.GG ->
            "ગ્વેર્નસે"

        Cldr.GH ->
            "ઘાના"

        Cldr.GI ->
            "જીબ્રાલ્ટર"

        Cldr.GL ->
            "ગ્રીનલેન્ડ"

        Cldr.GM ->
            "ગેમ્બિયા"

        Cldr.GN ->
            "ગિની"

        Cldr.GP ->
            "ગ્વાડેલોપ"

        Cldr.GQ ->
            "ઇક્વેટોરિયલ ગિની"

        Cldr.GR ->
            "ગ્રીસ"

        Cldr.GS ->
            "દક્ષિણ જ્યોર્જિયા અને દક્ષિણ સેન્ડવિચ આઇલેન્ડ્સ"

        Cldr.GT_ ->
            "ગ્વાટેમાલા"

        Cldr.GU ->
            "ગ્વામ"

        Cldr.GW ->
            "ગિની-બિસાઉ"

        Cldr.GY ->
            "ગયાના"

        Cldr.HK ->
            "હોંગકોંગ"

        Cldr.HM ->
            "હર્ડ અને મેકડોનાલ્ડ આઇલેન્ડ્સ"

        Cldr.HN ->
            "હોન્ડુરસ"

        Cldr.HR ->
            "ક્રોએશિયા"

        Cldr.HT ->
            "હૈતિ"

        Cldr.HU ->
            "હંગેરી"

        Cldr.ID ->
            "ઇન્ડોનેશિયા"

        Cldr.IE ->
            "આયર્લેન્ડ"

        Cldr.IL ->
            "ઇઝરાઇલ"

        Cldr.IM ->
            "આઇલ ઑફ મેન"

        Cldr.IN ->
            "ભારત"

        Cldr.IO ->
            "બ્રિટિશ ઇન્ડિયન ઓશન ટેરિટરી"

        Cldr.IQ ->
            "ઇરાક"

        Cldr.IR ->
            "ઈરાન"

        Cldr.IS ->
            "આઇસલેન્ડ"

        Cldr.IT ->
            "ઇટાલી"

        Cldr.JE ->
            "જર્સી"

        Cldr.JM ->
            "જમૈકા"

        Cldr.JO ->
            "જોર્ડન"

        Cldr.JP ->
            "જાપાન"

        Cldr.KE ->
            "કેન્યા"

        Cldr.KG ->
            "કિર્ગિઝ્સ્તાન"

        Cldr.KH ->
            "કંબોડિયા"

        Cldr.KI ->
            "કિરિબાટી"

        Cldr.KM ->
            "કોમોરસ"

        Cldr.KN ->
            "સેંટ કિટ્સ અને નેવિસ"

        Cldr.KP ->
            "ઉત્તર કોરિયા"

        Cldr.KR ->
            "દક્ષિણ કોરિયા"

        Cldr.KW ->
            "કુવૈત"

        Cldr.KY ->
            "કેમેન આઇલેન્ડ્સ"

        Cldr.KZ ->
            "કઝાકિસ્તાન"

        Cldr.LA ->
            "લાઓસ"

        Cldr.LB ->
            "લેબનોન"

        Cldr.LC ->
            "સેંટ લુસિયા"

        Cldr.LI ->
            "લૈચટેંસ્ટેઇન"

        Cldr.LK ->
            "શ્રીલંકા"

        Cldr.LR ->
            "લાઇબેરિયા"

        Cldr.LS ->
            "લેસોથો"

        Cldr.LT_ ->
            "લિથુઆનિયા"

        Cldr.LU ->
            "લક્ઝમબર્ગ"

        Cldr.LV ->
            "લાત્વિયા"

        Cldr.LY ->
            "લિબિયા"

        Cldr.MA ->
            "મોરોક્કો"

        Cldr.MC ->
            "મોનાકો"

        Cldr.MD ->
            "મોલડોવા"

        Cldr.ME ->
            "મૉન્ટેનેગ્રો"

        Cldr.MF ->
            "સેંટ માર્ટિન"

        Cldr.MG ->
            "મેડાગાસ્કર"

        Cldr.MH ->
            "માર્શલ આઇલેન્ડ્સ"

        Cldr.MK ->
            "ઉત્તર મેસેડોનિયા"

        Cldr.ML ->
            "માલી"

        Cldr.MM ->
            "મ્યાંમાર (બર્મા)"

        Cldr.MN ->
            "મંગોલિયા"

        Cldr.MO ->
            "મકાઉ"

        Cldr.MP ->
            "ઉત્તરી મારિયાના આઇલેન્ડ્સ"

        Cldr.MQ ->
            "માર્ટીનીક"

        Cldr.MR ->
            "મૌરિટાનિયા"

        Cldr.MS ->
            "મોંટસેરાત"

        Cldr.MT ->
            "માલ્ટા"

        Cldr.MU ->
            "મોરિશિયસ"

        Cldr.MV ->
            "માલદિવ્સ"

        Cldr.MW ->
            "માલાવી"

        Cldr.MX ->
            "મેક્સિકો"

        Cldr.MY ->
            "મલેશિયા"

        Cldr.MZ ->
            "મોઝામ્બિક"

        Cldr.NA ->
            "નામિબિયા"

        Cldr.NC ->
            "ન્યુ સેલેડોનિયા"

        Cldr.NE ->
            "નાઇજર"

        Cldr.NF ->
            "નોરફોક આઇલેન્ડ્સ"

        Cldr.NG ->
            "નાઇજેરિયા"

        Cldr.NI ->
            "નિકારાગુઆ"

        Cldr.NL ->
            "નેધરલેન્ડ્સ"

        Cldr.NO ->
            "નૉર્વે"

        Cldr.NP ->
            "નેપાળ"

        Cldr.NR ->
            "નૌરુ"

        Cldr.NU ->
            "નીયુ"

        Cldr.NZ ->
            "ન્યુઝીલેન્ડ"

        Cldr.OM ->
            "ઓમાન"

        Cldr.PA ->
            "પનામા"

        Cldr.PE ->
            "પેરુ"

        Cldr.PF ->
            "ફ્રેંચ પોલિનેશિયા"

        Cldr.PG ->
            "પાપુઆ ન્યૂ ગિની"

        Cldr.PH ->
            "ફિલિપિન્સ"

        Cldr.PK ->
            "પાકિસ્તાન"

        Cldr.PL ->
            "પોલેંડ"

        Cldr.PM ->
            "સેંટ પીએરી અને મિક્યુલોન"

        Cldr.PN ->
            "પીટકૈર્ન આઇલેન્ડ્સ"

        Cldr.PR ->
            "પ્યુઅર્ટો રિકો"

        Cldr.PS ->
            "પેલેસ્ટાઇન"

        Cldr.PT ->
            "પોર્ટુગલ"

        Cldr.PW ->
            "પલાઉ"

        Cldr.PY ->
            "પેરાગ્વે"

        Cldr.QA ->
            "કતાર"

        Cldr.RE ->
            "રીયુનિયન"

        Cldr.RO ->
            "રોમાનિયા"

        Cldr.RS ->
            "સર્બિયા"

        Cldr.RU ->
            "રશિયા"

        Cldr.RW ->
            "રવાંડા"

        Cldr.SA ->
            "સાઉદી અરેબિયા"

        Cldr.SB ->
            "સોલોમન આઇલેન્ડ્સ"

        Cldr.SC ->
            "સેશેલ્સ"

        Cldr.SD ->
            "સુદાન"

        Cldr.SE ->
            "સ્વીડન"

        Cldr.SG ->
            "સિંગાપુર"

        Cldr.SH ->
            "સેંટ હેલેના"

        Cldr.SI ->
            "સ્લોવેનિયા"

        Cldr.SJ ->
            "સ્વાલબર્ડ અને જેન મેયન"

        Cldr.SK ->
            "સ્લોવેકિયા"

        Cldr.SL ->
            "સીએરા લેઓન"

        Cldr.SM ->
            "સૅન મેરિનો"

        Cldr.SN ->
            "સેનેગલ"

        Cldr.SO ->
            "સોમાલિયા"

        Cldr.SR ->
            "સુરીનામ"

        Cldr.SS ->
            "દક્ષિણ સુદાન"

        Cldr.ST ->
            "સાઓ ટૉમ અને પ્રિંસિપે"

        Cldr.SV ->
            "એલ સેલ્વાડોર"

        Cldr.SX ->
            "સિંટ માર્ટેન"

        Cldr.SY ->
            "સીરિયા"

        Cldr.SZ ->
            "એસ્વાટીની"

        Cldr.TC ->
            "તુર્ક્સ અને કેકોઝ આઇલેન્ડ્સ"

        Cldr.TD ->
            "ચાડ"

        Cldr.TF ->
            "ફ્રેંચ સધર્ન ટેરિટરીઝ"

        Cldr.TG ->
            "ટોગો"

        Cldr.TH ->
            "થાઇલેંડ"

        Cldr.TJ ->
            "તાજીકિસ્તાન"

        Cldr.TK ->
            "ટોકેલાઉ"

        Cldr.TL ->
            "પૂર્વ તિમોર"

        Cldr.TM ->
            "તુર્કમેનિસ્તાન"

        Cldr.TN ->
            "ટ્યુનિશિયા"

        Cldr.TO ->
            "ટોંગા"

        Cldr.TR ->
            "તુર્કિયે"

        Cldr.TT ->
            "ટ્રિનીદાદ અને ટોબેગો"

        Cldr.TV ->
            "તુવાલુ"

        Cldr.TW ->
            "તાઇવાન"

        Cldr.TZ ->
            "તાંઝાનિયા"

        Cldr.UA ->
            "યુક્રેન"

        Cldr.UG ->
            "યુગાંડા"

        Cldr.UM ->
            "યુ.એસ. આઉટલાઇનિંગ આઇલેન્ડ્સ"

        Cldr.US ->
            "યુનાઇટેડ સ્ટેટ્સ"

        Cldr.UY ->
            "ઉરુગ્વે"

        Cldr.UZ ->
            "ઉઝ્બેકિસ્તાન"

        Cldr.VA ->
            "વેટિકન સિટી"

        Cldr.VC ->
            "સેંટ વિન્સેંટ અને ગ્રેનેડાઇંસ"

        Cldr.VE ->
            "વેનેઝુએલા"

        Cldr.VG ->
            "બ્રિટિશ વર્જિન આઇલેન્ડ્સ"

        Cldr.VI ->
            "યુએસ વર્જિન આઇલેન્ડ્સ"

        Cldr.VN ->
            "વિયેતનામ"

        Cldr.VU ->
            "વાનુઆતુ"

        Cldr.WF ->
            "વૉલિસ અને ફ્યુચુના"

        Cldr.WS ->
            "સમોઆ"

        Cldr.XK ->
            "કોસોવો"

        Cldr.YE ->
            "યમન"

        Cldr.YT ->
            "મેયોટ"

        Cldr.ZA ->
            "દક્ષિણ આફ્રિકા"

        Cldr.ZM ->
            "ઝામ્બિયા"

        Cldr.ZW ->
            "ઝિમ્બાબ્વે"