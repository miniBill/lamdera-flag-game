module Cldr.Cantonese.Simplified exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Cantonese


{-| Name for `CountryCode` in Cantonese (Simplified).

    AD 安道尔
    AE 阿拉伯联合大公国
    AF 阿富汗
    AG 安提瓜同巴布达
    AI 安圭拉
    AL 阿尔巴尼亚
    AM 亚美尼亚
    AO 安哥拉
    AQ 南极洲
    AR 阿根廷
    AS 美属萨摩亚
    AT 奥地利
    AU 澳洲
    AW 荷属阿鲁巴
    AX 奥兰群岛
    AZ 亚塞拜然
    BA 波斯尼亚同黑塞哥维那
    BB 巴贝多
    BD 孟加拉
    BE 比利时
    BF 布吉纳法索
    BG 保加利亚
    BH 巴林
    BI 蒲隆地
    BJ 贝南
    BL 圣巴瑟米
    BM 百慕达
    BN 汶莱
    BO 玻利维亚
    BQ 荷兰加勒比区
    BR 巴西
    BS 巴哈马
    BT 不丹
    BV 布威岛
    BW 波札那
    BY 白俄罗斯
    BZ 贝里斯
    CA 加拿大
    CC 科科斯（基林）群岛
    CD 刚果民主共和国
    CF 中非共和国
    CG 刚果共和国
    CH 瑞士
    CI 象牙海岸
    CK 库克群岛
    CL 智利
    CM 喀麦隆
    CN 中华人民共和国
    CO 哥伦比亚
    CR 哥斯大黎加
    CU 古巴
    CV 维德角
    CW 库拉索
    CX 圣诞岛
    CY 赛普勒斯
    CZ 捷克共和国
    DE 德国
    DJ 吉布地
    DK 丹麦
    DM 多米尼克
    DO 多明尼加共和国
    DZ 阿尔及利亚
    EC 厄瓜多
    EE 爱沙尼亚
    EG 埃及
    EH 西撒哈拉
    ER 厄利垂亚
    ES 西班牙
    ET 衣索比亚
    FI 芬兰
    FJ 斐济
    FK 福克兰群岛
    FM 密克罗尼西亚群岛
    FO 法罗群岛
    FR 法国
    GA 加彭
    GB 英国
    GD 格瑞那达
    GE 乔治亚共和国
    GF 法属圭亚那
    GG 根西岛
    GH 迦纳
    GI 直布罗陀
    GL 格陵兰
    GM 甘比亚
    GN 几内亚
    GP 瓜地洛普
    GQ 赤道几内亚
    GR 希腊
    GS 南佐治亚岛同南桑威奇群岛
    GT 瓜地马拉
    GU 关岛
    GW 几内亚比索
    GY 盖亚那
    HK 香港
    HM 赫德岛同麦克唐纳群岛
    HN 宏都拉斯
    HR 克罗埃西亚
    HT 海地
    HU 匈牙利
    ID 印尼
    IE 爱尔兰
    IL 以色列
    IM 曼岛
    IN 印度
    IO 英属印度洋领地
    IQ 伊拉克
    IR 伊朗
    IS 冰岛
    IT 义大利
    JE 泽西岛
    JM 牙买加
    JO 约旦
    JP 日本
    KE 肯亚
    KG 吉尔吉斯
    KH 柬埔寨
    KI 吉里巴斯
    KM 葛摩
    KN 圣基茨同尼维斯
    KP 北韩
    KR 南韩
    KW 科威特
    KY 开曼群岛
    KZ 哈萨克
    LA 寮国
    LB 黎巴嫩
    LC 圣露西亚
    LI 列支敦斯登
    LK 斯里兰卡
    LR 赖比瑞亚
    LS 赖索托
    LT 立陶宛
    LU 卢森堡
    LV 拉脱维亚
    LY 利比亚
    MA 摩洛哥
    MC 摩纳哥
    MD 摩尔多瓦
    ME 蒙特内哥罗
    MF 法属圣马丁
    MG 马达加斯加
    MH 马绍尔群岛
    MK 马其顿
    ML 马利
    MM 缅甸
    MN 蒙古
    MO 澳门
    MP 北马里亚纳群岛
    MQ 马丁尼克岛
    MR 茅利塔尼亚
    MS 蒙哲腊
    MT 马尔他
    MU 模里西斯
    MV 马尔地夫
    MW 马拉威
    MX 墨西哥
    MY 马来西亚
    MZ 莫三比克
    NA 纳米比亚
    NC 新喀里多尼亚
    NE 尼日
    NF 诺福克岛
    NG 奈及利亚
    NI 尼加拉瓜
    NL 荷兰
    NO 挪威
    NP 尼泊尔
    NR 诺鲁
    NU 纽埃岛
    NZ 纽西兰
    OM 阿曼王国
    PA 巴拿马
    PE 秘鲁
    PF 法属玻里尼西亚
    PG 巴布亚纽几内亚
    PH 菲律宾
    PK 巴基斯坦
    PL 波兰
    PM 圣皮埃尔同密克隆群岛
    PN 皮特肯群岛
    PR 波多黎各
    PS 巴勒斯坦
    PT 葡萄牙
    PW 帛琉
    PY 巴拉圭
    QA 卡达
    RE 留尼旺
    RO 罗马尼亚
    RS 塞尔维亚
    RU 俄罗斯
    RW 卢安达
    SA 沙乌地阿拉伯
    SB 索罗门群岛
    SC 塞席尔
    SD 苏丹
    SE 瑞典
    SG 新加坡
    SH 圣赫勒拿岛
    SI 斯洛维尼亚
    SJ 斯瓦尔巴特群岛同扬马延岛
    SK 斯洛伐克
    SL 狮子山
    SM 圣马利诺
    SN 塞内加尔
    SO 索马利亚
    SR 苏利南
    SS 南苏丹
    ST 圣多美同普林西比
    SV 萨尔瓦多
    SX 荷属圣马丁
    SY 叙利亚
    SZ 史瓦济兰
    TC 土克斯及开科斯群岛
    TD 查德
    TF 法属南方属地
    TG 多哥
    TH 泰国
    TJ 塔吉克
    TK 托克劳群岛
    TL 东帝汶
    TM 土库曼
    TN 突尼西亚
    TO 东加
    TR 土耳其
    TT 千里达同多巴哥
    TV 吐瓦鲁
    TW 台湾
    TZ 坦尚尼亚
    UA 乌克兰
    UG 乌干达
    UM 美国本土外小岛屿
    US 美国
    UY 乌拉圭
    UZ 乌兹别克
    VA 梵蒂冈
    VC 圣文森特同格林纳丁斯
    VE 委内瑞拉
    VG 英属维京群岛
    VI 美属维京群岛
    VN 越南
    VU 万那杜
    WF 瓦利斯同富图纳群岛
    WS 萨摩亚
    XK 科索沃
    YE 叶门
    YT 马约特
    ZA 南非
    ZM 尚比亚
    ZW 辛巴威
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "安道尔"

        Cldr.AE ->
            "阿拉伯联合大公国"

        Cldr.AG ->
            "安提瓜同巴布达"

        Cldr.AL ->
            "阿尔巴尼亚"

        Cldr.AM ->
            "亚美尼亚"

        Cldr.AQ ->
            "南极洲"

        Cldr.AS ->
            "美属萨摩亚"

        Cldr.AT ->
            "奥地利"

        Cldr.AW ->
            "荷属阿鲁巴"

        Cldr.AX ->
            "奥兰群岛"

        Cldr.AZ ->
            "亚塞拜然"

        Cldr.BA ->
            "波斯尼亚同黑塞哥维那"

        Cldr.BB ->
            "巴贝多"

        Cldr.BE ->
            "比利时"

        Cldr.BF ->
            "布吉纳法索"

        Cldr.BG ->
            "保加利亚"

        Cldr.BJ ->
            "贝南"

        Cldr.BL ->
            "圣巴瑟米"

        Cldr.BM ->
            "百慕达"

        Cldr.BN ->
            "汶莱"

        Cldr.BO ->
            "玻利维亚"

        Cldr.BQ ->
            "荷兰加勒比区"

        Cldr.BS ->
            "巴哈马"

        Cldr.BV ->
            "布威岛"

        Cldr.BY ->
            "白俄罗斯"

        Cldr.BZ ->
            "贝里斯"

        Cldr.CC ->
            "科科斯（基林）群岛"

        Cldr.CD ->
            "刚果民主共和国"

        Cldr.CF ->
            "中非共和国"

        Cldr.CG ->
            "刚果共和国"

        Cldr.CK ->
            "库克群岛"

        Cldr.CM ->
            "喀麦隆"

        Cldr.CN ->
            "中华人民共和国"

        Cldr.CO ->
            "哥伦比亚"

        Cldr.CV ->
            "维德角"

        Cldr.CW ->
            "库拉索"

        Cldr.CX ->
            "圣诞岛"

        Cldr.CY ->
            "赛普勒斯"

        Cldr.CZ ->
            "捷克共和国"

        Cldr.DE ->
            "德国"

        Cldr.DK ->
            "丹麦"

        Cldr.DO ->
            "多明尼加共和国"

        Cldr.DZ ->
            "阿尔及利亚"

        Cldr.EE ->
            "爱沙尼亚"

        Cldr.ER ->
            "厄利垂亚"

        Cldr.ET ->
            "衣索比亚"

        Cldr.FI ->
            "芬兰"

        Cldr.FJ ->
            "斐济"

        Cldr.FK ->
            "福克兰群岛"

        Cldr.FM ->
            "密克罗尼西亚群岛"

        Cldr.FO ->
            "法罗群岛"

        Cldr.FR ->
            "法国"

        Cldr.GB ->
            "英国"

        Cldr.GD ->
            "格瑞那达"

        Cldr.GE ->
            "乔治亚共和国"

        Cldr.GF ->
            "法属圭亚那"

        Cldr.GG ->
            "根西岛"

        Cldr.GH ->
            "迦纳"

        Cldr.GI ->
            "直布罗陀"

        Cldr.GL ->
            "格陵兰"

        Cldr.GM ->
            "甘比亚"

        Cldr.GN ->
            "几内亚"

        Cldr.GQ ->
            "赤道几内亚"

        Cldr.GR ->
            "希腊"

        Cldr.GS ->
            "南佐治亚岛同南桑威奇群岛"

        Cldr.GT_ ->
            "瓜地马拉"

        Cldr.GU ->
            "关岛"

        Cldr.GW ->
            "几内亚比索"

        Cldr.GY ->
            "盖亚那"

        Cldr.HM ->
            "赫德岛同麦克唐纳群岛"

        Cldr.HR ->
            "克罗埃西亚"

        Cldr.IE ->
            "爱尔兰"

        Cldr.IM ->
            "曼岛"

        Cldr.IO ->
            "英属印度洋领地"

        Cldr.IS ->
            "冰岛"

        Cldr.IT ->
            "义大利"

        Cldr.JE ->
            "泽西岛"

        Cldr.JM ->
            "牙买加"

        Cldr.JO ->
            "约旦"

        Cldr.KE ->
            "肯亚"

        Cldr.KG ->
            "吉尔吉斯"

        Cldr.KN ->
            "圣基茨同尼维斯"

        Cldr.KP ->
            "北韩"

        Cldr.KR ->
            "南韩"

        Cldr.KY ->
            "开曼群岛"

        Cldr.KZ ->
            "哈萨克"

        Cldr.LA ->
            "寮国"

        Cldr.LC ->
            "圣露西亚"

        Cldr.LK ->
            "斯里兰卡"

        Cldr.LR ->
            "赖比瑞亚"

        Cldr.LS ->
            "赖索托"

        Cldr.LU ->
            "卢森堡"

        Cldr.LV ->
            "拉脱维亚"

        Cldr.LY ->
            "利比亚"

        Cldr.MC ->
            "摩纳哥"

        Cldr.MD ->
            "摩尔多瓦"

        Cldr.ME ->
            "蒙特内哥罗"

        Cldr.MF ->
            "法属圣马丁"

        Cldr.MG ->
            "马达加斯加"

        Cldr.MH ->
            "马绍尔群岛"

        Cldr.MK ->
            "马其顿"

        Cldr.ML ->
            "马利"

        Cldr.MM ->
            "缅甸"

        Cldr.MO ->
            "澳门"

        Cldr.MP ->
            "北马里亚纳群岛"

        Cldr.MQ ->
            "马丁尼克岛"

        Cldr.MR ->
            "茅利塔尼亚"

        Cldr.MS ->
            "蒙哲腊"

        Cldr.MT ->
            "马尔他"

        Cldr.MV ->
            "马尔地夫"

        Cldr.MW ->
            "马拉威"

        Cldr.MY ->
            "马来西亚"

        Cldr.NA ->
            "纳米比亚"

        Cldr.NC ->
            "新喀里多尼亚"

        Cldr.NF ->
            "诺福克岛"

        Cldr.NG ->
            "奈及利亚"

        Cldr.NL ->
            "荷兰"

        Cldr.NP ->
            "尼泊尔"

        Cldr.NR ->
            "诺鲁"

        Cldr.NU ->
            "纽埃岛"

        Cldr.NZ ->
            "纽西兰"

        Cldr.OM ->
            "阿曼王国"

        Cldr.PA ->
            "巴拿马"

        Cldr.PE ->
            "秘鲁"

        Cldr.PF ->
            "法属玻里尼西亚"

        Cldr.PG ->
            "巴布亚纽几内亚"

        Cldr.PH ->
            "菲律宾"

        Cldr.PL ->
            "波兰"

        Cldr.PM ->
            "圣皮埃尔同密克隆群岛"

        Cldr.PN ->
            "皮特肯群岛"

        Cldr.QA ->
            "卡达"

        Cldr.RO ->
            "罗马尼亚"

        Cldr.RS ->
            "塞尔维亚"

        Cldr.RU ->
            "俄罗斯"

        Cldr.RW ->
            "卢安达"

        Cldr.SA ->
            "沙乌地阿拉伯"

        Cldr.SB ->
            "索罗门群岛"

        Cldr.SC ->
            "塞席尔"

        Cldr.SD ->
            "苏丹"

        Cldr.SH ->
            "圣赫勒拿岛"

        Cldr.SI ->
            "斯洛维尼亚"

        Cldr.SJ ->
            "斯瓦尔巴特群岛同扬马延岛"

        Cldr.SL ->
            "狮子山"

        Cldr.SM ->
            "圣马利诺"

        Cldr.SN ->
            "塞内加尔"

        Cldr.SO ->
            "索马利亚"

        Cldr.SR ->
            "苏利南"

        Cldr.SS ->
            "南苏丹"

        Cldr.ST ->
            "圣多美同普林西比"

        Cldr.SV ->
            "萨尔瓦多"

        Cldr.SX ->
            "荷属圣马丁"

        Cldr.SY ->
            "叙利亚"

        Cldr.SZ ->
            "史瓦济兰"

        Cldr.TC ->
            "土克斯及开科斯群岛"

        Cldr.TF ->
            "法属南方属地"

        Cldr.TH ->
            "泰国"

        Cldr.TK ->
            "托克劳群岛"

        Cldr.TL ->
            "东帝汶"

        Cldr.TM ->
            "土库曼"

        Cldr.TN ->
            "突尼西亚"

        Cldr.TO ->
            "东加"

        Cldr.TT ->
            "千里达同多巴哥"

        Cldr.TV ->
            "吐瓦鲁"

        Cldr.TW ->
            "台湾"

        Cldr.TZ ->
            "坦尚尼亚"

        Cldr.UA ->
            "乌克兰"

        Cldr.UG ->
            "乌干达"

        Cldr.UM ->
            "美国本土外小岛屿"

        Cldr.US ->
            "美国"

        Cldr.UY ->
            "乌拉圭"

        Cldr.UZ ->
            "乌兹别克"

        Cldr.VA ->
            "梵蒂冈"

        Cldr.VC ->
            "圣文森特同格林纳丁斯"

        Cldr.VE ->
            "委内瑞拉"

        Cldr.VG ->
            "英属维京群岛"

        Cldr.VI ->
            "美属维京群岛"

        Cldr.VU ->
            "万那杜"

        Cldr.WF ->
            "瓦利斯同富图纳群岛"

        Cldr.WS ->
            "萨摩亚"

        Cldr.YE ->
            "叶门"

        Cldr.YT ->
            "马约特"

        Cldr.ZM ->
            "尚比亚"

        _ ->
            Cldr.Cantonese.countryCodeToName countryCode