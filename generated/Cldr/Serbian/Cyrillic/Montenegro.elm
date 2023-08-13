module Cldr.Serbian.Cyrillic.Montenegro exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Serbian


{-| Name for `CountryCode` in Serbian (Cyrillic) - Montenegro.

    AD Андора
    AE Уједињени Арапски Емирати
    AF Авганистан
    AG Антигва и Барбуда
    AI Ангвила
    AL Албанија
    AM Јерменија
    AO Ангола
    AQ Антарктик
    AR Аргентина
    AS Америчка Самоа
    AT Аустрија
    AU Аустралија
    AW Аруба
    AX Оландска Острва
    AZ Азербејџан
    BA Босна и Херцеговина
    BB Барбадос
    BD Бангладеш
    BE Белгија
    BF Буркина Фасо
    BG Бугарска
    BH Бахреин
    BI Бурунди
    BJ Бенин
    BL Свети Бартоломеј
    BM Бермуда
    BN Брунеј
    BO Боливија
    BQ Карипска Холандија
    BR Бразил
    BS Бахами
    BT Бутан
    BV Острво Буве
    BW Боцвана
    BY Бјелорусија
    BZ Белизе
    CA Канада
    CC Кокосова (Килингова) Острва
    CD Конго (ДРК)
    CF Централноафричка Република
    CG Конго (Република)
    CH Швајцарска
    CI Обала Слоноваче (Кот д’Ивоар)
    CK Кукова Острва
    CL Чиле
    CM Камерун
    CN Кина
    CO Колумбија
    CR Костарика
    CU Куба
    CV Зеленортска Острва
    CW Курасао
    CX Божићно Острво
    CY Кипар
    CZ Чешка Република
    DE Њемачка
    DJ Џибути
    DK Данска
    DM Доминика
    DO Доминиканска Република
    DZ Алжир
    EC Еквадор
    EE Естонија
    EG Египат
    EH Западна Сахара
    ER Еритреја
    ES Шпанија
    ET Етиопија
    FI Финска
    FJ Фиџи
    FK Фокландска Острва
    FM Микронезија
    FO Фарска Острва
    FR Француска
    GA Габон
    GB Уједињено Краљевство
    GD Гренада
    GE Грузија
    GF Француска Гвајана
    GG Гернзи
    GH Гана
    GI Гибралтар
    GL Гренланд
    GM Гамбија
    GN Гвинеја
    GP Гваделуп
    GQ Екваторијална Гвинеја
    GR Грчка
    GS Јужна Џорџија и Јужна Сендвичка Острва
    GT Гватемала
    GU Гуам
    GW Гвинеја-Бисао
    GY Гвајана
    HK Хонгконг
    HM Острво Херд и Мекдоналдова острва
    HN Хондурас
    HR Хрватска
    HT Хаити
    HU Мађарска
    ID Индонезија
    IE Ирска
    IL Израел
    IM Острво Ман
    IN Индија
    IO Британска територија Индијског океана
    IQ Ирак
    IR Иран
    IS Исланд
    IT Италија
    JE Џерзи
    JM Јамајка
    JO Јордан
    JP Јапан
    KE Кенија
    KG Киргистан
    KH Камбоџа
    KI Кирибати
    KM Коморска Острва
    KN Свети Китс и Невис
    KP Северна Кореја
    KR Јужна Кореја
    KW Кувајт
    KY Кајманска Острва
    KZ Казахстан
    LA Лаос
    LB Либан
    LC Света Луција
    LI Лихтенштајн
    LK Шри Ланка
    LR Либерија
    LS Лесото
    LT Литванија
    LU Луксембург
    LV Летонија
    LY Либија
    MA Мароко
    MC Монако
    MD Молдавија
    ME Црна Гора
    MF Свети Мартин (Француска)
    MG Мадагаскар
    MH Маршалска Острва
    MK Северна Македонија
    ML Мали
    MM Мијанмар (Бурма)
    MN Монголија
    MO Макао
    MP Северна Маријанска Острва
    MQ Мартиник
    MR Мауританија
    MS Монсерат
    MT Малта
    MU Маурицијус
    MV Малдиви
    MW Малави
    MX Мексико
    MY Малезија
    MZ Мозамбик
    NA Намибија
    NC Нова Каледонија
    NE Нигер
    NF Острво Норфок
    NG Нигерија
    NI Никарагва
    NL Холандија
    NO Норвешка
    NP Непал
    NR Науру
    NU Ниуе
    NZ Нови Зеланд
    OM Оман
    PA Панама
    PE Перу
    PF Француска Полинезија
    PG Папуа Нова Гвинеја
    PH Филипини
    PK Пакистан
    PL Пољска
    PM Свети Пјер и Микелон
    PN Питкерн
    PR Порторико
    PS Палестина
    PT Португалија
    PW Палау
    PY Парагвај
    QA Катар
    RE Реунион
    RO Румунија
    RS Србија
    RU Русија
    RW Руанда
    SA Саудијска Арабија
    SB Соломонска Острва
    SC Сејшели
    SD Судан
    SE Шведска
    SG Сингапур
    SH Света Јелена
    SI Словенија
    SJ Свалбард и Јан Мајен
    SK Словачка
    SL Сијера Леоне
    SM Сан Марино
    SN Сенегал
    SO Сомалија
    SR Суринам
    SS Јужни Судан
    ST Сао Томе и Принципе
    SV Салвадор
    SX Свети Мартин (Холандија)
    SY Сирија
    SZ Свазиленд
    TC Острва Туркс и Каикос
    TD Чад
    TF Француске Јужне Територије
    TG Того
    TH Тајланд
    TJ Таџикистан
    TK Токелау
    TL Источни Тимор
    TM Туркменистан
    TN Тунис
    TO Тонга
    TR Турска
    TT Тринидад и Тобаго
    TV Тувалу
    TW Тајван
    TZ Танзанија
    UA Украјина
    UG Уганда
    UM Мања удаљена острва САД
    US Сједињене Државе
    UY Уругвај
    UZ Узбекистан
    VA Ватикан
    VC Свети Винсент и Гренадини
    VE Венецуела
    VG Британска Дјевичанска Острва
    VI Америчка Дјевичанска Острва
    VN Вијетнам
    VU Вануату
    WF Валис и Футуна
    WS Самоа
    XK Косово
    YE Јемен
    YT Мајот
    ZA Јужноафричка Република
    ZM Замбија
    ZW Зимбабве
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.BY ->
            "Бјелорусија"

        Cldr.DE ->
            "Њемачка"

        Cldr.KN ->
            "Свети Китс и Невис"

        Cldr.PM ->
            "Свети Пјер и Микелон"

        Cldr.RE ->
            "Реунион"

        Cldr.UM ->
            "Мања удаљена острва САД"

        Cldr.VC ->
            "Свети Винсент и Гренадини"

        Cldr.VG ->
            "Британска Дјевичанска Острва"

        Cldr.VI ->
            "Америчка Дјевичанска Острва"

        _ ->
            Cldr.Serbian.countryCodeToName countryCode