module Cldr.Latvian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Latvian.

    AD Andora
    AE Apvienotie Arābu Emirāti
    AF Afganistāna
    AG Antigva un Barbuda
    AI Angilja
    AL Albānija
    AM Armēnija
    AO Angola
    AQ Antarktika
    AR Argentīna
    AS ASV Samoa
    AT Austrija
    AU Austrālija
    AW Aruba
    AX Olandes salas
    AZ Azerbaidžāna
    BA Bosnija un Hercegovina
    BB Barbadosa
    BD Bangladeša
    BE Beļģija
    BF Burkinafaso
    BG Bulgārija
    BH Bahreina
    BI Burundija
    BJ Benina
    BL Senbartelmī
    BM Bermudu salas
    BN Bruneja
    BO Bolīvija
    BQ Nīderlandes Karību salas
    BR Brazīlija
    BS Bahamu salas
    BT Butāna
    BV Buvē sala
    BW Botsvāna
    BY Baltkrievija
    BZ Beliza
    CA Kanāda
    CC Kokosu (Kīlinga) salas
    CD Kongo Demokrātiskā Republika
    CF Centrālāfrikas Republika
    CG Kongo (Republika)
    CH Šveice
    CI Kotdivuāra
    CK Kuka salas
    CL Čīle
    CM Kamerūna
    CN Ķīna
    CO Kolumbija
    CR Kostarika
    CU Kuba
    CV Kaboverde
    CW Kirasao
    CX Ziemsvētku sala
    CY Kipra
    CZ Čehijas Republika
    DE Vācija
    DJ Džibutija
    DK Dānija
    DM Dominika
    DO Dominikāna
    DZ Alžīrija
    EC Ekvadora
    EE Igaunija
    EG Ēģipte
    EH Rietumsahāra
    ER Eritreja
    ES Spānija
    ET Etiopija
    FI Somija
    FJ Fidži
    FK Folklenda salas
    FM Mikronēzija
    FO Fēru salas
    FR Francija
    GA Gabona
    GB Apvienotā Karaliste
    GD Grenāda
    GE Gruzija
    GF Francijas Gviāna
    GG Gērnsija
    GH Gana
    GI Gibraltārs
    GL Grenlande
    GM Gambija
    GN Gvineja
    GP Gvadelupa
    GQ Ekvatoriālā Gvineja
    GR Grieķija
    GS Dienviddžordžija un Dienvidsendviču salas
    GT Gvatemala
    GU Guama
    GW Gvineja-Bisava
    GY Gajāna
    HK Honkonga
    HM Hērda sala un Makdonalda salas
    HN Hondurasa
    HR Horvātija
    HT Haiti
    HU Ungārija
    ID Indonēzija
    IE Īrija
    IL Izraēla
    IM Menas sala
    IN Indija
    IO Indijas okeāna Britu teritorija
    IQ Irāka
    IR Irāna
    IS Islande
    IT Itālija
    JE Džērsija
    JM Jamaika
    JO Jordānija
    JP Japāna
    KE Kenija
    KG Kirgizstāna
    KH Kambodža
    KI Kiribati
    KM Komoru salas
    KN Sentkitsa un Nevisa
    KP Ziemeļkoreja
    KR Dienvidkoreja
    KW Kuveita
    KY Kaimanu salas
    KZ Kazahstāna
    LA Laosa
    LB Libāna
    LC Sentlūsija
    LI Lihtenšteina
    LK Šrilanka
    LR Libērija
    LS Lesoto
    LT Lietuva
    LU Luksemburga
    LV Latvija
    LY Lībija
    MA Maroka
    MC Monako
    MD Moldova
    ME Melnkalne
    MF Senmartēna
    MG Madagaskara
    MH Māršala salas
    MK Ziemeļmaķedonija
    ML Mali
    MM Mjanma (Birma)
    MN Mongolija
    MO Makao
    MP Ziemeļu Marianas salas
    MQ Martinika
    MR Mauritānija
    MS Montserrata
    MT Malta
    MU Maurīcija
    MV Maldīvija
    MW Malāvija
    MX Meksika
    MY Malaizija
    MZ Mozambika
    NA Namībija
    NC Jaunkaledonija
    NE Nigēra
    NF Norfolkas sala
    NG Nigērija
    NI Nikaragva
    NL Nīderlande
    NO Norvēģija
    NP Nepāla
    NR Nauru
    NU Niue
    NZ Jaunzēlande
    OM Omāna
    PA Panama
    PE Peru
    PF Francijas Polinēzija
    PG Papua-Jaungvineja
    PH Filipīnas
    PK Pakistāna
    PL Polija
    PM Senpjēra un Mikelona
    PN Pitkērnas salas
    PR Puertoriko
    PS Palestīna
    PT Portugāle
    PW Palau
    PY Paragvaja
    QA Katara
    RE Reinjona
    RO Rumānija
    RS Serbija
    RU Krievija
    RW Ruanda
    SA Saūda Arābija
    SB Zālamana salas
    SC Seišelu salas
    SD Sudāna
    SE Zviedrija
    SG Singapūra
    SH Sv.Helēnas sala
    SI Slovēnija
    SJ Svalbāra un Jana Majena sala
    SK Slovākija
    SL Sjerraleone
    SM Sanmarīno
    SN Senegāla
    SO Somālija
    SR Surinama
    SS Dienvidsudāna
    ST Santome un Prinsipi
    SV Salvadora
    SX Sintmārtena
    SY Sīrija
    SZ Svatini
    TC Tērksas un Kaikosas salas
    TD Čada
    TF Francijas Dienvidjūru teritorija
    TG Togo
    TH Taizeme
    TJ Tadžikistāna
    TK Tokelau
    TL Austrumtimora
    TM Turkmenistāna
    TN Tunisija
    TO Tonga
    TR Turcija
    TT Trinidāda un Tobāgo
    TV Tuvalu
    TW Taivāna
    TZ Tanzānija
    UA Ukraina
    UG Uganda
    UM ASV Mazās Aizjūras salas
    US Amerikas Savienotās Valstis
    UY Urugvaja
    UZ Uzbekistāna
    VA Vatikāns
    VC Sentvinsenta un Grenadīnas
    VE Venecuēla
    VG Britu Virdžīnas
    VI ASV Virdžīnas
    VN Vjetnama
    VU Vanuatu
    WF Volisa un Futunas salas
    WS Samoa
    XK Kosova
    YE Jemena
    YT Majota
    ZA Dienvidāfrikas Republika
    ZM Zambija
    ZW Zimbabve
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andora"

        Cldr.AE ->
            "Apvienotie Arābu Emirāti"

        Cldr.AF ->
            "Afganistāna"

        Cldr.AG ->
            "Antigva un Barbuda"

        Cldr.AI ->
            "Angilja"

        Cldr.AL ->
            "Albānija"

        Cldr.AM ->
            "Armēnija"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktika"

        Cldr.AR ->
            "Argentīna"

        Cldr.AS ->
            "ASV Samoa"

        Cldr.AT ->
            "Austrija"

        Cldr.AU ->
            "Austrālija"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Olandes salas"

        Cldr.AZ ->
            "Azerbaidžāna"

        Cldr.BA ->
            "Bosnija un Hercegovina"

        Cldr.BB ->
            "Barbadosa"

        Cldr.BD ->
            "Bangladeša"

        Cldr.BE ->
            "Beļģija"

        Cldr.BF ->
            "Burkinafaso"

        Cldr.BG ->
            "Bulgārija"

        Cldr.BH ->
            "Bahreina"

        Cldr.BI ->
            "Burundija"

        Cldr.BJ ->
            "Benina"

        Cldr.BL ->
            "Senbartelmī"

        Cldr.BM ->
            "Bermudu salas"

        Cldr.BN ->
            "Bruneja"

        Cldr.BO ->
            "Bolīvija"

        Cldr.BQ ->
            "Nīderlandes Karību salas"

        Cldr.BR ->
            "Brazīlija"

        Cldr.BS ->
            "Bahamu salas"

        Cldr.BT ->
            "Butāna"

        Cldr.BV ->
            "Buvē sala"

        Cldr.BW ->
            "Botsvāna"

        Cldr.BY ->
            "Baltkrievija"

        Cldr.BZ ->
            "Beliza"

        Cldr.CA ->
            "Kanāda"

        Cldr.CC ->
            "Kokosu (Kīlinga) salas"

        Cldr.CD ->
            "Kongo Demokrātiskā Republika"

        Cldr.CF ->
            "Centrālāfrikas Republika"

        Cldr.CG ->
            "Kongo (Republika)"

        Cldr.CH ->
            "Šveice"

        Cldr.CI ->
            "Kotdivuāra"

        Cldr.CK ->
            "Kuka salas"

        Cldr.CL ->
            "Čīle"

        Cldr.CM ->
            "Kamerūna"

        Cldr.CN ->
            "Ķīna"

        Cldr.CO ->
            "Kolumbija"

        Cldr.CR ->
            "Kostarika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kaboverde"

        Cldr.CW ->
            "Kirasao"

        Cldr.CX ->
            "Ziemsvētku sala"

        Cldr.CY ->
            "Kipra"

        Cldr.CZ ->
            "Čehijas Republika"

        Cldr.DE ->
            "Vācija"

        Cldr.DJ ->
            "Džibutija"

        Cldr.DK ->
            "Dānija"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikāna"

        Cldr.DZ ->
            "Alžīrija"

        Cldr.EC ->
            "Ekvadora"

        Cldr.EE ->
            "Igaunija"

        Cldr.EG ->
            "Ēģipte"

        Cldr.EH ->
            "Rietumsahāra"

        Cldr.ER ->
            "Eritreja"

        Cldr.ES ->
            "Spānija"

        Cldr.ET ->
            "Etiopija"

        Cldr.FI ->
            "Somija"

        Cldr.FJ ->
            "Fidži"

        Cldr.FK ->
            "Folklenda salas"

        Cldr.FM ->
            "Mikronēzija"

        Cldr.FO ->
            "Fēru salas"

        Cldr.FR ->
            "Francija"

        Cldr.GA ->
            "Gabona"

        Cldr.GB ->
            "Apvienotā Karaliste"

        Cldr.GD ->
            "Grenāda"

        Cldr.GE ->
            "Gruzija"

        Cldr.GF ->
            "Francijas Gviāna"

        Cldr.GG ->
            "Gērnsija"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gibraltārs"

        Cldr.GL ->
            "Grenlande"

        Cldr.GM ->
            "Gambija"

        Cldr.GN ->
            "Gvineja"

        Cldr.GP ->
            "Gvadelupa"

        Cldr.GQ ->
            "Ekvatoriālā Gvineja"

        Cldr.GR ->
            "Grieķija"

        Cldr.GS ->
            "Dienviddžordžija un Dienvidsendviču salas"

        Cldr.GT_ ->
            "Gvatemala"

        Cldr.GU ->
            "Guama"

        Cldr.GW ->
            "Gvineja-Bisava"

        Cldr.GY ->
            "Gajāna"

        Cldr.HK ->
            "Honkonga"

        Cldr.HM ->
            "Hērda sala un Makdonalda salas"

        Cldr.HN ->
            "Hondurasa"

        Cldr.HR ->
            "Horvātija"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungārija"

        Cldr.ID ->
            "Indonēzija"

        Cldr.IE ->
            "Īrija"

        Cldr.IL ->
            "Izraēla"

        Cldr.IM ->
            "Menas sala"

        Cldr.IN ->
            "Indija"

        Cldr.IO ->
            "Indijas okeāna Britu teritorija"

        Cldr.IQ ->
            "Irāka"

        Cldr.IR ->
            "Irāna"

        Cldr.IS ->
            "Islande"

        Cldr.IT ->
            "Itālija"

        Cldr.JE ->
            "Džērsija"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jordānija"

        Cldr.JP ->
            "Japāna"

        Cldr.KE ->
            "Kenija"

        Cldr.KG ->
            "Kirgizstāna"

        Cldr.KH ->
            "Kambodža"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komoru salas"

        Cldr.KN ->
            "Sentkitsa un Nevisa"

        Cldr.KP ->
            "Ziemeļkoreja"

        Cldr.KR ->
            "Dienvidkoreja"

        Cldr.KW ->
            "Kuveita"

        Cldr.KY ->
            "Kaimanu salas"

        Cldr.KZ ->
            "Kazahstāna"

        Cldr.LA ->
            "Laosa"

        Cldr.LB ->
            "Libāna"

        Cldr.LC ->
            "Sentlūsija"

        Cldr.LI ->
            "Lihtenšteina"

        Cldr.LK ->
            "Šrilanka"

        Cldr.LR ->
            "Libērija"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Lietuva"

        Cldr.LU ->
            "Luksemburga"

        Cldr.LV ->
            "Latvija"

        Cldr.LY ->
            "Lībija"

        Cldr.MA ->
            "Maroka"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Melnkalne"

        Cldr.MF ->
            "Senmartēna"

        Cldr.MG ->
            "Madagaskara"

        Cldr.MH ->
            "Māršala salas"

        Cldr.MK ->
            "Ziemeļmaķedonija"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mjanma (Birma)"

        Cldr.MN ->
            "Mongolija"

        Cldr.MO ->
            "Makao"

        Cldr.MP ->
            "Ziemeļu Marianas salas"

        Cldr.MQ ->
            "Martinika"

        Cldr.MR ->
            "Mauritānija"

        Cldr.MS ->
            "Montserrata"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Maurīcija"

        Cldr.MV ->
            "Maldīvija"

        Cldr.MW ->
            "Malāvija"

        Cldr.MX ->
            "Meksika"

        Cldr.MY ->
            "Malaizija"

        Cldr.MZ ->
            "Mozambika"

        Cldr.NA ->
            "Namībija"

        Cldr.NC ->
            "Jaunkaledonija"

        Cldr.NE ->
            "Nigēra"

        Cldr.NF ->
            "Norfolkas sala"

        Cldr.NG ->
            "Nigērija"

        Cldr.NI ->
            "Nikaragva"

        Cldr.NL ->
            "Nīderlande"

        Cldr.NO ->
            "Norvēģija"

        Cldr.NP ->
            "Nepāla"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Jaunzēlande"

        Cldr.OM ->
            "Omāna"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Francijas Polinēzija"

        Cldr.PG ->
            "Papua-Jaungvineja"

        Cldr.PH ->
            "Filipīnas"

        Cldr.PK ->
            "Pakistāna"

        Cldr.PL ->
            "Polija"

        Cldr.PM ->
            "Senpjēra un Mikelona"

        Cldr.PN ->
            "Pitkērnas salas"

        Cldr.PR ->
            "Puertoriko"

        Cldr.PS ->
            "Palestīna"

        Cldr.PT ->
            "Portugāle"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragvaja"

        Cldr.QA ->
            "Katara"

        Cldr.RE ->
            "Reinjona"

        Cldr.RO ->
            "Rumānija"

        Cldr.RS ->
            "Serbija"

        Cldr.RU ->
            "Krievija"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saūda Arābija"

        Cldr.SB ->
            "Zālamana salas"

        Cldr.SC ->
            "Seišelu salas"

        Cldr.SD ->
            "Sudāna"

        Cldr.SE ->
            "Zviedrija"

        Cldr.SG ->
            "Singapūra"

        Cldr.SH ->
            "Sv.Helēnas sala"

        Cldr.SI ->
            "Slovēnija"

        Cldr.SJ ->
            "Svalbāra un Jana Majena sala"

        Cldr.SK ->
            "Slovākija"

        Cldr.SL ->
            "Sjerraleone"

        Cldr.SM ->
            "Sanmarīno"

        Cldr.SN ->
            "Senegāla"

        Cldr.SO ->
            "Somālija"

        Cldr.SR ->
            "Surinama"

        Cldr.SS ->
            "Dienvidsudāna"

        Cldr.ST ->
            "Santome un Prinsipi"

        Cldr.SV ->
            "Salvadora"

        Cldr.SX ->
            "Sintmārtena"

        Cldr.SY ->
            "Sīrija"

        Cldr.SZ ->
            "Svatini"

        Cldr.TC ->
            "Tērksas un Kaikosas salas"

        Cldr.TD ->
            "Čada"

        Cldr.TF ->
            "Francijas Dienvidjūru teritorija"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Taizeme"

        Cldr.TJ ->
            "Tadžikistāna"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Austrumtimora"

        Cldr.TM ->
            "Turkmenistāna"

        Cldr.TN ->
            "Tunisija"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turcija"

        Cldr.TT ->
            "Trinidāda un Tobāgo"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taivāna"

        Cldr.TZ ->
            "Tanzānija"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "ASV Mazās Aizjūras salas"

        Cldr.US ->
            "Amerikas Savienotās Valstis"

        Cldr.UY ->
            "Urugvaja"

        Cldr.UZ ->
            "Uzbekistāna"

        Cldr.VA ->
            "Vatikāns"

        Cldr.VC ->
            "Sentvinsenta un Grenadīnas"

        Cldr.VE ->
            "Venecuēla"

        Cldr.VG ->
            "Britu Virdžīnas"

        Cldr.VI ->
            "ASV Virdžīnas"

        Cldr.VN ->
            "Vjetnama"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Volisa un Futunas salas"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosova"

        Cldr.YE ->
            "Jemena"

        Cldr.YT ->
            "Majota"

        Cldr.ZA ->
            "Dienvidāfrikas Republika"

        Cldr.ZM ->
            "Zambija"

        Cldr.ZW ->
            "Zimbabve"