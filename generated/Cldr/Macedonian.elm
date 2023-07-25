module Cldr.Macedonian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Андора"

        Cldr.AE ->
            "Обединети Арапски Емирати"

        Cldr.AF ->
            "Авганистан"

        Cldr.AG ->
            "Антига и Барбуда"

        Cldr.AI ->
            "Ангвила"

        Cldr.AL ->
            "Албанија"

        Cldr.AM ->
            "Ерменија"

        Cldr.AO ->
            "Ангола"

        Cldr.AQ ->
            "Антарктик"

        Cldr.AR ->
            "Аргентина"

        Cldr.AS ->
            "Американска Самоа"

        Cldr.AT ->
            "Австрија"

        Cldr.AU ->
            "Австралија"

        Cldr.AW ->
            "Аруба"

        Cldr.AX ->
            "Оландски Острови"

        Cldr.AZ ->
            "Азербејџан"

        Cldr.BA ->
            "Босна и Херцеговина"

        Cldr.BB ->
            "Барбадос"

        Cldr.BD ->
            "Бангладеш"

        Cldr.BE ->
            "Белгија"

        Cldr.BF ->
            "Буркина Фасо"

        Cldr.BG ->
            "Бугарија"

        Cldr.BH ->
            "Бахреин"

        Cldr.BI ->
            "Бурунди"

        Cldr.BJ ->
            "Бенин"

        Cldr.BL ->
            "Свети Вартоломеј"

        Cldr.BM ->
            "Бермуди"

        Cldr.BN ->
            "Брунеј"

        Cldr.BO ->
            "Боливија"

        Cldr.BQ ->
            "Карипска Холандија"

        Cldr.BR ->
            "Бразил"

        Cldr.BS ->
            "Бахами"

        Cldr.BT ->
            "Бутан"

        Cldr.BV ->
            "Остров Буве"

        Cldr.BW ->
            "Боцвана"

        Cldr.BY ->
            "Белорусија"

        Cldr.BZ ->
            "Белизе"

        Cldr.CA ->
            "Канада"

        Cldr.CC ->
            "Кокосови (Килиншки) Острови"

        Cldr.CD ->
            "Конго - Киншаса"

        Cldr.CF ->
            "Централноафриканска Република"

        Cldr.CG ->
            "Конго - Бразавил"

        Cldr.CH ->
            "Швајцарија"

        Cldr.CI ->
            "Брегот на Слоновата Коска"

        Cldr.CK ->
            "Кукови Острови"

        Cldr.CL ->
            "Чиле"

        Cldr.CM ->
            "Камерун"

        Cldr.CN ->
            "Кина"

        Cldr.CO ->
            "Колумбија"

        Cldr.CR ->
            "Костарика"

        Cldr.CU ->
            "Куба"

        Cldr.CV ->
            "Кабо Верде"

        Cldr.CW ->
            "Курасао"

        Cldr.CX ->
            "Божиќен Остров"

        Cldr.CY ->
            "Кипар"

        Cldr.CZ ->
            "Чешка"

        Cldr.DE ->
            "Германија"

        Cldr.DJ ->
            "Џибути"

        Cldr.DK ->
            "Данска"

        Cldr.DM ->
            "Доминика"

        Cldr.DO ->
            "Доминиканска Република"

        Cldr.DZ ->
            "Алжир"

        Cldr.EC ->
            "Еквадор"

        Cldr.EE ->
            "Естонија"

        Cldr.EG ->
            "Египет"

        Cldr.EH ->
            "Западна Сахара"

        Cldr.ER ->
            "Еритреја"

        Cldr.ES ->
            "Шпанија"

        Cldr.ET ->
            "Етиопија"

        Cldr.FI ->
            "Финска"

        Cldr.FJ ->
            "Фиџи"

        Cldr.FK ->
            "Фолкландски Острови"

        Cldr.FM ->
            "Микронезија"

        Cldr.FO ->
            "Фарски Острови"

        Cldr.FR ->
            "Франција"

        Cldr.GA ->
            "Габон"

        Cldr.GB ->
            "Обединето Кралство"

        Cldr.GD ->
            "Гренада"

        Cldr.GE ->
            "Грузија"

        Cldr.GF ->
            "Француска Гвајана"

        Cldr.GG ->
            "Гернзи"

        Cldr.GH ->
            "Гана"

        Cldr.GI ->
            "Гибралтар"

        Cldr.GL ->
            "Гренланд"

        Cldr.GM ->
            "Гамбија"

        Cldr.GN ->
            "Гвинеја"

        Cldr.GP ->
            "Гвадалупе"

        Cldr.GQ ->
            "Екваторска Гвинеја"

        Cldr.GR ->
            "Грција"

        Cldr.GS ->
            "Јужна Џорџија и Јужни Сендвички Острови"

        Cldr.GT_ ->
            "Гватемала"

        Cldr.GU ->
            "Гуам"

        Cldr.GW ->
            "Гвинеја Бисао"

        Cldr.GY ->
            "Гвајана"

        Cldr.HK ->
            "Хонгконг САР Кина"

        Cldr.HM ->
            "Остров Херд и Острови Мекдоналд"

        Cldr.HN ->
            "Хондурас"

        Cldr.HR ->
            "Хрватска"

        Cldr.HT ->
            "Хаити"

        Cldr.HU ->
            "Унгарија"

        Cldr.ID ->
            "Индонезија"

        Cldr.IE ->
            "Ирска"

        Cldr.IL ->
            "Израел"

        Cldr.IM ->
            "Остров Ман"

        Cldr.IN ->
            "Индија"

        Cldr.IO ->
            "Британска Индоокеанска Територија"

        Cldr.IQ ->
            "Ирак"

        Cldr.IR ->
            "Иран"

        Cldr.IS ->
            "Исланд"

        Cldr.IT ->
            "Италија"

        Cldr.JE ->
            "Џерси"

        Cldr.JM ->
            "Јамајка"

        Cldr.JO ->
            "Јордан"

        Cldr.JP ->
            "Јапонија"

        Cldr.KE ->
            "Кенија"

        Cldr.KG ->
            "Киргистан"

        Cldr.KH ->
            "Камбоџа"

        Cldr.KI ->
            "Кирибати"

        Cldr.KM ->
            "Коморски Острови"

        Cldr.KN ->
            "Свети Китс и Невис"

        Cldr.KP ->
            "Северна Кореја"

        Cldr.KR ->
            "Јужна Кореја"

        Cldr.KW ->
            "Кувајт"

        Cldr.KY ->
            "Кајмански Острови"

        Cldr.KZ ->
            "Казахстан"

        Cldr.LA ->
            "Лаос"

        Cldr.LB ->
            "Либан"

        Cldr.LC ->
            "Сент Лусија"

        Cldr.LI ->
            "Лихтенштајн"

        Cldr.LK ->
            "Шри Ланка"

        Cldr.LR ->
            "Либерија"

        Cldr.LS ->
            "Лесото"

        Cldr.LT_ ->
            "Литванија"

        Cldr.LU ->
            "Луксембург"

        Cldr.LV ->
            "Латвија"

        Cldr.LY ->
            "Либија"

        Cldr.MA ->
            "Мароко"

        Cldr.MC ->
            "Монако"

        Cldr.MD ->
            "Молдавија"

        Cldr.ME ->
            "Црна Гора"

        Cldr.MF ->
            "Сент Мартин"

        Cldr.MG ->
            "Мадагаскар"

        Cldr.MH ->
            "Маршалски Острови"

        Cldr.MK ->
            "Северна Македонија"

        Cldr.ML ->
            "Мали"

        Cldr.MM ->
            "Мјанмар (Бурма)"

        Cldr.MN ->
            "Монголија"

        Cldr.MO ->
            "Макао САР"

        Cldr.MP ->
            "Северни Маријански Острови"

        Cldr.MQ ->
            "Мартиник"

        Cldr.MR ->
            "Мавританија"

        Cldr.MS ->
            "Монсерат"

        Cldr.MT ->
            "Малта"

        Cldr.MU ->
            "Маврициус"

        Cldr.MV ->
            "Малдиви"

        Cldr.MW ->
            "Малави"

        Cldr.MX ->
            "Мексико"

        Cldr.MY ->
            "Малезија"

        Cldr.MZ ->
            "Мозамбик"

        Cldr.NA ->
            "Намибија"

        Cldr.NC ->
            "Нова Каледонија"

        Cldr.NE ->
            "Нигер"

        Cldr.NF ->
            "Норфолшки Остров"

        Cldr.NG ->
            "Нигерија"

        Cldr.NI ->
            "Никарагва"

        Cldr.NL ->
            "Холандија"

        Cldr.NO ->
            "Норвешка"

        Cldr.NP ->
            "Непал"

        Cldr.NR ->
            "Науру"

        Cldr.NU ->
            "Ниује"

        Cldr.NZ ->
            "Нов Зеланд"

        Cldr.OM ->
            "Оман"

        Cldr.PA ->
            "Панама"

        Cldr.PE ->
            "Перу"

        Cldr.PF ->
            "Француска Полинезија"

        Cldr.PG ->
            "Папуа Нова Гвинеја"

        Cldr.PH ->
            "Филипини"

        Cldr.PK ->
            "Пакистан"

        Cldr.PL ->
            "Полска"

        Cldr.PM ->
            "Сент Пјер и Микелан"

        Cldr.PN ->
            "Питкернски Острови"

        Cldr.PR ->
            "Порторико"

        Cldr.PS ->
            "Палестински Територии"

        Cldr.PT ->
            "Португалија"

        Cldr.PW ->
            "Палау"

        Cldr.PY ->
            "Парагвај"

        Cldr.QA ->
            "Катар"

        Cldr.RE ->
            "Рејунион"

        Cldr.RO ->
            "Романија"

        Cldr.RS ->
            "Србија"

        Cldr.RU ->
            "Русија"

        Cldr.RW ->
            "Руанда"

        Cldr.SA ->
            "Саудиска Арабија"

        Cldr.SB ->
            "Соломонски Острови"

        Cldr.SC ->
            "Сејшели"

        Cldr.SD ->
            "Судан"

        Cldr.SE ->
            "Шведска"

        Cldr.SG ->
            "Сингапур"

        Cldr.SH ->
            "Света Елена"

        Cldr.SI ->
            "Словенија"

        Cldr.SJ ->
            "Свалбард и Јан Мајен"

        Cldr.SK ->
            "Словачка"

        Cldr.SL ->
            "Сиера Леоне"

        Cldr.SM ->
            "Сан Марино"

        Cldr.SN ->
            "Сенегал"

        Cldr.SO ->
            "Сомалија"

        Cldr.SR ->
            "Суринам"

        Cldr.SS ->
            "Јужен Судан"

        Cldr.ST ->
            "Саун Томе и Принсип"

        Cldr.SV ->
            "Ел Салвадор"

        Cldr.SX ->
            "Свети Мартин"

        Cldr.SY ->
            "Сирија"

        Cldr.SZ ->
            "Свазиленд"

        Cldr.TC ->
            "Острови Туркс и Каикос"

        Cldr.TD ->
            "Чад"

        Cldr.TF ->
            "Француски Јужни Територии"

        Cldr.TG ->
            "Того"

        Cldr.TH ->
            "Тајланд"

        Cldr.TJ ->
            "Таџикистан"

        Cldr.TK ->
            "Токелау"

        Cldr.TL ->
            "Тимор Лесте"

        Cldr.TM ->
            "Туркменистан"

        Cldr.TN ->
            "Тунис"

        Cldr.TO ->
            "Тонга"

        Cldr.TR ->
            "Турција"

        Cldr.TT ->
            "Тринидад и Тобаго"

        Cldr.TV ->
            "Тувалу"

        Cldr.TW ->
            "Тајван"

        Cldr.TZ ->
            "Танзанија"

        Cldr.UA ->
            "Украина"

        Cldr.UG ->
            "Уганда"

        Cldr.UM ->
            "Американски територии во Пацификот"

        Cldr.US ->
            "Соединети Американски Држави"

        Cldr.UY ->
            "Уругвај"

        Cldr.UZ ->
            "Узбекистан"

        Cldr.VA ->
            "Ватикан"

        Cldr.VC ->
            "Сент Винсент и Гренадини"

        Cldr.VE ->
            "Венецуела"

        Cldr.VG ->
            "Британски Девствени Острови"

        Cldr.VI ->
            "Американски Девствени Острови"

        Cldr.VN ->
            "Виетнам"

        Cldr.VU ->
            "Вануату"

        Cldr.WF ->
            "Валис и Футуна"

        Cldr.WS ->
            "Самоа"

        Cldr.XK ->
            "Косово"

        Cldr.YE ->
            "Јемен"

        Cldr.YT ->
            "Мајот"

        Cldr.ZA ->
            "Јужноафриканска Република"

        Cldr.ZM ->
            "Замбија"

        Cldr.ZW ->
            "Зимбабве"