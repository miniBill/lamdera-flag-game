module Cldr.Chinese exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Chinese.

    AD 安道尔
    AE 阿拉伯联合酋长国
    AF 阿富汗
    AG 安提瓜和巴布达
    AI 安圭拉
    AL 阿尔巴尼亚
    AM 亚美尼亚
    AO 安哥拉
    AQ 南极洲
    AR 阿根廷
    AS 美属萨摩亚
    AT 奥地利
    AU 澳大利亚
    AW 阿鲁巴
    AX 奥兰群岛
    AZ 阿塞拜疆
    BA 波斯尼亚和黑塞哥维那
    BB 巴巴多斯
    BD 孟加拉国
    BE 比利时
    BF 布基纳法索
    BG 保加利亚
    BH 巴林
    BI 布隆迪
    BJ 贝宁
    BL 圣巴泰勒米
    BM 百慕大
    BN 文莱
    BO 玻利维亚
    BQ 荷属加勒比区
    BR 巴西
    BS 巴哈马
    BT 不丹
    BV 布韦岛
    BW 博茨瓦纳
    BY 白俄罗斯
    BZ 伯利兹
    CA 加拿大
    CC 科科斯（基林）群岛
    CD 刚果民主共和国
    CF 中非共和国
    CG 刚果共和国
    CH 瑞士
    CI 科特迪瓦
    CK 库克群岛
    CL 智利
    CM 喀麦隆
    CN 中国
    CO 哥伦比亚
    CR 哥斯达黎加
    CU 古巴
    CV 佛得角
    CW 库拉索
    CX 圣诞岛
    CY 塞浦路斯
    CZ 捷克共和国
    DE 德国
    DJ 吉布提
    DK 丹麦
    DM 多米尼克
    DO 多米尼加共和国
    DZ 阿尔及利亚
    EC 厄瓜多尔
    EE 爱沙尼亚
    EG 埃及
    EH 西撒哈拉
    ER 厄立特里亚
    ES 西班牙
    ET 埃塞俄比亚
    FI 芬兰
    FJ 斐济
    FK 福克兰群岛
    FM 密克罗尼西亚
    FO 法罗群岛
    FR 法国
    GA 加蓬
    GB 英国
    GD 格林纳达
    GE 格鲁吉亚
    GF 法属圭亚那
    GG 根西岛
    GH 加纳
    GI 直布罗陀
    GL 格陵兰
    GM 冈比亚
    GN 几内亚
    GP 瓜德罗普
    GQ 赤道几内亚
    GR 希腊
    GS 南乔治亚和南桑威奇群岛
    GT 危地马拉
    GU 关岛
    GW 几内亚比绍
    GY 圭亚那
    HK 香港
    HM 赫德岛和麦克唐纳群岛
    HN 洪都拉斯
    HR 克罗地亚
    HT 海地
    HU 匈牙利
    ID 印度尼西亚
    IE 爱尔兰
    IL 以色列
    IM 马恩岛
    IN 印度
    IO 英属印度洋领地
    IQ 伊拉克
    IR 伊朗
    IS 冰岛
    IT 意大利
    JE 泽西岛
    JM 牙买加
    JO 约旦
    JP 日本
    KE 肯尼亚
    KG 吉尔吉斯斯坦
    KH 柬埔寨
    KI 基里巴斯
    KM 科摩罗
    KN 圣基茨和尼维斯
    KP 朝鲜
    KR 韩国
    KW 科威特
    KY 开曼群岛
    KZ 哈萨克斯坦
    LA 老挝
    LB 黎巴嫩
    LC 圣卢西亚
    LI 列支敦士登
    LK 斯里兰卡
    LR 利比里亚
    LS 莱索托
    LT 立陶宛
    LU 卢森堡
    LV 拉脱维亚
    LY 利比亚
    MA 摩洛哥
    MC 摩纳哥
    MD 摩尔多瓦
    ME 黑山
    MF 法属圣马丁
    MG 马达加斯加
    MH 马绍尔群岛
    MK 北马其顿
    ML 马里
    MM 缅甸
    MN 蒙古
    MO 澳门
    MP 北马里亚纳群岛
    MQ 马提尼克
    MR 毛里塔尼亚
    MS 蒙特塞拉特
    MT 马耳他
    MU 毛里求斯
    MV 马尔代夫
    MW 马拉维
    MX 墨西哥
    MY 马来西亚
    MZ 莫桑比克
    NA 纳米比亚
    NC 新喀里多尼亚
    NE 尼日尔
    NF 诺福克岛
    NG 尼日利亚
    NI 尼加拉瓜
    NL 荷兰
    NO 挪威
    NP 尼泊尔
    NR 瑙鲁
    NU 纽埃
    NZ 新西兰
    OM 阿曼
    PA 巴拿马
    PE 秘鲁
    PF 法属波利尼西亚
    PG 巴布亚新几内亚
    PH 菲律宾
    PK 巴基斯坦
    PL 波兰
    PM 圣皮埃尔和密克隆群岛
    PN 皮特凯恩群岛
    PR 波多黎各
    PS 巴勒斯坦
    PT 葡萄牙
    PW 帕劳
    PY 巴拉圭
    QA 卡塔尔
    RE 留尼汪
    RO 罗马尼亚
    RS 塞尔维亚
    RU 俄罗斯
    RW 卢旺达
    SA 沙特阿拉伯
    SB 所罗门群岛
    SC 塞舌尔
    SD 苏丹
    SE 瑞典
    SG 新加坡
    SH 圣赫勒拿
    SI 斯洛文尼亚
    SJ 斯瓦尔巴和扬马延
    SK 斯洛伐克
    SL 塞拉利昂
    SM 圣马力诺
    SN 塞内加尔
    SO 索马里
    SR 苏里南
    SS 南苏丹
    ST 圣多美和普林西比
    SV 萨尔瓦多
    SX 荷属圣马丁
    SY 叙利亚
    SZ 斯威士兰
    TC 特克斯和凯科斯群岛
    TD 乍得
    TF 法属南部领地
    TG 多哥
    TH 泰国
    TJ 塔吉克斯坦
    TK 托克劳
    TL 东帝汶
    TM 土库曼斯坦
    TN 突尼斯
    TO 汤加
    TR 土耳其
    TT 特立尼达和多巴哥
    TV 图瓦卢
    TW 台湾
    TZ 坦桑尼亚
    UA 乌克兰
    UG 乌干达
    UM 美国本土外小岛屿
    US 美国
    UY 乌拉圭
    UZ 乌兹别克斯坦
    VA 梵蒂冈
    VC 圣文森特和格林纳丁斯
    VE 委内瑞拉
    VG 英属维尔京群岛
    VI 美属维尔京群岛
    VN 越南
    VU 瓦努阿图
    WF 瓦利斯和富图纳
    WS 萨摩亚
    XK 科索沃
    YE 也门
    YT 马约特
    ZA 南非
    ZM 赞比亚
    ZW 津巴布韦
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "安道尔"

        Cldr.AE ->
            "阿拉伯联合酋长国"

        Cldr.AF ->
            "阿富汗"

        Cldr.AG ->
            "安提瓜和巴布达"

        Cldr.AI ->
            "安圭拉"

        Cldr.AL ->
            "阿尔巴尼亚"

        Cldr.AM ->
            "亚美尼亚"

        Cldr.AO ->
            "安哥拉"

        Cldr.AQ ->
            "南极洲"

        Cldr.AR ->
            "阿根廷"

        Cldr.AS ->
            "美属萨摩亚"

        Cldr.AT ->
            "奥地利"

        Cldr.AU ->
            "澳大利亚"

        Cldr.AW ->
            "阿鲁巴"

        Cldr.AX ->
            "奥兰群岛"

        Cldr.AZ ->
            "阿塞拜疆"

        Cldr.BA ->
            "波斯尼亚和黑塞哥维那"

        Cldr.BB ->
            "巴巴多斯"

        Cldr.BD ->
            "孟加拉国"

        Cldr.BE ->
            "比利时"

        Cldr.BF ->
            "布基纳法索"

        Cldr.BG ->
            "保加利亚"

        Cldr.BH ->
            "巴林"

        Cldr.BI ->
            "布隆迪"

        Cldr.BJ ->
            "贝宁"

        Cldr.BL ->
            "圣巴泰勒米"

        Cldr.BM ->
            "百慕大"

        Cldr.BN ->
            "文莱"

        Cldr.BO ->
            "玻利维亚"

        Cldr.BQ ->
            "荷属加勒比区"

        Cldr.BR ->
            "巴西"

        Cldr.BS ->
            "巴哈马"

        Cldr.BT ->
            "不丹"

        Cldr.BV ->
            "布韦岛"

        Cldr.BW ->
            "博茨瓦纳"

        Cldr.BY ->
            "白俄罗斯"

        Cldr.BZ ->
            "伯利兹"

        Cldr.CA ->
            "加拿大"

        Cldr.CC ->
            "科科斯（基林）群岛"

        Cldr.CD ->
            "刚果民主共和国"

        Cldr.CF ->
            "中非共和国"

        Cldr.CG ->
            "刚果共和国"

        Cldr.CH ->
            "瑞士"

        Cldr.CI ->
            "科特迪瓦"

        Cldr.CK ->
            "库克群岛"

        Cldr.CL ->
            "智利"

        Cldr.CM ->
            "喀麦隆"

        Cldr.CN ->
            "中国"

        Cldr.CO ->
            "哥伦比亚"

        Cldr.CR ->
            "哥斯达黎加"

        Cldr.CU ->
            "古巴"

        Cldr.CV ->
            "佛得角"

        Cldr.CW ->
            "库拉索"

        Cldr.CX ->
            "圣诞岛"

        Cldr.CY ->
            "塞浦路斯"

        Cldr.CZ ->
            "捷克共和国"

        Cldr.DE ->
            "德国"

        Cldr.DJ ->
            "吉布提"

        Cldr.DK ->
            "丹麦"

        Cldr.DM ->
            "多米尼克"

        Cldr.DO ->
            "多米尼加共和国"

        Cldr.DZ ->
            "阿尔及利亚"

        Cldr.EC ->
            "厄瓜多尔"

        Cldr.EE ->
            "爱沙尼亚"

        Cldr.EG ->
            "埃及"

        Cldr.EH ->
            "西撒哈拉"

        Cldr.ER ->
            "厄立特里亚"

        Cldr.ES ->
            "西班牙"

        Cldr.ET ->
            "埃塞俄比亚"

        Cldr.FI ->
            "芬兰"

        Cldr.FJ ->
            "斐济"

        Cldr.FK ->
            "福克兰群岛"

        Cldr.FM ->
            "密克罗尼西亚"

        Cldr.FO ->
            "法罗群岛"

        Cldr.FR ->
            "法国"

        Cldr.GA ->
            "加蓬"

        Cldr.GB ->
            "英国"

        Cldr.GD ->
            "格林纳达"

        Cldr.GE ->
            "格鲁吉亚"

        Cldr.GF ->
            "法属圭亚那"

        Cldr.GG ->
            "根西岛"

        Cldr.GH ->
            "加纳"

        Cldr.GI ->
            "直布罗陀"

        Cldr.GL ->
            "格陵兰"

        Cldr.GM ->
            "冈比亚"

        Cldr.GN ->
            "几内亚"

        Cldr.GP ->
            "瓜德罗普"

        Cldr.GQ ->
            "赤道几内亚"

        Cldr.GR ->
            "希腊"

        Cldr.GS ->
            "南乔治亚和南桑威奇群岛"

        Cldr.GT_ ->
            "危地马拉"

        Cldr.GU ->
            "关岛"

        Cldr.GW ->
            "几内亚比绍"

        Cldr.GY ->
            "圭亚那"

        Cldr.HK ->
            "香港"

        Cldr.HM ->
            "赫德岛和麦克唐纳群岛"

        Cldr.HN ->
            "洪都拉斯"

        Cldr.HR ->
            "克罗地亚"

        Cldr.HT ->
            "海地"

        Cldr.HU ->
            "匈牙利"

        Cldr.ID ->
            "印度尼西亚"

        Cldr.IE ->
            "爱尔兰"

        Cldr.IL ->
            "以色列"

        Cldr.IM ->
            "马恩岛"

        Cldr.IN ->
            "印度"

        Cldr.IO ->
            "英属印度洋领地"

        Cldr.IQ ->
            "伊拉克"

        Cldr.IR ->
            "伊朗"

        Cldr.IS ->
            "冰岛"

        Cldr.IT ->
            "意大利"

        Cldr.JE ->
            "泽西岛"

        Cldr.JM ->
            "牙买加"

        Cldr.JO ->
            "约旦"

        Cldr.JP ->
            "日本"

        Cldr.KE ->
            "肯尼亚"

        Cldr.KG ->
            "吉尔吉斯斯坦"

        Cldr.KH ->
            "柬埔寨"

        Cldr.KI ->
            "基里巴斯"

        Cldr.KM ->
            "科摩罗"

        Cldr.KN ->
            "圣基茨和尼维斯"

        Cldr.KP ->
            "朝鲜"

        Cldr.KR ->
            "韩国"

        Cldr.KW ->
            "科威特"

        Cldr.KY ->
            "开曼群岛"

        Cldr.KZ ->
            "哈萨克斯坦"

        Cldr.LA ->
            "老挝"

        Cldr.LB ->
            "黎巴嫩"

        Cldr.LC ->
            "圣卢西亚"

        Cldr.LI ->
            "列支敦士登"

        Cldr.LK ->
            "斯里兰卡"

        Cldr.LR ->
            "利比里亚"

        Cldr.LS ->
            "莱索托"

        Cldr.LT_ ->
            "立陶宛"

        Cldr.LU ->
            "卢森堡"

        Cldr.LV ->
            "拉脱维亚"

        Cldr.LY ->
            "利比亚"

        Cldr.MA ->
            "摩洛哥"

        Cldr.MC ->
            "摩纳哥"

        Cldr.MD ->
            "摩尔多瓦"

        Cldr.ME ->
            "黑山"

        Cldr.MF ->
            "法属圣马丁"

        Cldr.MG ->
            "马达加斯加"

        Cldr.MH ->
            "马绍尔群岛"

        Cldr.MK ->
            "北马其顿"

        Cldr.ML ->
            "马里"

        Cldr.MM ->
            "缅甸"

        Cldr.MN ->
            "蒙古"

        Cldr.MO ->
            "澳门"

        Cldr.MP ->
            "北马里亚纳群岛"

        Cldr.MQ ->
            "马提尼克"

        Cldr.MR ->
            "毛里塔尼亚"

        Cldr.MS ->
            "蒙特塞拉特"

        Cldr.MT ->
            "马耳他"

        Cldr.MU ->
            "毛里求斯"

        Cldr.MV ->
            "马尔代夫"

        Cldr.MW ->
            "马拉维"

        Cldr.MX ->
            "墨西哥"

        Cldr.MY ->
            "马来西亚"

        Cldr.MZ ->
            "莫桑比克"

        Cldr.NA ->
            "纳米比亚"

        Cldr.NC ->
            "新喀里多尼亚"

        Cldr.NE ->
            "尼日尔"

        Cldr.NF ->
            "诺福克岛"

        Cldr.NG ->
            "尼日利亚"

        Cldr.NI ->
            "尼加拉瓜"

        Cldr.NL ->
            "荷兰"

        Cldr.NO ->
            "挪威"

        Cldr.NP ->
            "尼泊尔"

        Cldr.NR ->
            "瑙鲁"

        Cldr.NU ->
            "纽埃"

        Cldr.NZ ->
            "新西兰"

        Cldr.OM ->
            "阿曼"

        Cldr.PA ->
            "巴拿马"

        Cldr.PE ->
            "秘鲁"

        Cldr.PF ->
            "法属波利尼西亚"

        Cldr.PG ->
            "巴布亚新几内亚"

        Cldr.PH ->
            "菲律宾"

        Cldr.PK ->
            "巴基斯坦"

        Cldr.PL ->
            "波兰"

        Cldr.PM ->
            "圣皮埃尔和密克隆群岛"

        Cldr.PN ->
            "皮特凯恩群岛"

        Cldr.PR ->
            "波多黎各"

        Cldr.PS ->
            "巴勒斯坦"

        Cldr.PT ->
            "葡萄牙"

        Cldr.PW ->
            "帕劳"

        Cldr.PY ->
            "巴拉圭"

        Cldr.QA ->
            "卡塔尔"

        Cldr.RE ->
            "留尼汪"

        Cldr.RO ->
            "罗马尼亚"

        Cldr.RS ->
            "塞尔维亚"

        Cldr.RU ->
            "俄罗斯"

        Cldr.RW ->
            "卢旺达"

        Cldr.SA ->
            "沙特阿拉伯"

        Cldr.SB ->
            "所罗门群岛"

        Cldr.SC ->
            "塞舌尔"

        Cldr.SD ->
            "苏丹"

        Cldr.SE ->
            "瑞典"

        Cldr.SG ->
            "新加坡"

        Cldr.SH ->
            "圣赫勒拿"

        Cldr.SI ->
            "斯洛文尼亚"

        Cldr.SJ ->
            "斯瓦尔巴和扬马延"

        Cldr.SK ->
            "斯洛伐克"

        Cldr.SL ->
            "塞拉利昂"

        Cldr.SM ->
            "圣马力诺"

        Cldr.SN ->
            "塞内加尔"

        Cldr.SO ->
            "索马里"

        Cldr.SR ->
            "苏里南"

        Cldr.SS ->
            "南苏丹"

        Cldr.ST ->
            "圣多美和普林西比"

        Cldr.SV ->
            "萨尔瓦多"

        Cldr.SX ->
            "荷属圣马丁"

        Cldr.SY ->
            "叙利亚"

        Cldr.SZ ->
            "斯威士兰"

        Cldr.TC ->
            "特克斯和凯科斯群岛"

        Cldr.TD ->
            "乍得"

        Cldr.TF ->
            "法属南部领地"

        Cldr.TG ->
            "多哥"

        Cldr.TH ->
            "泰国"

        Cldr.TJ ->
            "塔吉克斯坦"

        Cldr.TK ->
            "托克劳"

        Cldr.TL ->
            "东帝汶"

        Cldr.TM ->
            "土库曼斯坦"

        Cldr.TN ->
            "突尼斯"

        Cldr.TO ->
            "汤加"

        Cldr.TR ->
            "土耳其"

        Cldr.TT ->
            "特立尼达和多巴哥"

        Cldr.TV ->
            "图瓦卢"

        Cldr.TW ->
            "台湾"

        Cldr.TZ ->
            "坦桑尼亚"

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
            "乌兹别克斯坦"

        Cldr.VA ->
            "梵蒂冈"

        Cldr.VC ->
            "圣文森特和格林纳丁斯"

        Cldr.VE ->
            "委内瑞拉"

        Cldr.VG ->
            "英属维尔京群岛"

        Cldr.VI ->
            "美属维尔京群岛"

        Cldr.VN ->
            "越南"

        Cldr.VU ->
            "瓦努阿图"

        Cldr.WF ->
            "瓦利斯和富图纳"

        Cldr.WS ->
            "萨摩亚"

        Cldr.XK ->
            "科索沃"

        Cldr.YE ->
            "也门"

        Cldr.YT ->
            "马约特"

        Cldr.ZA ->
            "南非"

        Cldr.ZM ->
            "赞比亚"

        Cldr.ZW ->
            "津巴布韦"