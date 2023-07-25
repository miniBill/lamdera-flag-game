module Cldr.Chinese.Traditional exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Chinese


{-| Name for `CountryCode` in Chinese (Traditional).

    AD 安道爾
    AE 阿拉伯聯合大公國
    AF 阿富汗
    AG 安地卡及巴布達
    AI 安奎拉
    AL 阿爾巴尼亞
    AM 亞美尼亞
    AO 安哥拉
    AQ 南極洲
    AR 阿根廷
    AS 美屬薩摩亞
    AT 奧地利
    AU 澳洲
    AW 荷屬阿魯巴
    AX 奧蘭群島
    AZ 亞塞拜然
    BA 波士尼亞與赫塞哥維納
    BB 巴貝多
    BD 孟加拉
    BE 比利時
    BF 布吉納法索
    BG 保加利亞
    BH 巴林
    BI 蒲隆地
    BJ 貝南
    BL 聖巴瑟米
    BM 百慕達
    BN 汶萊
    BO 玻利維亞
    BQ 荷蘭加勒比區
    BR 巴西
    BS 巴哈馬
    BT 不丹
    BV 布威島
    BW 波札那
    BY 白俄羅斯
    BZ 貝里斯
    CA 加拿大
    CC 科克斯（基靈）群島
    CD 剛果（金夏沙）
    CF 中非共和國
    CG 剛果（布拉薩）
    CH 瑞士
    CI 象牙海岸
    CK 庫克群島
    CL 智利
    CM 喀麥隆
    CN 中國
    CO 哥倫比亞
    CR 哥斯大黎加
    CU 古巴
    CV 維德角
    CW 庫拉索
    CX 聖誕島
    CY 賽普勒斯
    CZ 捷克
    DE 德國
    DJ 吉布地
    DK 丹麥
    DM 多米尼克
    DO 多明尼加共和國
    DZ 阿爾及利亞
    EC 厄瓜多
    EE 愛沙尼亞
    EG 埃及
    EH 西撒哈拉
    ER 厄利垂亞
    ES 西班牙
    ET 衣索比亞
    FI 芬蘭
    FJ 斐濟
    FK 福克蘭群島
    FM 密克羅尼西亞
    FO 法羅群島
    FR 法國
    GA 加彭
    GB 英國
    GD 格瑞那達
    GE 喬治亞
    GF 法屬圭亞那
    GG 根息
    GH 迦納
    GI 直布羅陀
    GL 格陵蘭
    GM 甘比亞
    GN 幾內亞
    GP 瓜地洛普
    GQ 赤道幾內亞
    GR 希臘
    GS 南喬治亞與南三明治群島
    GT 瓜地馬拉
    GU 關島
    GW 幾內亞比索
    GY 蓋亞那
    HK 中國香港特別行政區
    HM 赫德島及麥唐納群島
    HN 宏都拉斯
    HR 克羅埃西亞
    HT 海地
    HU 匈牙利
    ID 印尼
    IE 愛爾蘭
    IL 以色列
    IM 曼島
    IN 印度
    IO 英屬印度洋領地
    IQ 伊拉克
    IR 伊朗
    IS 冰島
    IT 義大利
    JE 澤西島
    JM 牙買加
    JO 約旦
    JP 日本
    KE 肯亞
    KG 吉爾吉斯
    KH 柬埔寨
    KI 吉里巴斯
    KM 葛摩
    KN 聖克里斯多福及尼維斯
    KP 北韓
    KR 南韓
    KW 科威特
    KY 開曼群島
    KZ 哈薩克
    LA 寮國
    LB 黎巴嫩
    LC 聖露西亞
    LI 列支敦斯登
    LK 斯里蘭卡
    LR 賴比瑞亞
    LS 賴索托
    LT 立陶宛
    LU 盧森堡
    LV 拉脫維亞
    LY 利比亞
    MA 摩洛哥
    MC 摩納哥
    MD 摩爾多瓦
    ME 蒙特內哥羅
    MF 法屬聖馬丁
    MG 馬達加斯加
    MH 馬紹爾群島
    MK 北馬其頓
    ML 馬利
    MM 緬甸
    MN 蒙古
    MO 中國澳門特別行政區
    MP 北馬利安納群島
    MQ 馬丁尼克
    MR 茅利塔尼亞
    MS 蒙哲臘
    MT 馬爾他
    MU 模里西斯
    MV 馬爾地夫
    MW 馬拉威
    MX 墨西哥
    MY 馬來西亞
    MZ 莫三比克
    NA 納米比亞
    NC 新喀里多尼亞
    NE 尼日
    NF 諾福克島
    NG 奈及利亞
    NI 尼加拉瓜
    NL 荷蘭
    NO 挪威
    NP 尼泊爾
    NR 諾魯
    NU 紐埃島
    NZ 紐西蘭
    OM 阿曼
    PA 巴拿馬
    PE 秘魯
    PF 法屬玻里尼西亞
    PG 巴布亞紐幾內亞
    PH 菲律賓
    PK 巴基斯坦
    PL 波蘭
    PM 聖皮埃與密克隆群島
    PN 皮特肯群島
    PR 波多黎各
    PS 巴勒斯坦自治區
    PT 葡萄牙
    PW 帛琉
    PY 巴拉圭
    QA 卡達
    RE 留尼旺
    RO 羅馬尼亞
    RS 塞爾維亞
    RU 俄羅斯
    RW 盧安達
    SA 沙烏地阿拉伯
    SB 索羅門群島
    SC 塞席爾
    SD 蘇丹
    SE 瑞典
    SG 新加坡
    SH 聖赫勒拿島
    SI 斯洛維尼亞
    SJ 挪威屬斯瓦巴及尖棉
    SK 斯洛伐克
    SL 獅子山
    SM 聖馬利諾
    SN 塞內加爾
    SO 索馬利亞
    SR 蘇利南
    SS 南蘇丹
    ST 聖多美普林西比
    SV 薩爾瓦多
    SX 荷屬聖馬丁
    SY 敘利亞
    SZ 史瓦帝尼
    TC 土克斯及開科斯群島
    TD 查德
    TF 法屬南部屬地
    TG 多哥
    TH 泰國
    TJ 塔吉克
    TK 托克勞群島
    TL 東帝汶
    TM 土庫曼
    TN 突尼西亞
    TO 東加
    TR 土耳其
    TT 千里達及托巴哥
    TV 吐瓦魯
    TW 台灣
    TZ 坦尚尼亞
    UA 烏克蘭
    UG 烏干達
    UM 美國本土外小島嶼
    US 美國
    UY 烏拉圭
    UZ 烏茲別克
    VA 梵蒂岡
    VC 聖文森及格瑞那丁
    VE 委內瑞拉
    VG 英屬維京群島
    VI 美屬維京群島
    VN 越南
    VU 萬那杜
    WF 瓦利斯群島和富圖那群島
    WS 薩摩亞
    XK 科索沃
    YE 葉門
    YT 馬約特島
    ZA 南非
    ZM 尚比亞
    ZW 辛巴威
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "安道爾"

        Cldr.AE ->
            "阿拉伯聯合大公國"

        Cldr.AG ->
            "安地卡及巴布達"

        Cldr.AI ->
            "安奎拉"

        Cldr.AL ->
            "阿爾巴尼亞"

        Cldr.AM ->
            "亞美尼亞"

        Cldr.AQ ->
            "南極洲"

        Cldr.AS ->
            "美屬薩摩亞"

        Cldr.AT ->
            "奧地利"

        Cldr.AU ->
            "澳洲"

        Cldr.AW ->
            "荷屬阿魯巴"

        Cldr.AX ->
            "奧蘭群島"

        Cldr.AZ ->
            "亞塞拜然"

        Cldr.BA ->
            "波士尼亞與赫塞哥維納"

        Cldr.BB ->
            "巴貝多"

        Cldr.BD ->
            "孟加拉"

        Cldr.BE ->
            "比利時"

        Cldr.BF ->
            "布吉納法索"

        Cldr.BG ->
            "保加利亞"

        Cldr.BI ->
            "蒲隆地"

        Cldr.BJ ->
            "貝南"

        Cldr.BL ->
            "聖巴瑟米"

        Cldr.BM ->
            "百慕達"

        Cldr.BN ->
            "汶萊"

        Cldr.BO ->
            "玻利維亞"

        Cldr.BQ ->
            "荷蘭加勒比區"

        Cldr.BS ->
            "巴哈馬"

        Cldr.BV ->
            "布威島"

        Cldr.BW ->
            "波札那"

        Cldr.BY ->
            "白俄羅斯"

        Cldr.BZ ->
            "貝里斯"

        Cldr.CC ->
            "科克斯（基靈）群島"

        Cldr.CD ->
            "剛果（金夏沙）"

        Cldr.CF ->
            "中非共和國"

        Cldr.CG ->
            "剛果（布拉薩）"

        Cldr.CI ->
            "象牙海岸"

        Cldr.CK ->
            "庫克群島"

        Cldr.CM ->
            "喀麥隆"

        Cldr.CN ->
            "中國"

        Cldr.CO ->
            "哥倫比亞"

        Cldr.CR ->
            "哥斯大黎加"

        Cldr.CV ->
            "維德角"

        Cldr.CW ->
            "庫拉索"

        Cldr.CX ->
            "聖誕島"

        Cldr.CY ->
            "賽普勒斯"

        Cldr.DE ->
            "德國"

        Cldr.DJ ->
            "吉布地"

        Cldr.DK ->
            "丹麥"

        Cldr.DO ->
            "多明尼加共和國"

        Cldr.DZ ->
            "阿爾及利亞"

        Cldr.EC ->
            "厄瓜多"

        Cldr.EE ->
            "愛沙尼亞"

        Cldr.ER ->
            "厄利垂亞"

        Cldr.ET ->
            "衣索比亞"

        Cldr.FI ->
            "芬蘭"

        Cldr.FJ ->
            "斐濟"

        Cldr.FK ->
            "福克蘭群島"

        Cldr.FM ->
            "密克羅尼西亞"

        Cldr.FO ->
            "法羅群島"

        Cldr.FR ->
            "法國"

        Cldr.GA ->
            "加彭"

        Cldr.GB ->
            "英國"

        Cldr.GD ->
            "格瑞那達"

        Cldr.GE ->
            "喬治亞"

        Cldr.GF ->
            "法屬圭亞那"

        Cldr.GG ->
            "根息"

        Cldr.GH ->
            "迦納"

        Cldr.GI ->
            "直布羅陀"

        Cldr.GL ->
            "格陵蘭"

        Cldr.GM ->
            "甘比亞"

        Cldr.GN ->
            "幾內亞"

        Cldr.GP ->
            "瓜地洛普"

        Cldr.GQ ->
            "赤道幾內亞"

        Cldr.GR ->
            "希臘"

        Cldr.GS ->
            "南喬治亞與南三明治群島"

        Cldr.GT_ ->
            "瓜地馬拉"

        Cldr.GU ->
            "關島"

        Cldr.GW ->
            "幾內亞比索"

        Cldr.GY ->
            "蓋亞那"

        Cldr.HK ->
            "中國香港特別行政區"

        Cldr.HM ->
            "赫德島及麥唐納群島"

        Cldr.HN ->
            "宏都拉斯"

        Cldr.HR ->
            "克羅埃西亞"

        Cldr.ID ->
            "印尼"

        Cldr.IE ->
            "愛爾蘭"

        Cldr.IM ->
            "曼島"

        Cldr.IO ->
            "英屬印度洋領地"

        Cldr.IS ->
            "冰島"

        Cldr.IT ->
            "義大利"

        Cldr.JE ->
            "澤西島"

        Cldr.JM ->
            "牙買加"

        Cldr.JO ->
            "約旦"

        Cldr.KE ->
            "肯亞"

        Cldr.KG ->
            "吉爾吉斯"

        Cldr.KI ->
            "吉里巴斯"

        Cldr.KM ->
            "葛摩"

        Cldr.KN ->
            "聖克里斯多福及尼維斯"

        Cldr.KP ->
            "北韓"

        Cldr.KR ->
            "南韓"

        Cldr.KY ->
            "開曼群島"

        Cldr.KZ ->
            "哈薩克"

        Cldr.LA ->
            "寮國"

        Cldr.LC ->
            "聖露西亞"

        Cldr.LI ->
            "列支敦斯登"

        Cldr.LK ->
            "斯里蘭卡"

        Cldr.LR ->
            "賴比瑞亞"

        Cldr.LS ->
            "賴索托"

        Cldr.LU ->
            "盧森堡"

        Cldr.LV ->
            "拉脫維亞"

        Cldr.LY ->
            "利比亞"

        Cldr.MC ->
            "摩納哥"

        Cldr.MD ->
            "摩爾多瓦"

        Cldr.ME ->
            "蒙特內哥羅"

        Cldr.MF ->
            "法屬聖馬丁"

        Cldr.MG ->
            "馬達加斯加"

        Cldr.MH ->
            "馬紹爾群島"

        Cldr.MK ->
            "北馬其頓"

        Cldr.ML ->
            "馬利"

        Cldr.MM ->
            "緬甸"

        Cldr.MO ->
            "中國澳門特別行政區"

        Cldr.MP ->
            "北馬利安納群島"

        Cldr.MQ ->
            "馬丁尼克"

        Cldr.MR ->
            "茅利塔尼亞"

        Cldr.MS ->
            "蒙哲臘"

        Cldr.MT ->
            "馬爾他"

        Cldr.MU ->
            "模里西斯"

        Cldr.MV ->
            "馬爾地夫"

        Cldr.MW ->
            "馬拉威"

        Cldr.MY ->
            "馬來西亞"

        Cldr.MZ ->
            "莫三比克"

        Cldr.NA ->
            "納米比亞"

        Cldr.NC ->
            "新喀里多尼亞"

        Cldr.NE ->
            "尼日"

        Cldr.NF ->
            "諾福克島"

        Cldr.NG ->
            "奈及利亞"

        Cldr.NL ->
            "荷蘭"

        Cldr.NP ->
            "尼泊爾"

        Cldr.NR ->
            "諾魯"

        Cldr.NU ->
            "紐埃島"

        Cldr.NZ ->
            "紐西蘭"

        Cldr.PA ->
            "巴拿馬"

        Cldr.PE ->
            "秘魯"

        Cldr.PF ->
            "法屬玻里尼西亞"

        Cldr.PG ->
            "巴布亞紐幾內亞"

        Cldr.PH ->
            "菲律賓"

        Cldr.PL ->
            "波蘭"

        Cldr.PM ->
            "聖皮埃與密克隆群島"

        Cldr.PN ->
            "皮特肯群島"

        Cldr.PS ->
            "巴勒斯坦自治區"

        Cldr.PW ->
            "帛琉"

        Cldr.QA ->
            "卡達"

        Cldr.RE ->
            "留尼旺"

        Cldr.RO ->
            "羅馬尼亞"

        Cldr.RS ->
            "塞爾維亞"

        Cldr.RU ->
            "俄羅斯"

        Cldr.RW ->
            "盧安達"

        Cldr.SA ->
            "沙烏地阿拉伯"

        Cldr.SB ->
            "索羅門群島"

        Cldr.SC ->
            "塞席爾"

        Cldr.SD ->
            "蘇丹"

        Cldr.SH ->
            "聖赫勒拿島"

        Cldr.SI ->
            "斯洛維尼亞"

        Cldr.SJ ->
            "挪威屬斯瓦巴及尖棉"

        Cldr.SL ->
            "獅子山"

        Cldr.SM ->
            "聖馬利諾"

        Cldr.SN ->
            "塞內加爾"

        Cldr.SO ->
            "索馬利亞"

        Cldr.SR ->
            "蘇利南"

        Cldr.SS ->
            "南蘇丹"

        Cldr.ST ->
            "聖多美普林西比"

        Cldr.SV ->
            "薩爾瓦多"

        Cldr.SX ->
            "荷屬聖馬丁"

        Cldr.SY ->
            "敘利亞"

        Cldr.SZ ->
            "史瓦帝尼"

        Cldr.TC ->
            "土克斯及開科斯群島"

        Cldr.TD ->
            "查德"

        Cldr.TF ->
            "法屬南部屬地"

        Cldr.TH ->
            "泰國"

        Cldr.TJ ->
            "塔吉克"

        Cldr.TK ->
            "托克勞群島"

        Cldr.TL ->
            "東帝汶"

        Cldr.TM ->
            "土庫曼"

        Cldr.TN ->
            "突尼西亞"

        Cldr.TO ->
            "東加"

        Cldr.TT ->
            "千里達及托巴哥"

        Cldr.TV ->
            "吐瓦魯"

        Cldr.TW ->
            "台灣"

        Cldr.TZ ->
            "坦尚尼亞"

        Cldr.UA ->
            "烏克蘭"

        Cldr.UG ->
            "烏干達"

        Cldr.UM ->
            "美國本土外小島嶼"

        Cldr.US ->
            "美國"

        Cldr.UY ->
            "烏拉圭"

        Cldr.UZ ->
            "烏茲別克"

        Cldr.VA ->
            "梵蒂岡"

        Cldr.VC ->
            "聖文森及格瑞那丁"

        Cldr.VE ->
            "委內瑞拉"

        Cldr.VG ->
            "英屬維京群島"

        Cldr.VI ->
            "美屬維京群島"

        Cldr.VU ->
            "萬那杜"

        Cldr.WF ->
            "瓦利斯群島和富圖那群島"

        Cldr.WS ->
            "薩摩亞"

        Cldr.YE ->
            "葉門"

        Cldr.YT ->
            "馬約特島"

        Cldr.ZM ->
            "尚比亞"

        Cldr.ZW ->
            "辛巴威"

        _ ->
            Cldr.Chinese.countryCodeToName countryCode