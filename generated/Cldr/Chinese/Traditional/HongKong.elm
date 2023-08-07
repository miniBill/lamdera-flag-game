module Cldr.Chinese.Traditional.HongKong exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Chinese.Traditional


{-| Name for `CountryCode` in Chinese (Traditional) - Hong Kong.

    AD 安道爾
    AE 阿拉伯聯合酋長國
    AF 阿富汗
    AG 安提瓜和巴布達
    AI 安奎拉
    AL 阿爾巴尼亞
    AM 亞美尼亞
    AO 安哥拉
    AQ 南極洲
    AR 阿根廷
    AS 美屬薩摩亞
    AT 奧地利
    AU 澳洲
    AW 阿魯巴
    AX 奧蘭群島
    AZ 亞塞拜疆
    BA 波斯尼亞和黑塞哥維那
    BB 巴巴多斯
    BD 孟加拉
    BE 比利時
    BF 布基納法索
    BG 保加利亞
    BH 巴林
    BI 布隆迪
    BJ 貝寧
    BL 聖巴泰勒米
    BM 百慕達
    BN 汶萊
    BO 玻利維亞
    BQ 荷蘭加勒比區
    BR 巴西
    BS 巴哈馬
    BT 不丹
    BV 鮑威特島
    BW 博茨瓦納
    BY 白俄羅斯
    BZ 伯利茲
    CA 加拿大
    CC 科科斯 (基林) 群島
    CD 剛果民主共和國
    CF 中非共和國
    CG 剛果共和國
    CH 瑞士
    CI 科特迪瓦
    CK 庫克群島
    CL 智利
    CM 喀麥隆
    CN 中國
    CO 哥倫比亞
    CR 哥斯達黎加
    CU 古巴
    CV 佛得角
    CW 庫拉索
    CX 聖誕島
    CY 塞浦路斯
    CZ 捷克共和國
    DE 德國
    DJ 吉布提
    DK 丹麥
    DM 多米尼克
    DO 多米尼加共和國
    DZ 阿爾及利亞
    EC 厄瓜多爾
    EE 愛沙尼亞
    EG 埃及
    EH 西撒哈拉
    ER 厄立特里亞
    ES 西班牙
    ET 埃塞俄比亞
    FI 芬蘭
    FJ 斐濟
    FK 福克蘭群島
    FM 密克羅尼西亞
    FO 法羅群島
    FR 法國
    GA 加蓬
    GB 英國
    GD 格林納達
    GE 格魯吉亞
    GF 法屬圭亞那
    GG 根息
    GH 加納
    GI 直布羅陀
    GL 格陵蘭
    GM 岡比亞
    GN 幾內亞
    GP 瓜地洛普
    GQ 赤道幾內亞
    GR 希臘
    GS 南佐治亞島與南桑威奇群島
    GT 危地馬拉
    GU 關島
    GW 幾內亞比紹
    GY 圭亞那
    HK 香港
    HM 赫德島及麥唐納群島
    HN 洪都拉斯
    HR 克羅地亞
    HT 海地
    HU 匈牙利
    ID 印尼
    IE 愛爾蘭
    IL 以色列
    IM 馬恩島
    IN 印度
    IO 英屬印度洋領地
    IQ 伊拉克
    IR 伊朗
    IS 冰島
    IT 意大利
    JE 澤西島
    JM 牙買加
    JO 約旦
    JP 日本
    KE 肯尼亞
    KG 吉爾吉斯
    KH 柬埔寨
    KI 吉里巴斯
    KM 科摩羅
    KN 聖基茨和尼維斯
    KP 北韓
    KR 南韓
    KW 科威特
    KY 開曼群島
    KZ 哈薩克
    LA 老撾
    LB 黎巴嫩
    LC 聖盧西亞
    LI 列支敦士登
    LK 斯里蘭卡
    LR 利比里亞
    LS 萊索托
    LT 立陶宛
    LU 盧森堡
    LV 拉脫維亞
    LY 利比亞
    MA 摩洛哥
    MC 摩納哥
    MD 摩爾多瓦
    ME 黑山
    MF 法屬聖馬丁
    MG 馬達加斯加
    MH 馬紹爾群島
    MK 北馬其頓
    ML 馬里
    MM 緬甸
    MN 蒙古
    MO 澳門
    MP 北馬利安納群島
    MQ 馬丁尼克
    MR 毛里塔尼亞
    MS 蒙特塞拉特
    MT 馬耳他
    MU 毛里裘斯
    MV 馬爾代夫
    MW 馬拉維
    MX 墨西哥
    MY 馬來西亞
    MZ 莫桑比克
    NA 納米比亞
    NC 新喀里多尼亞
    NE 尼日爾
    NF 諾福克島
    NG 尼日利亞
    NI 尼加拉瓜
    NL 荷蘭
    NO 挪威
    NP 尼泊爾
    NR 瑙魯
    NU 紐埃島
    NZ 紐西蘭
    OM 阿曼
    PA 巴拿馬
    PE 秘魯
    PF 法屬波利尼西亞
    PG 巴布亞新畿內亞
    PH 菲律賓
    PK 巴基斯坦
    PL 波蘭
    PM 聖皮埃與密克隆群島
    PN 皮特凱恩島
    PR 波多黎各
    PS 巴勒斯坦
    PT 葡萄牙
    PW 帛琉
    PY 巴拉圭
    QA 卡塔爾
    RE 留尼旺
    RO 羅馬尼亞
    RS 塞爾維亞
    RU 俄羅斯
    RW 盧旺達
    SA 沙地阿拉伯
    SB 所羅門群島
    SC 塞舌爾
    SD 蘇丹
    SE 瑞典
    SG 新加坡
    SH 聖赫勒拿島
    SI 斯洛文尼亞
    SJ 斯瓦爾巴特群島及揚馬延島
    SK 斯洛伐克
    SL 塞拉利昂
    SM 聖馬力諾
    SN 塞內加爾
    SO 索馬里
    SR 蘇里南
    SS 南蘇丹
    ST 聖多美和普林西比
    SV 薩爾瓦多
    SX 荷屬聖馬丁
    SY 敘利亞
    SZ 斯威士蘭
    TC 特克斯和凱科斯群島
    TD 乍得
    TF 法屬南部領地
    TG 多哥
    TH 泰國
    TJ 塔吉克
    TK 托克勞群島
    TL 東帝汶
    TM 土庫曼
    TN 突尼西亞
    TO 湯加
    TR 土耳其
    TT 千里達和多巴哥
    TV 圖瓦盧
    TW 台灣
    TZ 坦桑尼亞
    UA 烏克蘭
    UG 烏干達
    UM 美國本土外小島嶼
    US 美國
    UY 烏拉圭
    UZ 烏茲別克
    VA 梵蒂岡
    VC 聖文森特和格林納丁斯
    VE 委內瑞拉
    VG 英屬維爾京群島
    VI 美屬維爾京群島
    VN 越南
    VU 瓦努阿圖
    WF 瓦利斯群島和富圖那群島
    WS 薩摩亞
    XK 科索沃
    YE 也門
    YT 馬約特
    ZA 南非
    ZM 贊比亞
    ZW 津巴布韋
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AE ->
            "阿拉伯聯合酋長國"

        Cldr.AG ->
            "安提瓜和巴布達"

        Cldr.AW ->
            "阿魯巴"

        Cldr.AZ ->
            "亞塞拜疆"

        Cldr.BA ->
            "波斯尼亞和黑塞哥維那"

        Cldr.BB ->
            "巴巴多斯"

        Cldr.BF ->
            "布基納法索"

        Cldr.BI ->
            "布隆迪"

        Cldr.BJ ->
            "貝寧"

        Cldr.BL ->
            "聖巴泰勒米"

        Cldr.BV ->
            "鮑威特島"

        Cldr.BW ->
            "博茨瓦納"

        Cldr.BZ ->
            "伯利茲"

        Cldr.CC ->
            "科科斯 (基林) 群島"

        Cldr.CI ->
            "科特迪瓦"

        Cldr.CR ->
            "哥斯達黎加"

        Cldr.CV ->
            "佛得角"

        Cldr.CY ->
            "塞浦路斯"

        Cldr.DJ ->
            "吉布提"

        Cldr.DO ->
            "多米尼加共和國"

        Cldr.EC ->
            "厄瓜多爾"

        Cldr.ER ->
            "厄立特里亞"

        Cldr.ET ->
            "埃塞俄比亞"

        Cldr.GA ->
            "加蓬"

        Cldr.GD ->
            "格林納達"

        Cldr.GE ->
            "格魯吉亞"

        Cldr.GH ->
            "加納"

        Cldr.GM ->
            "岡比亞"

        Cldr.GS ->
            "南佐治亞島與南桑威奇群島"

        Cldr.GT_ ->
            "危地馬拉"

        Cldr.GW ->
            "幾內亞比紹"

        Cldr.GY ->
            "圭亞那"

        Cldr.HN ->
            "洪都拉斯"

        Cldr.HR ->
            "克羅地亞"

        Cldr.IM ->
            "馬恩島"

        Cldr.IT ->
            "意大利"

        Cldr.KE ->
            "肯尼亞"

        Cldr.KM ->
            "科摩羅"

        Cldr.KN ->
            "聖基茨和尼維斯"

        Cldr.LA ->
            "老撾"

        Cldr.LC ->
            "聖盧西亞"

        Cldr.LI ->
            "列支敦士登"

        Cldr.LR ->
            "利比里亞"

        Cldr.LS ->
            "萊索托"

        Cldr.ME ->
            "黑山"

        Cldr.ML ->
            "馬里"

        Cldr.MR ->
            "毛里塔尼亞"

        Cldr.MS ->
            "蒙特塞拉特"

        Cldr.MT ->
            "馬耳他"

        Cldr.MU ->
            "毛里裘斯"

        Cldr.MV ->
            "馬爾代夫"

        Cldr.MW ->
            "馬拉維"

        Cldr.MZ ->
            "莫桑比克"

        Cldr.NE ->
            "尼日爾"

        Cldr.NG ->
            "尼日利亞"

        Cldr.NR ->
            "瑙魯"

        Cldr.PF ->
            "法屬波利尼西亞"

        Cldr.PG ->
            "巴布亞新畿內亞"

        Cldr.PN ->
            "皮特凱恩島"

        Cldr.QA ->
            "卡塔爾"

        Cldr.RW ->
            "盧旺達"

        Cldr.SA ->
            "沙地阿拉伯"

        Cldr.SB ->
            "所羅門群島"

        Cldr.SC ->
            "塞舌爾"

        Cldr.SI ->
            "斯洛文尼亞"

        Cldr.SJ ->
            "斯瓦爾巴特群島及揚馬延島"

        Cldr.SL ->
            "塞拉利昂"

        Cldr.SM ->
            "聖馬力諾"

        Cldr.SO ->
            "索馬里"

        Cldr.SR ->
            "蘇里南"

        Cldr.ST ->
            "聖多美和普林西比"

        Cldr.SZ ->
            "斯威士蘭"

        Cldr.TC ->
            "特克斯和凱科斯群島"

        Cldr.TD ->
            "乍得"

        Cldr.TF ->
            "法屬南部領地"

        Cldr.TO ->
            "湯加"

        Cldr.TT ->
            "千里達和多巴哥"

        Cldr.TV ->
            "圖瓦盧"

        Cldr.TZ ->
            "坦桑尼亞"

        Cldr.VC ->
            "聖文森特和格林納丁斯"

        Cldr.VG ->
            "英屬維爾京群島"

        Cldr.VI ->
            "美屬維爾京群島"

        Cldr.VU ->
            "瓦努阿圖"

        Cldr.YE ->
            "也門"

        Cldr.YT ->
            "馬約特"

        Cldr.ZM ->
            "贊比亞"

        Cldr.ZW ->
            "津巴布韋"

        _ ->
            Cldr.Chinese.Traditional.countryCodeToName countryCode