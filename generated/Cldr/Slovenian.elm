module Cldr.Slovenian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Slovenian.

    AD Andora
    AE Združeni arabski emirati
    AF Afganistan
    AG Antigva in Barbuda
    AI Angvila
    AL Albanija
    AM Armenija
    AO Angola
    AQ Antarktika
    AR Argentina
    AS Ameriška Samoa
    AT Avstrija
    AU Avstralija
    AW Aruba
    AX Ålandski otoki
    AZ Azerbajdžan
    BA Bosna in Hercegovina
    BB Barbados
    BD Bangladeš
    BE Belgija
    BF Burkina Faso
    BG Bolgarija
    BH Bahrajn
    BI Burundi
    BJ Benin
    BL Saint Barthélemy
    BM Bermudi
    BN Brunej
    BO Bolivija
    BQ Nizozemski Karibi
    BR Brazilija
    BS Bahami
    BT Butan
    BV Bouvetov otok
    BW Bocvana
    BY Belorusija
    BZ Belize
    CA Kanada
    CC Kokosovi otoki
    CD Kongo (Demokratična republika Kongo)
    CF Srednjeafriška republika
    CG Kongo (Republika)
    CH Švica
    CI Slonokoščena obala
    CK Cookovi otoki
    CL Čile
    CM Kamerun
    CN Kitajska
    CO Kolumbija
    CR Kostarika
    CU Kuba
    CV Zelenortski otoki
    CW Curaçao
    CX Božični otok
    CY Ciper
    CZ Češka republika
    DE Nemčija
    DJ Džibuti
    DK Danska
    DM Dominika
    DO Dominikanska republika
    DZ Alžirija
    EC Ekvador
    EE Estonija
    EG Egipt
    EH Zahodna Sahara
    ER Eritreja
    ES Španija
    ET Etiopija
    FI Finska
    FJ Fidži
    FK Falklandski otoki
    FM Mikronezija
    FO Ferski otoki
    FR Francija
    GA Gabon
    GB Združeno kraljestvo
    GD Grenada
    GE Gruzija
    GF Francoska Gvajana
    GG Guernsey
    GH Gana
    GI Gibraltar
    GL Grenlandija
    GM Gambija
    GN Gvineja
    GP Guadeloupe
    GQ Ekvatorialna Gvineja
    GR Grčija
    GS Južna Georgia in Južni Sandwichevi otoki
    GT Gvatemala
    GU Guam
    GW Gvineja Bissau
    GY Gvajana
    HK Hongkong
    HM Heardov otok in McDonaldovi otoki
    HN Honduras
    HR Hrvaška
    HT Haiti
    HU Madžarska
    ID Indonezija
    IE Irska
    IL Izrael
    IM Otok Man
    IN Indija
    IO Britansko ozemlje v Indijskem oceanu
    IQ Irak
    IR Iran
    IS Islandija
    IT Italija
    JE Jersey
    JM Jamajka
    JO Jordanija
    JP Japonska
    KE Kenija
    KG Kirgizistan
    KH Kambodža
    KI Kiribati
    KM Komori
    KN Saint Kitts in Nevis
    KP Severna Koreja
    KR Južna Koreja
    KW Kuvajt
    KY Kajmanski otoki
    KZ Kazahstan
    LA Laos
    LB Libanon
    LC Saint Lucia
    LI Lihtenštajn
    LK Šrilanka
    LR Liberija
    LS Lesoto
    LT Litva
    LU Luksemburg
    LV Latvija
    LY Libija
    MA Maroko
    MC Monako
    MD Moldavija
    ME Črna gora
    MF Saint Martin
    MG Madagaskar
    MH Marshallovi otoki
    MK Severna Makedonija
    ML Mali
    MM Mjanmar (Burma)
    MN Mongolija
    MO Macao
    MP Severni Marianski otoki
    MQ Martinik
    MR Mavretanija
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldivi
    MW Malavi
    MX Mehika
    MY Malezija
    MZ Mozambik
    NA Namibija
    NC Nova Kaledonija
    NE Niger
    NF Norfolški otok
    NG Nigerija
    NI Nikaragva
    NL Nizozemska
    NO Norveška
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nova Zelandija
    OM Oman
    PA Panama
    PE Peru
    PF Francoska Polinezija
    PG Papua Nova Gvineja
    PH Filipini
    PK Pakistan
    PL Poljska
    PM Saint Pierre in Miquelon
    PN Pitcairn
    PR Portoriko
    PS Palestina
    PT Portugalska
    PW Palau
    PY Paragvaj
    QA Katar
    RE Reunion
    RO Romunija
    RS Srbija
    RU Rusija
    RW Ruanda
    SA Saudova Arabija
    SB Salomonovi otoki
    SC Sejšeli
    SD Sudan
    SE Švedska
    SG Singapur
    SH Sveta Helena
    SI Slovenija
    SJ Svalbard in Jan Mayen
    SK Slovaška
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalija
    SR Surinam
    SS Južni Sudan
    ST Sao Tome in Principe
    SV Salvador
    SX Sint Maarten
    SY Sirija
    SZ Esvatini
    TC Otoki Turks in Caicos
    TD Čad
    TF Francosko južno ozemlje
    TG Togo
    TH Tajska
    TJ Tadžikistan
    TK Tokelau
    TL Vzhodni Timor
    TM Turkmenistan
    TN Tunizija
    TO Tonga
    TR Turčija
    TT Trinidad in Tobago
    TV Tuvalu
    TW Tajvan
    TZ Tanzanija
    UA Ukrajina
    UG Uganda
    UM Stranski zunanji otoki Združenih držav
    US Združene države Amerike
    UY Urugvaj
    UZ Uzbekistan
    VA Vatikan
    VC Saint Vincent in Grenadine
    VE Venezuela
    VG Britanski Deviški otoki
    VI Ameriški Deviški otoki
    VN Vietnam
    VU Vanuatu
    WF Wallis in Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Mayotte
    ZA Južnoafriška republika
    ZM Zambija
    ZW Zimbabve
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andora"

        Cldr.AE ->
            "Združeni arabski emirati"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigva in Barbuda"

        Cldr.AI ->
            "Angvila"

        Cldr.AL ->
            "Albanija"

        Cldr.AM ->
            "Armenija"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktika"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Ameriška Samoa"

        Cldr.AT ->
            "Avstrija"

        Cldr.AU ->
            "Avstralija"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ålandski otoki"

        Cldr.AZ ->
            "Azerbajdžan"

        Cldr.BA ->
            "Bosna in Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladeš"

        Cldr.BE ->
            "Belgija"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bolgarija"

        Cldr.BH ->
            "Bahrajn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Saint Barthélemy"

        Cldr.BM ->
            "Bermudi"

        Cldr.BN ->
            "Brunej"

        Cldr.BO ->
            "Bolivija"

        Cldr.BQ ->
            "Nizozemski Karibi"

        Cldr.BR ->
            "Brazilija"

        Cldr.BS ->
            "Bahami"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Bouvetov otok"

        Cldr.BW ->
            "Bocvana"

        Cldr.BY ->
            "Belorusija"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosovi otoki"

        Cldr.CD ->
            "Kongo (Demokratična republika Kongo)"

        Cldr.CF ->
            "Srednjeafriška republika"

        Cldr.CG ->
            "Kongo (Republika)"

        Cldr.CH ->
            "Švica"

        Cldr.CI ->
            "Slonokoščena obala"

        Cldr.CK ->
            "Cookovi otoki"

        Cldr.CL ->
            "Čile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Kitajska"

        Cldr.CO ->
            "Kolumbija"

        Cldr.CR ->
            "Kostarika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Zelenortski otoki"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Božični otok"

        Cldr.CY ->
            "Ciper"

        Cldr.CZ ->
            "Češka republika"

        Cldr.DE ->
            "Nemčija"

        Cldr.DJ ->
            "Džibuti"

        Cldr.DK ->
            "Danska"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikanska republika"

        Cldr.DZ ->
            "Alžirija"

        Cldr.EC ->
            "Ekvador"

        Cldr.EE ->
            "Estonija"

        Cldr.EG ->
            "Egipt"

        Cldr.EH ->
            "Zahodna Sahara"

        Cldr.ER ->
            "Eritreja"

        Cldr.ES ->
            "Španija"

        Cldr.ET ->
            "Etiopija"

        Cldr.FI ->
            "Finska"

        Cldr.FJ ->
            "Fidži"

        Cldr.FK ->
            "Falklandski otoki"

        Cldr.FM ->
            "Mikronezija"

        Cldr.FO ->
            "Ferski otoki"

        Cldr.FR ->
            "Francija"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Združeno kraljestvo"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruzija"

        Cldr.GF ->
            "Francoska Gvajana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grenlandija"

        Cldr.GM ->
            "Gambija"

        Cldr.GN ->
            "Gvineja"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Ekvatorialna Gvineja"

        Cldr.GR ->
            "Grčija"

        Cldr.GS ->
            "Južna Georgia in Južni Sandwichevi otoki"

        Cldr.GT_ ->
            "Gvatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gvineja Bissau"

        Cldr.GY ->
            "Gvajana"

        Cldr.HK ->
            "Hongkong"

        Cldr.HM ->
            "Heardov otok in McDonaldovi otoki"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Hrvaška"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Madžarska"

        Cldr.ID ->
            "Indonezija"

        Cldr.IE ->
            "Irska"

        Cldr.IL ->
            "Izrael"

        Cldr.IM ->
            "Otok Man"

        Cldr.IN ->
            "Indija"

        Cldr.IO ->
            "Britansko ozemlje v Indijskem oceanu"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islandija"

        Cldr.IT ->
            "Italija"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamajka"

        Cldr.JO ->
            "Jordanija"

        Cldr.JP ->
            "Japonska"

        Cldr.KE ->
            "Kenija"

        Cldr.KG ->
            "Kirgizistan"

        Cldr.KH ->
            "Kambodža"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komori"

        Cldr.KN ->
            "Saint Kitts in Nevis"

        Cldr.KP ->
            "Severna Koreja"

        Cldr.KR ->
            "Južna Koreja"

        Cldr.KW ->
            "Kuvajt"

        Cldr.KY ->
            "Kajmanski otoki"

        Cldr.KZ ->
            "Kazahstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Lihtenštajn"

        Cldr.LK ->
            "Šrilanka"

        Cldr.LR ->
            "Liberija"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Litva"

        Cldr.LU ->
            "Luksemburg"

        Cldr.LV ->
            "Latvija"

        Cldr.LY ->
            "Libija"

        Cldr.MA ->
            "Maroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldavija"

        Cldr.ME ->
            "Črna gora"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshallovi otoki"

        Cldr.MK ->
            "Severna Makedonija"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mjanmar (Burma)"

        Cldr.MN ->
            "Mongolija"

        Cldr.MO ->
            "Macao"

        Cldr.MP ->
            "Severni Marianski otoki"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Mavretanija"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldivi"

        Cldr.MW ->
            "Malavi"

        Cldr.MX ->
            "Mehika"

        Cldr.MY ->
            "Malezija"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibija"

        Cldr.NC ->
            "Nova Kaledonija"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolški otok"

        Cldr.NG ->
            "Nigerija"

        Cldr.NI ->
            "Nikaragva"

        Cldr.NL ->
            "Nizozemska"

        Cldr.NO ->
            "Norveška"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nova Zelandija"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Francoska Polinezija"

        Cldr.PG ->
            "Papua Nova Gvineja"

        Cldr.PH ->
            "Filipini"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Poljska"

        Cldr.PM ->
            "Saint Pierre in Miquelon"

        Cldr.PN ->
            "Pitcairn"

        Cldr.PR ->
            "Portoriko"

        Cldr.PS ->
            "Palestina"

        Cldr.PT ->
            "Portugalska"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragvaj"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Reunion"

        Cldr.RO ->
            "Romunija"

        Cldr.RS ->
            "Srbija"

        Cldr.RU ->
            "Rusija"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saudova Arabija"

        Cldr.SB ->
            "Salomonovi otoki"

        Cldr.SC ->
            "Sejšeli"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Švedska"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Sveta Helena"

        Cldr.SI ->
            "Slovenija"

        Cldr.SJ ->
            "Svalbard in Jan Mayen"

        Cldr.SK ->
            "Slovaška"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somalija"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Južni Sudan"

        Cldr.ST ->
            "Sao Tome in Principe"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Sirija"

        Cldr.SZ ->
            "Esvatini"

        Cldr.TC ->
            "Otoki Turks in Caicos"

        Cldr.TD ->
            "Čad"

        Cldr.TF ->
            "Francosko južno ozemlje"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tajska"

        Cldr.TJ ->
            "Tadžikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Vzhodni Timor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunizija"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turčija"

        Cldr.TT ->
            "Trinidad in Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Tajvan"

        Cldr.TZ ->
            "Tanzanija"

        Cldr.UA ->
            "Ukrajina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Stranski zunanji otoki Združenih držav"

        Cldr.US ->
            "Združene države Amerike"

        Cldr.UY ->
            "Urugvaj"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikan"

        Cldr.VC ->
            "Saint Vincent in Grenadine"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Britanski Deviški otoki"

        Cldr.VI ->
            "Ameriški Deviški otoki"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis in Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Južnoafriška republika"

        Cldr.ZM ->
            "Zambija"

        Cldr.ZW ->
            "Zimbabve"