module Cldr.Belarusian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Belarusian.

    AD Андора
    AE Аб’яднаныя Арабскія Эміраты
    AF Афганістан
    AG Антыгуа і Барбуда
    AI Ангілья
    AL Албанія
    AM Арменія
    AO Ангола
    AQ Антарктыка
    AR Аргенціна
    AS Амерыканскае Самоа
    AT Аўстрыя
    AU Аўстралія
    AW Аруба
    AX Аландскія астравы
    AZ Азербайджан
    BA Боснія і Герцагавіна
    BB Барбадас
    BD Бангладэш
    BE Бельгія
    BF Буркіна-Фасо
    BG Балгарыя
    BH Бахрэйн
    BI Бурундзі
    BJ Бенін
    BL Сен-Бартэльмі
    BM Бермудскія астравы
    BN Бруней
    BO Балівія
    BQ Карыбскія Нідэрланды
    BR Бразілія
    BS Багамскія астравы
    BT Бутан
    BV Востраў Бувэ
    BW Батсвана
    BY Беларусь
    BZ Беліз
    CA Канада
    CC Какосавыя (Кілінг) астравы
    CD Конга (ДРК)
    CF Цэнтральна-Афрыканская Рэспубліка
    CG Рэспубліка Конга
    CH Швейцарыя
    CI Кот-д’Івуар
    CK Астравы Кука
    CL Чылі
    CM Камерун
    CN Кітай
    CO Калумбія
    CR Коста-Рыка
    CU Куба
    CV Каба-Вердэ
    CW Кюрасаа
    CX Востраў Каляд
    CY Кіпр
    CZ Чэшская Рэспубліка
    DE Германія
    DJ Джыбуці
    DK Данія
    DM Дамініка
    DO Дамініканская Рэспубліка
    DZ Алжыр
    EC Эквадор
    EE Эстонія
    EG Егіпет
    EH Заходняя Сахара
    ER Эрытрэя
    ES Іспанія
    ET Эфіопія
    FI Фінляндыя
    FJ Фіджы
    FK Фалклендскія астравы
    FM Мікранезія
    FO Фарэрскія астравы
    FR Францыя
    GA Габон
    GB Вялікабрытанія
    GD Грэнада
    GE Грузія
    GF Французская Гвіяна
    GG Гернсі
    GH Гана
    GI Гібралтар
    GL Грэнландыя
    GM Гамбія
    GN Гвінея
    GP Гвадэлупа
    GQ Экватарыяльная Гвінея
    GR Грэцыя
    GS Паўднёвая Георгія і Паўднёвыя Сандвічавы астравы
    GT Гватэмала
    GU Гуам
    GW Гвінея-Бісау
    GY Гаяна
    HK Ганконг
    HM Астравы Херд і Макдональд
    HN Гандурас
    HR Харватыя
    HT Гаіці
    HU Венгрыя
    ID Інданезія
    IE Ірландыя
    IL Ізраіль
    IM Востраў Мэн
    IN Індыя
    IO Брытанская тэрыторыя ў Індыйскім акіяне
    IQ Ірак
    IR Іран
    IS Ісландыя
    IT Італія
    JE Джэрсі
    JM Ямайка
    JO Іарданія
    JP Японія
    KE Кенія
    KG Кыргызстан
    KH Камбоджа
    KI Кірыбаці
    KM Каморскія астравы
    KN Сент-Кітс і Невіс
    KP Паўночная Карэя
    KR Паўднёвая Карэя
    KW Кувейт
    KY Кайманавы астравы
    KZ Казахстан
    LA Лаос
    LB Ліван
    LC Сент-Люсія
    LI Ліхтэнштэйн
    LK Шры-Ланка
    LR Ліберыя
    LS Лесота
    LT Літва
    LU Люксембург
    LV Латвія
    LY Лівія
    MA Марока
    MC Манака
    MD Малдова
    ME Чарнагорыя
    MF Сен-Мартэн
    MG Мадагаскар
    MH Маршалавы астравы
    MK Паўночная Македонія
    ML Малі
    MM М’янма (Бірма)
    MN Манголія
    MO Макаа
    MP Паўночныя Марыянскія астравы
    MQ Марцініка
    MR Маўрытанія
    MS Мантсерат
    MT Мальта
    MU Маўрыкій
    MV Мальдывы
    MW Малаві
    MX Мексіка
    MY Малайзія
    MZ Мазамбік
    NA Намібія
    NC Новая Каледонія
    NE Нігер
    NF Востраў Норфалк
    NG Нігерыя
    NI Нікарагуа
    NL Нідэрланды
    NO Нарвегія
    NP Непал
    NR Науру
    NU Ніуэ
    NZ Новая Зеландыя
    OM Аман
    PA Панама
    PE Перу
    PF Французская Палінезія
    PG Папуа-Новая Гвінея
    PH Філіпіны
    PK Пакістан
    PL Польшча
    PM Сен-П’ер і Мікелон
    PN Астравы Піткэрн
    PR Пуэрта-Рыка
    PS Палесціна
    PT Партугалія
    PW Палау
    PY Парагвай
    QA Катар
    RE Рэюньён
    RO Румынія
    RS Сербія
    RU Расія
    RW Руанда
    SA Саудаўская Аравія
    SB Саламонавы астравы
    SC Сейшэльскія астравы
    SD Судан
    SE Швецыя
    SG Сінгапур
    SH Востраў Святой Алены
    SI Славенія
    SJ Шпіцберген і Ян-Маен
    SK Славакія
    SL Сьера-Леонэ
    SM Сан-Марына
    SN Сенегал
    SO Самалі
    SR Сурынам
    SS Паўднёвы Судан
    ST Сан-Тамэ і Прынсіпі
    SV Сальвадор
    SX Сінт-Мартэн
    SY Сірыя
    SZ Эсватыні
    TC Астравы Цёркс і Кайкас
    TD Чад
    TF Французскія паўднёвыя тэрыторыі
    TG Тога
    TH Тайланд
    TJ Таджыкістан
    TK Такелау
    TL Усходні Тымор
    TM Туркменістан
    TN Туніс
    TO Тонга
    TR Турцыя
    TT Трынідад і Табага
    TV Тувалу
    TW Тайвань
    TZ Танзанія
    UA Украіна
    UG Уганда
    UM Малыя Аддаленыя астравы ЗША
    US Злучаныя Штаты
    UY Уругвай
    UZ Узбекістан
    VA Ватыкан
    VC Сент-Вінсент і Грэнадзіны
    VE Венесуэла
    VG Брытанскія Віргінскія астравы
    VI Амерыканскія Віргінскія астравы
    VN В’етнам
    VU Вануату
    WF Уоліс і Футуна
    WS Самоа
    XK Косава
    YE Емен
    YT Маёта
    ZA Паўднёва-Афрыканская Рэспубліка
    ZM Замбія
    ZW Зімбабвэ
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Андора"

        Cldr.AE ->
            "Аб’яднаныя Арабскія Эміраты"

        Cldr.AF ->
            "Афганістан"

        Cldr.AG ->
            "Антыгуа і Барбуда"

        Cldr.AI ->
            "Ангілья"

        Cldr.AL ->
            "Албанія"

        Cldr.AM ->
            "Арменія"

        Cldr.AO ->
            "Ангола"

        Cldr.AQ ->
            "Антарктыка"

        Cldr.AR ->
            "Аргенціна"

        Cldr.AS ->
            "Амерыканскае Самоа"

        Cldr.AT ->
            "Аўстрыя"

        Cldr.AU ->
            "Аўстралія"

        Cldr.AW ->
            "Аруба"

        Cldr.AX ->
            "Аландскія астравы"

        Cldr.AZ ->
            "Азербайджан"

        Cldr.BA ->
            "Боснія і Герцагавіна"

        Cldr.BB ->
            "Барбадас"

        Cldr.BD ->
            "Бангладэш"

        Cldr.BE ->
            "Бельгія"

        Cldr.BF ->
            "Буркіна-Фасо"

        Cldr.BG ->
            "Балгарыя"

        Cldr.BH ->
            "Бахрэйн"

        Cldr.BI ->
            "Бурундзі"

        Cldr.BJ ->
            "Бенін"

        Cldr.BL ->
            "Сен-Бартэльмі"

        Cldr.BM ->
            "Бермудскія астравы"

        Cldr.BN ->
            "Бруней"

        Cldr.BO ->
            "Балівія"

        Cldr.BQ ->
            "Карыбскія Нідэрланды"

        Cldr.BR ->
            "Бразілія"

        Cldr.BS ->
            "Багамскія астравы"

        Cldr.BT ->
            "Бутан"

        Cldr.BV ->
            "Востраў Бувэ"

        Cldr.BW ->
            "Батсвана"

        Cldr.BY ->
            "Беларусь"

        Cldr.BZ ->
            "Беліз"

        Cldr.CA ->
            "Канада"

        Cldr.CC ->
            "Какосавыя (Кілінг) астравы"

        Cldr.CD ->
            "Конга (ДРК)"

        Cldr.CF ->
            "Цэнтральна-Афрыканская Рэспубліка"

        Cldr.CG ->
            "Рэспубліка Конга"

        Cldr.CH ->
            "Швейцарыя"

        Cldr.CI ->
            "Кот-д’Івуар"

        Cldr.CK ->
            "Астравы Кука"

        Cldr.CL ->
            "Чылі"

        Cldr.CM ->
            "Камерун"

        Cldr.CN ->
            "Кітай"

        Cldr.CO ->
            "Калумбія"

        Cldr.CR ->
            "Коста-Рыка"

        Cldr.CU ->
            "Куба"

        Cldr.CV ->
            "Каба-Вердэ"

        Cldr.CW ->
            "Кюрасаа"

        Cldr.CX ->
            "Востраў Каляд"

        Cldr.CY ->
            "Кіпр"

        Cldr.CZ ->
            "Чэшская Рэспубліка"

        Cldr.DE ->
            "Германія"

        Cldr.DJ ->
            "Джыбуці"

        Cldr.DK ->
            "Данія"

        Cldr.DM ->
            "Дамініка"

        Cldr.DO ->
            "Дамініканская Рэспубліка"

        Cldr.DZ ->
            "Алжыр"

        Cldr.EC ->
            "Эквадор"

        Cldr.EE ->
            "Эстонія"

        Cldr.EG ->
            "Егіпет"

        Cldr.EH ->
            "Заходняя Сахара"

        Cldr.ER ->
            "Эрытрэя"

        Cldr.ES ->
            "Іспанія"

        Cldr.ET ->
            "Эфіопія"

        Cldr.FI ->
            "Фінляндыя"

        Cldr.FJ ->
            "Фіджы"

        Cldr.FK ->
            "Фалклендскія астравы"

        Cldr.FM ->
            "Мікранезія"

        Cldr.FO ->
            "Фарэрскія астравы"

        Cldr.FR ->
            "Францыя"

        Cldr.GA ->
            "Габон"

        Cldr.GB ->
            "Вялікабрытанія"

        Cldr.GD ->
            "Грэнада"

        Cldr.GE ->
            "Грузія"

        Cldr.GF ->
            "Французская Гвіяна"

        Cldr.GG ->
            "Гернсі"

        Cldr.GH ->
            "Гана"

        Cldr.GI ->
            "Гібралтар"

        Cldr.GL ->
            "Грэнландыя"

        Cldr.GM ->
            "Гамбія"

        Cldr.GN ->
            "Гвінея"

        Cldr.GP ->
            "Гвадэлупа"

        Cldr.GQ ->
            "Экватарыяльная Гвінея"

        Cldr.GR ->
            "Грэцыя"

        Cldr.GS ->
            "Паўднёвая Георгія і Паўднёвыя Сандвічавы астравы"

        Cldr.GT_ ->
            "Гватэмала"

        Cldr.GU ->
            "Гуам"

        Cldr.GW ->
            "Гвінея-Бісау"

        Cldr.GY ->
            "Гаяна"

        Cldr.HK ->
            "Ганконг"

        Cldr.HM ->
            "Астравы Херд і Макдональд"

        Cldr.HN ->
            "Гандурас"

        Cldr.HR ->
            "Харватыя"

        Cldr.HT ->
            "Гаіці"

        Cldr.HU ->
            "Венгрыя"

        Cldr.ID ->
            "Інданезія"

        Cldr.IE ->
            "Ірландыя"

        Cldr.IL ->
            "Ізраіль"

        Cldr.IM ->
            "Востраў Мэн"

        Cldr.IN ->
            "Індыя"

        Cldr.IO ->
            "Брытанская тэрыторыя ў Індыйскім акіяне"

        Cldr.IQ ->
            "Ірак"

        Cldr.IR ->
            "Іран"

        Cldr.IS ->
            "Ісландыя"

        Cldr.IT ->
            "Італія"

        Cldr.JE ->
            "Джэрсі"

        Cldr.JM ->
            "Ямайка"

        Cldr.JO ->
            "Іарданія"

        Cldr.JP ->
            "Японія"

        Cldr.KE ->
            "Кенія"

        Cldr.KG ->
            "Кыргызстан"

        Cldr.KH ->
            "Камбоджа"

        Cldr.KI ->
            "Кірыбаці"

        Cldr.KM ->
            "Каморскія астравы"

        Cldr.KN ->
            "Сент-Кітс і Невіс"

        Cldr.KP ->
            "Паўночная Карэя"

        Cldr.KR ->
            "Паўднёвая Карэя"

        Cldr.KW ->
            "Кувейт"

        Cldr.KY ->
            "Кайманавы астравы"

        Cldr.KZ ->
            "Казахстан"

        Cldr.LA ->
            "Лаос"

        Cldr.LB ->
            "Ліван"

        Cldr.LC ->
            "Сент-Люсія"

        Cldr.LI ->
            "Ліхтэнштэйн"

        Cldr.LK ->
            "Шры-Ланка"

        Cldr.LR ->
            "Ліберыя"

        Cldr.LS ->
            "Лесота"

        Cldr.LT_ ->
            "Літва"

        Cldr.LU ->
            "Люксембург"

        Cldr.LV ->
            "Латвія"

        Cldr.LY ->
            "Лівія"

        Cldr.MA ->
            "Марока"

        Cldr.MC ->
            "Манака"

        Cldr.MD ->
            "Малдова"

        Cldr.ME ->
            "Чарнагорыя"

        Cldr.MF ->
            "Сен-Мартэн"

        Cldr.MG ->
            "Мадагаскар"

        Cldr.MH ->
            "Маршалавы астравы"

        Cldr.MK ->
            "Паўночная Македонія"

        Cldr.ML ->
            "Малі"

        Cldr.MM ->
            "М’янма (Бірма)"

        Cldr.MN ->
            "Манголія"

        Cldr.MO ->
            "Макаа"

        Cldr.MP ->
            "Паўночныя Марыянскія астравы"

        Cldr.MQ ->
            "Марцініка"

        Cldr.MR ->
            "Маўрытанія"

        Cldr.MS ->
            "Мантсерат"

        Cldr.MT ->
            "Мальта"

        Cldr.MU ->
            "Маўрыкій"

        Cldr.MV ->
            "Мальдывы"

        Cldr.MW ->
            "Малаві"

        Cldr.MX ->
            "Мексіка"

        Cldr.MY ->
            "Малайзія"

        Cldr.MZ ->
            "Мазамбік"

        Cldr.NA ->
            "Намібія"

        Cldr.NC ->
            "Новая Каледонія"

        Cldr.NE ->
            "Нігер"

        Cldr.NF ->
            "Востраў Норфалк"

        Cldr.NG ->
            "Нігерыя"

        Cldr.NI ->
            "Нікарагуа"

        Cldr.NL ->
            "Нідэрланды"

        Cldr.NO ->
            "Нарвегія"

        Cldr.NP ->
            "Непал"

        Cldr.NR ->
            "Науру"

        Cldr.NU ->
            "Ніуэ"

        Cldr.NZ ->
            "Новая Зеландыя"

        Cldr.OM ->
            "Аман"

        Cldr.PA ->
            "Панама"

        Cldr.PE ->
            "Перу"

        Cldr.PF ->
            "Французская Палінезія"

        Cldr.PG ->
            "Папуа-Новая Гвінея"

        Cldr.PH ->
            "Філіпіны"

        Cldr.PK ->
            "Пакістан"

        Cldr.PL ->
            "Польшча"

        Cldr.PM ->
            "Сен-П’ер і Мікелон"

        Cldr.PN ->
            "Астравы Піткэрн"

        Cldr.PR ->
            "Пуэрта-Рыка"

        Cldr.PS ->
            "Палесціна"

        Cldr.PT ->
            "Партугалія"

        Cldr.PW ->
            "Палау"

        Cldr.PY ->
            "Парагвай"

        Cldr.QA ->
            "Катар"

        Cldr.RE ->
            "Рэюньён"

        Cldr.RO ->
            "Румынія"

        Cldr.RS ->
            "Сербія"

        Cldr.RU ->
            "Расія"

        Cldr.RW ->
            "Руанда"

        Cldr.SA ->
            "Саудаўская Аравія"

        Cldr.SB ->
            "Саламонавы астравы"

        Cldr.SC ->
            "Сейшэльскія астравы"

        Cldr.SD ->
            "Судан"

        Cldr.SE ->
            "Швецыя"

        Cldr.SG ->
            "Сінгапур"

        Cldr.SH ->
            "Востраў Святой Алены"

        Cldr.SI ->
            "Славенія"

        Cldr.SJ ->
            "Шпіцберген і Ян-Маен"

        Cldr.SK ->
            "Славакія"

        Cldr.SL ->
            "Сьера-Леонэ"

        Cldr.SM ->
            "Сан-Марына"

        Cldr.SN ->
            "Сенегал"

        Cldr.SO ->
            "Самалі"

        Cldr.SR ->
            "Сурынам"

        Cldr.SS ->
            "Паўднёвы Судан"

        Cldr.ST ->
            "Сан-Тамэ і Прынсіпі"

        Cldr.SV ->
            "Сальвадор"

        Cldr.SX ->
            "Сінт-Мартэн"

        Cldr.SY ->
            "Сірыя"

        Cldr.SZ ->
            "Эсватыні"

        Cldr.TC ->
            "Астравы Цёркс і Кайкас"

        Cldr.TD ->
            "Чад"

        Cldr.TF ->
            "Французскія паўднёвыя тэрыторыі"

        Cldr.TG ->
            "Тога"

        Cldr.TH ->
            "Тайланд"

        Cldr.TJ ->
            "Таджыкістан"

        Cldr.TK ->
            "Такелау"

        Cldr.TL ->
            "Усходні Тымор"

        Cldr.TM ->
            "Туркменістан"

        Cldr.TN ->
            "Туніс"

        Cldr.TO ->
            "Тонга"

        Cldr.TR ->
            "Турцыя"

        Cldr.TT ->
            "Трынідад і Табага"

        Cldr.TV ->
            "Тувалу"

        Cldr.TW ->
            "Тайвань"

        Cldr.TZ ->
            "Танзанія"

        Cldr.UA ->
            "Украіна"

        Cldr.UG ->
            "Уганда"

        Cldr.UM ->
            "Малыя Аддаленыя астравы ЗША"

        Cldr.US ->
            "Злучаныя Штаты"

        Cldr.UY ->
            "Уругвай"

        Cldr.UZ ->
            "Узбекістан"

        Cldr.VA ->
            "Ватыкан"

        Cldr.VC ->
            "Сент-Вінсент і Грэнадзіны"

        Cldr.VE ->
            "Венесуэла"

        Cldr.VG ->
            "Брытанскія Віргінскія астравы"

        Cldr.VI ->
            "Амерыканскія Віргінскія астравы"

        Cldr.VN ->
            "В’етнам"

        Cldr.VU ->
            "Вануату"

        Cldr.WF ->
            "Уоліс і Футуна"

        Cldr.WS ->
            "Самоа"

        Cldr.XK ->
            "Косава"

        Cldr.YE ->
            "Емен"

        Cldr.YT ->
            "Маёта"

        Cldr.ZA ->
            "Паўднёва-Афрыканская Рэспубліка"

        Cldr.ZM ->
            "Замбія"

        Cldr.ZW ->
            "Зімбабвэ"