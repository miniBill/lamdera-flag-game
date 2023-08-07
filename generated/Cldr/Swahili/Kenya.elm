module Cldr.Swahili.Kenya exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Swahili


{-| Name for `CountryCode` in Swahili - Kenya.

    AD Andorra
    AE Falme za Kiarabu
    AF Afghanistani
    AG Antigua na Babuda
    AI Anguila
    AL Albania
    AM Armenia
    AO Angola
    AQ Antaktika
    AR Ajentina
    AS Samoa ya Marekani
    AT Austria
    AU Australia
    AW Aruba
    AX Visiwa vya Aland
    AZ Azabajani
    BA Bosnia na Hezegovina
    BB Babados
    BD Bangladeshi
    BE Ubelgiji
    BF Bukinafaso
    BG Bulgaria
    BH Bahareni
    BI Burundi
    BJ Benini
    BL St. Barthelemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Uholanzi ya Karibiani
    BR Brazil
    BS Bahamas
    BT Bhutani
    BV Kisiwa cha Bouvet
    BW Botswana
    BY Belarusi
    BZ Belize
    CA Kanada
    CC Visiwa vya Kokos (Keeling)
    CD Kongo (DRC)
    CF Jamhuri ya Afrika ya Kati
    CG Jamhuri ya Kongo
    CH Uswisi
    CI Cote d’Ivoire
    CK Visiwa vya Cook
    CL Chile
    CM Kameruni
    CN Uchina
    CO Kolombia
    CR Kostarika
    CU Kuba
    CV Kepuvede
    CW Kurakao
    CX Kisiwa cha Krismasi
    CY Saiprasi
    CZ Jamhuri ya Cheki
    DE Ujerumani
    DJ Jibuti
    DK Denmaki
    DM Dominika
    DO Jamhuri ya Dominika
    DZ Aljeria
    EC Ekwado
    EE Estonia
    EG Misri
    EH Sahara Magharibi
    ER Eritrea
    ES Uhispania
    ET Ethiopia
    FI Ufini
    FJ Fiji
    FK Visiwa vya Falkland
    FM Mikronesia
    FO Visiwa vya Faroe
    FR Ufaransa
    GA Gaboni
    GB Ufalme wa Muungano
    GD Grenada
    GE Jojia
    GF Guiana ya Ufaransa
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Greenland
    GM Gambia
    GN Gine
    GP Gwadelupe
    GQ Guinea ya Ikweta
    GR Ugiriki
    GS Visiwa vya Jojia Kusini na Sandwich Kusini
    GT Gwatemala
    GU Guami
    GW Ginebisau
    GY Guyana
    HK Hong Kong
    HM Kisiwa cha Heard na Visiwa vya McDonald
    HN Honduras
    HR Kroashia
    HT Haiti
    HU Hungaria
    ID Indonesia
    IE Ayalandi
    IL Israeli
    IM Kisiwa cha Man
    IN India
    IO Himaya ya Uingereza katika Bahari Hindi
    IQ Iraki
    IR Iran
    IS Aisilandi
    IT Italia
    JE Jersey
    JM Jamaika
    JO Yordani
    JP Japani
    KE Kenya
    KG Kirigizistani
    KH Kambodia
    KI Kiribati
    KM Komoro
    KN St. Kitts na Nevis
    KP Korea Kaskazini
    KR Korea Kusini
    KW Kuwait
    KY Visiwa vya Cayman
    KZ Kazakistani
    LA Laosi
    LB Lebanoni
    LC St. Lucia
    LI Lishenteni
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lithuania
    LU Lasembagi
    LV Lativia
    LY Libya
    MA Moroko
    MC Monako
    MD Moldova
    ME Montenegro
    MF St. Martin
    MG Madagaska
    MH Visiwa vya Marshall
    MK Masedonia
    ML Mali
    MM Myama (Burma)
    MN Mongolia
    MO Makau
    MP Visiwa vya Mariana vya Kaskazini
    MQ Martinique
    MR Moritania
    MS Montserati
    MT Malta
    MU Morisi
    MV Maldivi
    MW Malawi
    MX Meksiko
    MY Malesia
    MZ Msumbiji
    NA Namibia
    NC Nyukaledonia
    NE Nijeri
    NF Kisiwa cha Norfolk
    NG Nigeria
    NI Nikaragwa
    NL Uholanzi
    NO Norwe
    NP Nepali
    NR Nauru
    NU Niue
    NZ Nyuzilandi
    OM Omani
    PA Panama
    PE Peru
    PF Polinesia ya Ufaransa
    PG Papua Guinea Mpya
    PH Ufilipino
    PK Pakistani
    PL Polandi
    PM St. Pierre na Miquelon
    PN Visiwa vya Pitcairn
    PR Pwetoriko
    PS Palestina
    PT Ureno
    PW Palau
    PY Paragwai
    QA Katari
    RE Reunion
    RO Romania
    RS Serbia
    RU Urusi
    RW Rwanda
    SA Saudia
    SB Visiwa vya Solomon
    SC Ushelisheli
    SD Sudan
    SE Uswidi
    SG Singapuri
    SH St. Helena
    SI Slovenia
    SJ Svalbard na Jan Mayen
    SK Slovakia
    SL Siera Leoni
    SM San Marino
    SN Senegali
    SO Somalia
    SR Suriname
    SS Sudan Kusini
    ST Sao Tome na Prinsipe
    SV Elsalvado
    SX Sint Maarten
    SY Shamu
    SZ Eswatini
    TC Visiwa vya Turks na Caicos
    TD Chadi
    TF Himaya za Kusini za Kifaranza
    TG Togo
    TH Thailandi
    TJ Tajikistani
    TK Tokelau
    TL Timor ya Mashariki
    TM Turukimenstani
    TN Tunisia
    TO Tonga
    TR Uturuki
    TT Trinidad na Tobago
    TV Tuvalu
    TW Taiwani
    TZ Tanzania
    UA Ukreni
    UG Uganda
    UM Visiwa Vidogo vya Nje vya Marekani
    US Marekani
    UY Urugwai
    UZ Uzibekistani
    VA Mji wa Vatikani
    VC St. Vincent na Grenadines
    VE Venezuela
    VG Visiwa vya Virgin vya Uingereza
    VI Visiwa vya Virgin vya Marekani
    VN Vietnamu
    VU Vanuatu
    WF Wallis na Futuna
    WS Samoa
    XK Kosovo
    YE Yemeni
    YT Mayote
    ZA Afrika Kusini
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AF ->
            "Afghanistani"

        Cldr.AG ->
            "Antigua na Babuda"

        Cldr.AI ->
            "Anguila"

        Cldr.AQ ->
            "Antaktika"

        Cldr.AZ ->
            "Azabajani"

        Cldr.BB ->
            "Babados"

        Cldr.BJ ->
            "Benini"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutani"

        Cldr.BY ->
            "Belarusi"

        Cldr.CC ->
            "Visiwa vya Kokos (Keeling)"

        Cldr.CV ->
            "Kepuvede"

        Cldr.CW ->
            "Kurakao"

        Cldr.EC ->
            "Ekwado"

        Cldr.GA ->
            "Gaboni"

        Cldr.GP ->
            "Gwadelupe"

        Cldr.GS ->
            "Visiwa vya Jojia Kusini na Sandwich Kusini"

        Cldr.GT_ ->
            "Gwatemala"

        Cldr.GU ->
            "Guami"

        Cldr.HR ->
            "Kroashia"

        Cldr.IO ->
            "Himaya ya Uingereza katika Bahari Hindi"

        Cldr.JO ->
            "Yordani"

        Cldr.LA ->
            "Laosi"

        Cldr.LB ->
            "Lebanoni"

        Cldr.LI ->
            "Lishenteni"

        Cldr.LS ->
            "Lesotho"

        Cldr.LU ->
            "Lasembagi"

        Cldr.LV ->
            "Lativia"

        Cldr.MA ->
            "Moroko"

        Cldr.MC ->
            "Monako"

        Cldr.MK ->
            "Masedonia"

        Cldr.MM ->
            "Myama (Burma)"

        Cldr.MS ->
            "Montserati"

        Cldr.NC ->
            "Nyukaledonia"

        Cldr.NE ->
            "Nijeri"

        Cldr.NO ->
            "Norwe"

        Cldr.NP ->
            "Nepali"

        Cldr.OM ->
            "Omani"

        Cldr.PF ->
            "Polinesia ya Ufaransa"

        Cldr.PG ->
            "Papua Guinea Mpya"

        Cldr.PL ->
            "Polandi"

        Cldr.PM ->
            "St. Pierre na Miquelon"

        Cldr.PR ->
            "Pwetoriko"

        Cldr.PY ->
            "Paragwai"

        Cldr.QA ->
            "Katari"

        Cldr.SG ->
            "Singapuri"

        Cldr.ST ->
            "Sao Tome na Prinsipe"

        Cldr.SV ->
            "Elsalvado"

        Cldr.SY ->
            "Shamu"

        Cldr.TD ->
            "Chadi"

        Cldr.TH ->
            "Thailandi"

        Cldr.TM ->
            "Turukimenstani"

        Cldr.TW ->
            "Taiwani"

        Cldr.UA ->
            "Ukreni"

        Cldr.UY ->
            "Urugwai"

        Cldr.VA ->
            "Mji wa Vatikani"

        Cldr.VG ->
            "Visiwa vya Virgin vya Uingereza"

        Cldr.VI ->
            "Visiwa vya Virgin vya Marekani"

        Cldr.YT ->
            "Mayote"

        _ ->
            Cldr.Swahili.countryCodeToName countryCode