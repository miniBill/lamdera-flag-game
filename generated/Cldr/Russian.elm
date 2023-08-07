module Cldr.Russian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Russian.

    AD Андорра
    AE ОАЭ
    AF Афганистан
    AG Антигуа и Барбуда
    AI Ангилья
    AL Албания
    AM Армения
    AO Ангола
    AQ Антарктида
    AR Аргентина
    AS Американское Самоа
    AT Австрия
    AU Австралия
    AW Аруба
    AX Аландские о-ва
    AZ Азербайджан
    BA Босния и Герцеговина
    BB Барбадос
    BD Бангладеш
    BE Бельгия
    BF Буркина-Фасо
    BG Болгария
    BH Бахрейн
    BI Бурунди
    BJ Бенин
    BL Сен-Бартелеми
    BM Бермудские о-ва
    BN Бруней
    BO Боливия
    BQ Бонэйр, Синт-Эстатиус и Саба
    BR Бразилия
    BS Багамы
    BT Бутан
    BV о-в Буве
    BW Ботсвана
    BY Беларусь
    BZ Белиз
    CA Канада
    CC Кокосовые о-ва
    CD Конго (ДРК)
    CF Центрально-Африканская Республика
    CG Республика Конго
    CH Швейцария
    CI Кот-д’Ивуар
    CK о-ва Кука
    CL Чили
    CM Камерун
    CN Китай
    CO Колумбия
    CR Коста-Рика
    CU Куба
    CV Кабо-Верде
    CW Кюрасао
    CX о-в Рождества
    CY Кипр
    CZ Чешская Республика
    DE Германия
    DJ Джибути
    DK Дания
    DM Доминика
    DO Доминиканская Республика
    DZ Алжир
    EC Эквадор
    EE Эстония
    EG Египет
    EH Западная Сахара
    ER Эритрея
    ES Испания
    ET Эфиопия
    FI Финляндия
    FJ Фиджи
    FK Фолклендские о-ва
    FM Федеративные Штаты Микронезии
    FO Фарерские о-ва
    FR Франция
    GA Габон
    GB Великобритания
    GD Гренада
    GE Грузия
    GF Французская Гвиана
    GG Гернси
    GH Гана
    GI Гибралтар
    GL Гренландия
    GM Гамбия
    GN Гвинея
    GP Гваделупа
    GQ Экваториальная Гвинея
    GR Греция
    GS Южная Георгия и Южные Сандвичевы о-ва
    GT Гватемала
    GU Гуам
    GW Гвинея-Бисау
    GY Гайана
    HK Гонконг
    HM о-ва Херд и Макдональд
    HN Гондурас
    HR Хорватия
    HT Гаити
    HU Венгрия
    ID Индонезия
    IE Ирландия
    IL Израиль
    IM о-в Мэн
    IN Индия
    IO Британская территория в Индийском океане
    IQ Ирак
    IR Иран
    IS Исландия
    IT Италия
    JE Джерси
    JM Ямайка
    JO Иордания
    JP Япония
    KE Кения
    KG Киргизия
    KH Камбоджа
    KI Кирибати
    KM Коморы
    KN Сент-Китс и Невис
    KP КНДР
    KR Республика Корея
    KW Кувейт
    KY о-ва Кайман
    KZ Казахстан
    LA Лаос
    LB Ливан
    LC Сент-Люсия
    LI Лихтенштейн
    LK Шри-Ланка
    LR Либерия
    LS Лесото
    LT Литва
    LU Люксембург
    LV Латвия
    LY Ливия
    MA Марокко
    MC Монако
    MD Молдова
    ME Черногория
    MF Сен-Мартен
    MG Мадагаскар
    MH Маршалловы о-ва
    MK Северная Македония
    ML Мали
    MM Мьянма (Бирма)
    MN Монголия
    MO Макао
    MP Северные Марианские о-ва
    MQ Мартиника
    MR Мавритания
    MS Монтсеррат
    MT Мальта
    MU Маврикий
    MV Мальдивы
    MW Малави
    MX Мексика
    MY Малайзия
    MZ Мозамбик
    NA Намибия
    NC Новая Каледония
    NE Нигер
    NF о-в Норфолк
    NG Нигерия
    NI Никарагуа
    NL Нидерланды
    NO Норвегия
    NP Непал
    NR Науру
    NU Ниуэ
    NZ Новая Зеландия
    OM Оман
    PA Панама
    PE Перу
    PF Французская Полинезия
    PG Папуа — Новая Гвинея
    PH Филиппины
    PK Пакистан
    PL Польша
    PM Сен-Пьер и Микелон
    PN о-ва Питкэрн
    PR Пуэрто-Рико
    PS Палестина
    PT Португалия
    PW Палау
    PY Парагвай
    QA Катар
    RE Реюньон
    RO Румыния
    RS Сербия
    RU Россия
    RW Руанда
    SA Саудовская Аравия
    SB Соломоновы о-ва
    SC Сейшельские о-ва
    SD Судан
    SE Швеция
    SG Сингапур
    SH о-в Св. Елены
    SI Словения
    SJ Шпицберген и Ян-Майен
    SK Словакия
    SL Сьерра-Леоне
    SM Сан-Марино
    SN Сенегал
    SO Сомали
    SR Суринам
    SS Южный Судан
    ST Сан-Томе и Принсипи
    SV Сальвадор
    SX Синт-Мартен
    SY Сирия
    SZ Эсватини
    TC Тёркс и Кайкос
    TD Чад
    TF Французские Южные территории
    TG Того
    TH Таиланд
    TJ Таджикистан
    TK Токелау
    TL Тимор-Лесте
    TM Туркменистан
    TN Тунис
    TO Тонга
    TR Турция
    TT Тринидад и Тобаго
    TV Тувалу
    TW Тайвань
    TZ Танзания
    UA Украина
    UG Уганда
    UM Внешние малые о-ва (США)
    US Соединенные Штаты
    UY Уругвай
    UZ Узбекистан
    VA Ватикан
    VC Сент-Винсент и Гренадины
    VE Венесуэла
    VG Виргинские о-ва (Великобритания)
    VI Виргинские о-ва (США)
    VN Вьетнам
    VU Вануату
    WF Уоллис и Футуна
    WS Самоа
    XK Косово
    YE Йемен
    YT Майотта
    ZA Южно-Африканская Республика
    ZM Замбия
    ZW Зимбабве
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Андорра"

        Cldr.AE ->
            "ОАЭ"

        Cldr.AF ->
            "Афганистан"

        Cldr.AG ->
            "Антигуа и Барбуда"

        Cldr.AI ->
            "Ангилья"

        Cldr.AL ->
            "Албания"

        Cldr.AM ->
            "Армения"

        Cldr.AO ->
            "Ангола"

        Cldr.AQ ->
            "Антарктида"

        Cldr.AR ->
            "Аргентина"

        Cldr.AS ->
            "Американское Самоа"

        Cldr.AT ->
            "Австрия"

        Cldr.AU ->
            "Австралия"

        Cldr.AW ->
            "Аруба"

        Cldr.AX ->
            "Аландские о-ва"

        Cldr.AZ ->
            "Азербайджан"

        Cldr.BA ->
            "Босния и Герцеговина"

        Cldr.BB ->
            "Барбадос"

        Cldr.BD ->
            "Бангладеш"

        Cldr.BE ->
            "Бельгия"

        Cldr.BF ->
            "Буркина-Фасо"

        Cldr.BG ->
            "Болгария"

        Cldr.BH ->
            "Бахрейн"

        Cldr.BI ->
            "Бурунди"

        Cldr.BJ ->
            "Бенин"

        Cldr.BL ->
            "Сен-Бартелеми"

        Cldr.BM ->
            "Бермудские о-ва"

        Cldr.BN ->
            "Бруней"

        Cldr.BO ->
            "Боливия"

        Cldr.BQ ->
            "Бонэйр, Синт-Эстатиус и Саба"

        Cldr.BR ->
            "Бразилия"

        Cldr.BS ->
            "Багамы"

        Cldr.BT ->
            "Бутан"

        Cldr.BV ->
            "о-в Буве"

        Cldr.BW ->
            "Ботсвана"

        Cldr.BY ->
            "Беларусь"

        Cldr.BZ ->
            "Белиз"

        Cldr.CA ->
            "Канада"

        Cldr.CC ->
            "Кокосовые о-ва"

        Cldr.CD ->
            "Конго (ДРК)"

        Cldr.CF ->
            "Центрально-Африканская Республика"

        Cldr.CG ->
            "Республика Конго"

        Cldr.CH ->
            "Швейцария"

        Cldr.CI ->
            "Кот-д’Ивуар"

        Cldr.CK ->
            "о-ва Кука"

        Cldr.CL ->
            "Чили"

        Cldr.CM ->
            "Камерун"

        Cldr.CN ->
            "Китай"

        Cldr.CO ->
            "Колумбия"

        Cldr.CR ->
            "Коста-Рика"

        Cldr.CU ->
            "Куба"

        Cldr.CV ->
            "Кабо-Верде"

        Cldr.CW ->
            "Кюрасао"

        Cldr.CX ->
            "о-в Рождества"

        Cldr.CY ->
            "Кипр"

        Cldr.CZ ->
            "Чешская Республика"

        Cldr.DE ->
            "Германия"

        Cldr.DJ ->
            "Джибути"

        Cldr.DK ->
            "Дания"

        Cldr.DM ->
            "Доминика"

        Cldr.DO ->
            "Доминиканская Республика"

        Cldr.DZ ->
            "Алжир"

        Cldr.EC ->
            "Эквадор"

        Cldr.EE ->
            "Эстония"

        Cldr.EG ->
            "Египет"

        Cldr.EH ->
            "Западная Сахара"

        Cldr.ER ->
            "Эритрея"

        Cldr.ES ->
            "Испания"

        Cldr.ET ->
            "Эфиопия"

        Cldr.FI ->
            "Финляндия"

        Cldr.FJ ->
            "Фиджи"

        Cldr.FK ->
            "Фолклендские о-ва"

        Cldr.FM ->
            "Федеративные Штаты Микронезии"

        Cldr.FO ->
            "Фарерские о-ва"

        Cldr.FR ->
            "Франция"

        Cldr.GA ->
            "Габон"

        Cldr.GB ->
            "Великобритания"

        Cldr.GD ->
            "Гренада"

        Cldr.GE ->
            "Грузия"

        Cldr.GF ->
            "Французская Гвиана"

        Cldr.GG ->
            "Гернси"

        Cldr.GH ->
            "Гана"

        Cldr.GI ->
            "Гибралтар"

        Cldr.GL ->
            "Гренландия"

        Cldr.GM ->
            "Гамбия"

        Cldr.GN ->
            "Гвинея"

        Cldr.GP ->
            "Гваделупа"

        Cldr.GQ ->
            "Экваториальная Гвинея"

        Cldr.GR ->
            "Греция"

        Cldr.GS ->
            "Южная Георгия и Южные Сандвичевы о-ва"

        Cldr.GT_ ->
            "Гватемала"

        Cldr.GU ->
            "Гуам"

        Cldr.GW ->
            "Гвинея-Бисау"

        Cldr.GY ->
            "Гайана"

        Cldr.HK ->
            "Гонконг"

        Cldr.HM ->
            "о-ва Херд и Макдональд"

        Cldr.HN ->
            "Гондурас"

        Cldr.HR ->
            "Хорватия"

        Cldr.HT ->
            "Гаити"

        Cldr.HU ->
            "Венгрия"

        Cldr.ID ->
            "Индонезия"

        Cldr.IE ->
            "Ирландия"

        Cldr.IL ->
            "Израиль"

        Cldr.IM ->
            "о-в Мэн"

        Cldr.IN ->
            "Индия"

        Cldr.IO ->
            "Британская территория в Индийском океане"

        Cldr.IQ ->
            "Ирак"

        Cldr.IR ->
            "Иран"

        Cldr.IS ->
            "Исландия"

        Cldr.IT ->
            "Италия"

        Cldr.JE ->
            "Джерси"

        Cldr.JM ->
            "Ямайка"

        Cldr.JO ->
            "Иордания"

        Cldr.JP ->
            "Япония"

        Cldr.KE ->
            "Кения"

        Cldr.KG ->
            "Киргизия"

        Cldr.KH ->
            "Камбоджа"

        Cldr.KI ->
            "Кирибати"

        Cldr.KM ->
            "Коморы"

        Cldr.KN ->
            "Сент-Китс и Невис"

        Cldr.KP ->
            "КНДР"

        Cldr.KR ->
            "Республика Корея"

        Cldr.KW ->
            "Кувейт"

        Cldr.KY ->
            "о-ва Кайман"

        Cldr.KZ ->
            "Казахстан"

        Cldr.LA ->
            "Лаос"

        Cldr.LB ->
            "Ливан"

        Cldr.LC ->
            "Сент-Люсия"

        Cldr.LI ->
            "Лихтенштейн"

        Cldr.LK ->
            "Шри-Ланка"

        Cldr.LR ->
            "Либерия"

        Cldr.LS ->
            "Лесото"

        Cldr.LT_ ->
            "Литва"

        Cldr.LU ->
            "Люксембург"

        Cldr.LV ->
            "Латвия"

        Cldr.LY ->
            "Ливия"

        Cldr.MA ->
            "Марокко"

        Cldr.MC ->
            "Монако"

        Cldr.MD ->
            "Молдова"

        Cldr.ME ->
            "Черногория"

        Cldr.MF ->
            "Сен-Мартен"

        Cldr.MG ->
            "Мадагаскар"

        Cldr.MH ->
            "Маршалловы о-ва"

        Cldr.MK ->
            "Северная Македония"

        Cldr.ML ->
            "Мали"

        Cldr.MM ->
            "Мьянма (Бирма)"

        Cldr.MN ->
            "Монголия"

        Cldr.MO ->
            "Макао"

        Cldr.MP ->
            "Северные Марианские о-ва"

        Cldr.MQ ->
            "Мартиника"

        Cldr.MR ->
            "Мавритания"

        Cldr.MS ->
            "Монтсеррат"

        Cldr.MT ->
            "Мальта"

        Cldr.MU ->
            "Маврикий"

        Cldr.MV ->
            "Мальдивы"

        Cldr.MW ->
            "Малави"

        Cldr.MX ->
            "Мексика"

        Cldr.MY ->
            "Малайзия"

        Cldr.MZ ->
            "Мозамбик"

        Cldr.NA ->
            "Намибия"

        Cldr.NC ->
            "Новая Каледония"

        Cldr.NE ->
            "Нигер"

        Cldr.NF ->
            "о-в Норфолк"

        Cldr.NG ->
            "Нигерия"

        Cldr.NI ->
            "Никарагуа"

        Cldr.NL ->
            "Нидерланды"

        Cldr.NO ->
            "Норвегия"

        Cldr.NP ->
            "Непал"

        Cldr.NR ->
            "Науру"

        Cldr.NU ->
            "Ниуэ"

        Cldr.NZ ->
            "Новая Зеландия"

        Cldr.OM ->
            "Оман"

        Cldr.PA ->
            "Панама"

        Cldr.PE ->
            "Перу"

        Cldr.PF ->
            "Французская Полинезия"

        Cldr.PG ->
            "Папуа — Новая Гвинея"

        Cldr.PH ->
            "Филиппины"

        Cldr.PK ->
            "Пакистан"

        Cldr.PL ->
            "Польша"

        Cldr.PM ->
            "Сен-Пьер и Микелон"

        Cldr.PN ->
            "о-ва Питкэрн"

        Cldr.PR ->
            "Пуэрто-Рико"

        Cldr.PS ->
            "Палестина"

        Cldr.PT ->
            "Португалия"

        Cldr.PW ->
            "Палау"

        Cldr.PY ->
            "Парагвай"

        Cldr.QA ->
            "Катар"

        Cldr.RE ->
            "Реюньон"

        Cldr.RO ->
            "Румыния"

        Cldr.RS ->
            "Сербия"

        Cldr.RU ->
            "Россия"

        Cldr.RW ->
            "Руанда"

        Cldr.SA ->
            "Саудовская Аравия"

        Cldr.SB ->
            "Соломоновы о-ва"

        Cldr.SC ->
            "Сейшельские о-ва"

        Cldr.SD ->
            "Судан"

        Cldr.SE ->
            "Швеция"

        Cldr.SG ->
            "Сингапур"

        Cldr.SH ->
            "о-в Св. Елены"

        Cldr.SI ->
            "Словения"

        Cldr.SJ ->
            "Шпицберген и Ян-Майен"

        Cldr.SK ->
            "Словакия"

        Cldr.SL ->
            "Сьерра-Леоне"

        Cldr.SM ->
            "Сан-Марино"

        Cldr.SN ->
            "Сенегал"

        Cldr.SO ->
            "Сомали"

        Cldr.SR ->
            "Суринам"

        Cldr.SS ->
            "Южный Судан"

        Cldr.ST ->
            "Сан-Томе и Принсипи"

        Cldr.SV ->
            "Сальвадор"

        Cldr.SX ->
            "Синт-Мартен"

        Cldr.SY ->
            "Сирия"

        Cldr.SZ ->
            "Эсватини"

        Cldr.TC ->
            "Тёркс и Кайкос"

        Cldr.TD ->
            "Чад"

        Cldr.TF ->
            "Французские Южные территории"

        Cldr.TG ->
            "Того"

        Cldr.TH ->
            "Таиланд"

        Cldr.TJ ->
            "Таджикистан"

        Cldr.TK ->
            "Токелау"

        Cldr.TL ->
            "Тимор-Лесте"

        Cldr.TM ->
            "Туркменистан"

        Cldr.TN ->
            "Тунис"

        Cldr.TO ->
            "Тонга"

        Cldr.TR ->
            "Турция"

        Cldr.TT ->
            "Тринидад и Тобаго"

        Cldr.TV ->
            "Тувалу"

        Cldr.TW ->
            "Тайвань"

        Cldr.TZ ->
            "Танзания"

        Cldr.UA ->
            "Украина"

        Cldr.UG ->
            "Уганда"

        Cldr.UM ->
            "Внешние малые о-ва (США)"

        Cldr.US ->
            "Соединенные Штаты"

        Cldr.UY ->
            "Уругвай"

        Cldr.UZ ->
            "Узбекистан"

        Cldr.VA ->
            "Ватикан"

        Cldr.VC ->
            "Сент-Винсент и Гренадины"

        Cldr.VE ->
            "Венесуэла"

        Cldr.VG ->
            "Виргинские о-ва (Великобритания)"

        Cldr.VI ->
            "Виргинские о-ва (США)"

        Cldr.VN ->
            "Вьетнам"

        Cldr.VU ->
            "Вануату"

        Cldr.WF ->
            "Уоллис и Футуна"

        Cldr.WS ->
            "Самоа"

        Cldr.XK ->
            "Косово"

        Cldr.YE ->
            "Йемен"

        Cldr.YT ->
            "Майотта"

        Cldr.ZA ->
            "Южно-Африканская Республика"

        Cldr.ZM ->
            "Замбия"

        Cldr.ZW ->
            "Зимбабве"