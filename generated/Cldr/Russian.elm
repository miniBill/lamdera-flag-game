module Cldr.Russian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


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
            "Конго - Киншаса"

        Cldr.CF ->
            "Центрально-Африканская Республика"

        Cldr.CG ->
            "Конго - Браззавиль"

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
            "Чехия"

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
            "Гонконг (САР)"

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
            "Макао (САР)"

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
            "Палестинские территории"

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
            "Восточный Тимор"

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