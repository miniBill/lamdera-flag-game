module Cldr.Uzbek exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Uzbek.

    AD Andorra
    AE Birlashgan Arab Amirliklari
    AF Afgʻoniston
    AG Antigua va Barbuda
    AI Angilya
    AL Albaniya
    AM Armaniston
    AO Angola
    AQ Antarktida
    AR Argentina
    AS Amerika Samoasi
    AT Avstriya
    AU Avstraliya
    AW Aruba
    AX Aland orollari
    AZ Ozarbayjon
    BA Bosniya va Gertsegovina
    BB Barbados
    BD Bangladesh
    BE Belgiya
    BF Burkina-Faso
    BG Bolgariya
    BH Bahrayn
    BI Burundi
    BJ Benin
    BL Sen-Bartelemi
    BM Bermuda orollari
    BN Bruney
    BO Boliviya
    BQ Boneyr, Sint-Estatius va Saba
    BR Braziliya
    BS Bagama orollari
    BT Butan
    BV Buve oroli
    BW Botsvana
    BY Belarus
    BZ Beliz
    CA Kanada
    CC Kokos (Kiling) orollari
    CD Kongo (KDR)
    CF Markaziy Afrika Respublikasi
    CG Kongo (Respublika)
    CH Shveytsariya
    CI Kot-d’Ivuar
    CK Kuk orollari
    CL Chili
    CM Kamerun
    CN Xitoy
    CO Kolumbiya
    CR Kosta-Rika
    CU Kuba
    CV Kabo-Verde
    CW Kyurasao
    CX Rojdestvo oroli
    CY Kipr
    CZ Chexiya Respublikasi
    DE Germaniya
    DJ Jibuti
    DK Daniya
    DM Dominika
    DO Dominikan Respublikasi
    DZ Jazoir
    EC Ekvador
    EE Estoniya
    EG Misr
    EH G‘arbiy Sahroi Kabir
    ER Eritreya
    ES Ispaniya
    ET Efiopiya
    FI Finlandiya
    FJ Fiji
    FK Folklend orollari
    FM Mikroneziya
    FO Farer orollari
    FR Fransiya
    GA Gabon
    GB Buyuk Britaniya
    GD Grenada
    GE Gruziya
    GF Fransuz Gvianasi
    GG Gernsi
    GH Gana
    GI Gibraltar
    GL Grenlandiya
    GM Gambiya
    GN Gvineya
    GP Gvadelupe
    GQ Ekvatorial Gvineya
    GR Gretsiya
    GS Janubiy Georgiya va Janubiy Sendvich orollari
    GT Gvatemala
    GU Guam
    GW Gvineya-Bisau
    GY Gayana
    HK Gonkong
    HM Xerd va Makdonald orollari
    HN Gonduras
    HR Xorvatiya
    HT Gaiti
    HU Vengriya
    ID Indoneziya
    IE Irlandiya
    IL Isroil
    IM Men oroli
    IN Hindiston
    IO Britaniyaning Hind okeanidagi hududi
    IQ Iroq
    IR Eron
    IS Islandiya
    IT Italiya
    JE Jersi
    JM Yamayka
    JO Iordaniya
    JP Yaponiya
    KE Keniya
    KG Qirgʻiziston
    KH Kambodja
    KI Kiribati
    KM Komor orollari
    KN Sent-Kits va Nevis
    KP Shimoliy Koreya
    KR Janubiy Koreya
    KW Quvayt
    KY Kayman orollari
    KZ Qozogʻiston
    LA Laos
    LB Livan
    LC Sent-Lyusiya
    LI Lixtenshteyn
    LK Shri-Lanka
    LR Liberiya
    LS Lesoto
    LT Litva
    LU Lyuksemburg
    LV Latviya
    LY Liviya
    MA Marokash
    MC Monako
    MD Moldova
    ME Chernogoriya
    MF Sent-Martin
    MG Madagaskar
    MH Marshall orollari
    MK Shimoliy Makedoniya
    ML Mali
    MM Myanma (Birma)
    MN Mongoliya
    MO Makao
    MP Shimoliy Mariana orollari
    MQ Martinika
    MR Mavritaniya
    MS Montserrat
    MT Malta
    MU Mavrikiy
    MV Maldiv orollari
    MW Malavi
    MX Meksika
    MY Malayziya
    MZ Mozambik
    NA Namibiya
    NC Yangi Kaledoniya
    NE Niger
    NF Norfolk oroli
    NG Nigeriya
    NI Nikaragua
    NL Niderlandiya
    NO Norvegiya
    NP Nepal
    NR Nauru
    NU Niue
    NZ Yangi Zelandiya
    OM Ummon
    PA Panama
    PE Peru
    PF Fransuz Polineziyasi
    PG Papua – Yangi Gvineya
    PH Filippin
    PK Pokiston
    PL Polsha
    PM Sen-Pyer va Mikelon
    PN Pitkern orollari
    PR Puerto-Riko
    PS Falastin
    PT Portugaliya
    PW Palau
    PY Paragvay
    QA Qatar
    RE Reyunion
    RO Ruminiya
    RS Serbiya
    RU Rossiya
    RW Ruanda
    SA Saudiya Arabistoni
    SB Solomon orollari
    SC Seyshel orollari
    SD Sudan
    SE Shvetsiya
    SG Singapur
    SH Muqaddas Yelena oroli
    SI Sloveniya
    SJ Shpitsbergen va Yan-Mayen
    SK Slovakiya
    SL Syerra-Leone
    SM San-Marino
    SN Senegal
    SO Somali
    SR Surinam
    SS Janubiy Sudan
    ST San-Tome va Prinsipi
    SV Salvador
    SX Sint-Marten
    SY Suriya
    SZ Svazilend
    TC Turks va Kaykos orollari
    TD Chad
    TF Fransuz Janubiy hududlari
    TG Togo
    TH Tailand
    TJ Tojikiston
    TK Tokelau
    TL Sharqiy Timor
    TM Turkmaniston
    TN Tunis
    TO Tonga
    TR Turkiya
    TT Trinidad va Tobago
    TV Tuvalu
    TW Tayvan
    TZ Tanzaniya
    UA Ukraina
    UG Uganda
    UM AQSH yondosh orollari
    US Amerika Qo‘shma Shtatlari
    UY Urugvay
    UZ Oʻzbekiston
    VA Vatikan
    VC Sent-Vinsent va Grenadin
    VE Venesuela
    VG Britaniya Virgin orollari
    VI AQSH Virgin orollari
    VN Vyetnam
    VU Vanuatu
    WF Uollis va Futuna
    WS Samoa
    XK Kosovo
    YE Yaman
    YT Mayotta
    ZA Janubiy Afrika Respublikasi
    ZM Zambiya
    ZW Zimbabve
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Birlashgan Arab Amirliklari"

        Cldr.AF ->
            "Afgʻoniston"

        Cldr.AG ->
            "Antigua va Barbuda"

        Cldr.AI ->
            "Angilya"

        Cldr.AL ->
            "Albaniya"

        Cldr.AM ->
            "Armaniston"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktida"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Amerika Samoasi"

        Cldr.AT ->
            "Avstriya"

        Cldr.AU ->
            "Avstraliya"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Aland orollari"

        Cldr.AZ ->
            "Ozarbayjon"

        Cldr.BA ->
            "Bosniya va Gertsegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgiya"

        Cldr.BF ->
            "Burkina-Faso"

        Cldr.BG ->
            "Bolgariya"

        Cldr.BH ->
            "Bahrayn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Sen-Bartelemi"

        Cldr.BM ->
            "Bermuda orollari"

        Cldr.BN ->
            "Bruney"

        Cldr.BO ->
            "Boliviya"

        Cldr.BQ ->
            "Boneyr, Sint-Estatius va Saba"

        Cldr.BR ->
            "Braziliya"

        Cldr.BS ->
            "Bagama orollari"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Buve oroli"

        Cldr.BW ->
            "Botsvana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Beliz"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokos (Kiling) orollari"

        Cldr.CD ->
            "Kongo (KDR)"

        Cldr.CF ->
            "Markaziy Afrika Respublikasi"

        Cldr.CG ->
            "Kongo (Respublika)"

        Cldr.CH ->
            "Shveytsariya"

        Cldr.CI ->
            "Kot-d’Ivuar"

        Cldr.CK ->
            "Kuk orollari"

        Cldr.CL ->
            "Chili"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Xitoy"

        Cldr.CO ->
            "Kolumbiya"

        Cldr.CR ->
            "Kosta-Rika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kabo-Verde"

        Cldr.CW ->
            "Kyurasao"

        Cldr.CX ->
            "Rojdestvo oroli"

        Cldr.CY ->
            "Kipr"

        Cldr.CZ ->
            "Chexiya Respublikasi"

        Cldr.DE ->
            "Germaniya"

        Cldr.DJ ->
            "Jibuti"

        Cldr.DK ->
            "Daniya"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikan Respublikasi"

        Cldr.DZ ->
            "Jazoir"

        Cldr.EC ->
            "Ekvador"

        Cldr.EE ->
            "Estoniya"

        Cldr.EG ->
            "Misr"

        Cldr.EH ->
            "G‘arbiy Sahroi Kabir"

        Cldr.ER ->
            "Eritreya"

        Cldr.ES ->
            "Ispaniya"

        Cldr.ET ->
            "Efiopiya"

        Cldr.FI ->
            "Finlandiya"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Folklend orollari"

        Cldr.FM ->
            "Mikroneziya"

        Cldr.FO ->
            "Farer orollari"

        Cldr.FR ->
            "Fransiya"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Buyuk Britaniya"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruziya"

        Cldr.GF ->
            "Fransuz Gvianasi"

        Cldr.GG ->
            "Gernsi"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grenlandiya"

        Cldr.GM ->
            "Gambiya"

        Cldr.GN ->
            "Gvineya"

        Cldr.GP ->
            "Gvadelupe"

        Cldr.GQ ->
            "Ekvatorial Gvineya"

        Cldr.GR ->
            "Gretsiya"

        Cldr.GS ->
            "Janubiy Georgiya va Janubiy Sendvich orollari"

        Cldr.GT_ ->
            "Gvatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gvineya-Bisau"

        Cldr.GY ->
            "Gayana"

        Cldr.HK ->
            "Gonkong"

        Cldr.HM ->
            "Xerd va Makdonald orollari"

        Cldr.HN ->
            "Gonduras"

        Cldr.HR ->
            "Xorvatiya"

        Cldr.HT ->
            "Gaiti"

        Cldr.HU ->
            "Vengriya"

        Cldr.ID ->
            "Indoneziya"

        Cldr.IE ->
            "Irlandiya"

        Cldr.IL ->
            "Isroil"

        Cldr.IM ->
            "Men oroli"

        Cldr.IN ->
            "Hindiston"

        Cldr.IO ->
            "Britaniyaning Hind okeanidagi hududi"

        Cldr.IQ ->
            "Iroq"

        Cldr.IR ->
            "Eron"

        Cldr.IS ->
            "Islandiya"

        Cldr.IT ->
            "Italiya"

        Cldr.JE ->
            "Jersi"

        Cldr.JM ->
            "Yamayka"

        Cldr.JO ->
            "Iordaniya"

        Cldr.JP ->
            "Yaponiya"

        Cldr.KE ->
            "Keniya"

        Cldr.KG ->
            "Qirgʻiziston"

        Cldr.KH ->
            "Kambodja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komor orollari"

        Cldr.KN ->
            "Sent-Kits va Nevis"

        Cldr.KP ->
            "Shimoliy Koreya"

        Cldr.KR ->
            "Janubiy Koreya"

        Cldr.KW ->
            "Quvayt"

        Cldr.KY ->
            "Kayman orollari"

        Cldr.KZ ->
            "Qozogʻiston"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Livan"

        Cldr.LC ->
            "Sent-Lyusiya"

        Cldr.LI ->
            "Lixtenshteyn"

        Cldr.LK ->
            "Shri-Lanka"

        Cldr.LR ->
            "Liberiya"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Litva"

        Cldr.LU ->
            "Lyuksemburg"

        Cldr.LV ->
            "Latviya"

        Cldr.LY ->
            "Liviya"

        Cldr.MA ->
            "Marokash"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Chernogoriya"

        Cldr.MF ->
            "Sent-Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshall orollari"

        Cldr.MK ->
            "Shimoliy Makedoniya"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanma (Birma)"

        Cldr.MN ->
            "Mongoliya"

        Cldr.MO ->
            "Makao"

        Cldr.MP ->
            "Shimoliy Mariana orollari"

        Cldr.MQ ->
            "Martinika"

        Cldr.MR ->
            "Mavritaniya"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mavrikiy"

        Cldr.MV ->
            "Maldiv orollari"

        Cldr.MW ->
            "Malavi"

        Cldr.MX ->
            "Meksika"

        Cldr.MY ->
            "Malayziya"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibiya"

        Cldr.NC ->
            "Yangi Kaledoniya"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk oroli"

        Cldr.NG ->
            "Nigeriya"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Niderlandiya"

        Cldr.NO ->
            "Norvegiya"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Yangi Zelandiya"

        Cldr.OM ->
            "Ummon"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Fransuz Polineziyasi"

        Cldr.PG ->
            "Papua – Yangi Gvineya"

        Cldr.PH ->
            "Filippin"

        Cldr.PK ->
            "Pokiston"

        Cldr.PL ->
            "Polsha"

        Cldr.PM ->
            "Sen-Pyer va Mikelon"

        Cldr.PN ->
            "Pitkern orollari"

        Cldr.PR ->
            "Puerto-Riko"

        Cldr.PS ->
            "Falastin"

        Cldr.PT ->
            "Portugaliya"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragvay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Reyunion"

        Cldr.RO ->
            "Ruminiya"

        Cldr.RS ->
            "Serbiya"

        Cldr.RU ->
            "Rossiya"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saudiya Arabistoni"

        Cldr.SB ->
            "Solomon orollari"

        Cldr.SC ->
            "Seyshel orollari"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Shvetsiya"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Muqaddas Yelena oroli"

        Cldr.SI ->
            "Sloveniya"

        Cldr.SJ ->
            "Shpitsbergen va Yan-Mayen"

        Cldr.SK ->
            "Slovakiya"

        Cldr.SL ->
            "Syerra-Leone"

        Cldr.SM ->
            "San-Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somali"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Janubiy Sudan"

        Cldr.ST ->
            "San-Tome va Prinsipi"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Sint-Marten"

        Cldr.SY ->
            "Suriya"

        Cldr.SZ ->
            "Svazilend"

        Cldr.TC ->
            "Turks va Kaykos orollari"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Fransuz Janubiy hududlari"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailand"

        Cldr.TJ ->
            "Tojikiston"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Sharqiy Timor"

        Cldr.TM ->
            "Turkmaniston"

        Cldr.TN ->
            "Tunis"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkiya"

        Cldr.TT ->
            "Trinidad va Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Tayvan"

        Cldr.TZ ->
            "Tanzaniya"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "AQSH yondosh orollari"

        Cldr.US ->
            "Amerika Qo‘shma Shtatlari"

        Cldr.UY ->
            "Urugvay"

        Cldr.UZ ->
            "Oʻzbekiston"

        Cldr.VA ->
            "Vatikan"

        Cldr.VC ->
            "Sent-Vinsent va Grenadin"

        Cldr.VE ->
            "Venesuela"

        Cldr.VG ->
            "Britaniya Virgin orollari"

        Cldr.VI ->
            "AQSH Virgin orollari"

        Cldr.VN ->
            "Vyetnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Uollis va Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yaman"

        Cldr.YT ->
            "Mayotta"

        Cldr.ZA ->
            "Janubiy Afrika Respublikasi"

        Cldr.ZM ->
            "Zambiya"

        Cldr.ZW ->
            "Zimbabve"