module Cldr.Croatian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Croatian.

    AD Andora
    AE Ujedinjeni Arapski Emirati
    AF Afganistan
    AG Antigva i Barbuda
    AI Angvila
    AL Albanija
    AM Armenija
    AO Angola
    AQ Antarktika
    AR Argentina
    AS Američka Samoa
    AT Austrija
    AU Australija
    AW Aruba
    AX Ålandski otoci
    AZ Azerbajdžan
    BA Bosna i Hercegovina
    BB Barbados
    BD Bangladeš
    BE Belgija
    BF Burkina Faso
    BG Bugarska
    BH Bahrein
    BI Burundi
    BJ Benin
    BL Saint Barthélemy
    BM Bermudi
    BN Brunej
    BO Bolivija
    BQ Karipski otoci Nizozemske
    BR Brazil
    BS Bahami
    BT Butan
    BV Otok Bouvet
    BW Bocvana
    BY Bjelorusija
    BZ Belize
    CA Kanada
    CC Kokosovi (Keelingovi) otoci
    CD Kongo - Kinshasa
    CF Srednjoafrička Republika
    CG Kongo - Brazzaville
    CH Švicarska
    CI Obala Bjelokosti
    CK Cookovi otoci
    CL Čile
    CM Kamerun
    CN Kina
    CO Kolumbija
    CR Kostarika
    CU Kuba
    CV Zelenortska Republika
    CW Curaçao
    CX Božićni otok
    CY Cipar
    CZ Češka
    DE Njemačka
    DJ Džibuti
    DK Danska
    DM Dominika
    DO Dominikanska Republika
    DZ Alžir
    EC Ekvador
    EE Estonija
    EG Egipat
    EH Zapadna Sahara
    ER Eritreja
    ES Španjolska
    ET Etiopija
    FI Finska
    FJ Fidži
    FK Falklandski otoci
    FM Mikronezija
    FO Farski otoci
    FR Francuska
    GA Gabon
    GB Ujedinjeno Kraljevstvo
    GD Grenada
    GE Gruzija
    GF Francuska Gijana
    GG Guernsey
    GH Gana
    GI Gibraltar
    GL Grenland
    GM Gambija
    GN Gvineja
    GP Guadalupe
    GQ Ekvatorska Gvineja
    GR Grčka
    GS Južna Georgija i Južni Sendvički Otoci
    GT Gvatemala
    GU Guam
    GW Gvineja Bisau
    GY Gvajana
    HK PUP Hong Kong Kina
    HM Otoci Heard i McDonald
    HN Honduras
    HR Hrvatska
    HT Haiti
    HU Mađarska
    ID Indonezija
    IE Irska
    IL Izrael
    IM Otok Man
    IN Indija
    IO Britanski Indijskooceanski teritorij
    IQ Irak
    IR Iran
    IS Island
    IT Italija
    JE Jersey
    JM Jamajka
    JO Jordan
    JP Japan
    KE Kenija
    KG Kirgistan
    KH Kambodža
    KI Kiribati
    KM Komori
    KN Sveti Kristofor i Nevis
    KP Sjeverna Koreja
    KR Južna Koreja
    KW Kuvajt
    KY Kajmanski otoci
    KZ Kazahstan
    LA Laos
    LB Libanon
    LC Sveta Lucija
    LI Lihtenštajn
    LK Šri Lanka
    LR Liberija
    LS Lesoto
    LT Litva
    LU Luksemburg
    LV Latvija
    LY Libija
    MA Maroko
    MC Monako
    MD Moldavija
    ME Crna Gora
    MF Saint Martin
    MG Madagaskar
    MH Maršalovi Otoci
    MK Sjeverna Makedonija
    ML Mali
    MM Mjanmar (Burma)
    MN Mongolija
    MO PUP Makao Kina
    MP Sjevernomarijanski otoci
    MQ Martinik
    MR Mauretanija
    MS Montserrat
    MT Malta
    MU Mauricijus
    MV Maldivi
    MW Malavi
    MX Meksiko
    MY Malezija
    MZ Mozambik
    NA Namibija
    NC Nova Kaledonija
    NE Niger
    NF Otok Norfolk
    NG Nigerija
    NI Nikaragva
    NL Nizozemska
    NO Norveška
    NP Nepal
    NR Nauru
    NU Niue
    NZ Novi Zeland
    OM Oman
    PA Panama
    PE Peru
    PF Francuska Polinezija
    PG Papua Nova Gvineja
    PH Filipini
    PK Pakistan
    PL Poljska
    PM Saint-Pierre-et-Miquelon
    PN Otoci Pitcairn
    PR Portoriko
    PS Palestinsko područje
    PT Portugal
    PW Palau
    PY Paragvaj
    QA Katar
    RE Réunion
    RO Rumunjska
    RS Srbija
    RU Rusija
    RW Ruanda
    SA Saudijska Arabija
    SB Salomonski Otoci
    SC Sejšeli
    SD Sudan
    SE Švedska
    SG Singapur
    SH Sveta Helena
    SI Slovenija
    SJ Svalbard i Jan Mayen
    SK Slovačka
    SL Sijera Leone
    SM San Marino
    SN Senegal
    SO Somalija
    SR Surinam
    SS Južni Sudan
    ST Sveti Toma i Princip
    SV Salvador
    SX Sint Maarten
    SY Sirija
    SZ Esvatini
    TC Otoci Turks i Caicos
    TD Čad
    TF Francuski južni i antarktički teritoriji
    TG Togo
    TH Tajland
    TJ Tadžikistan
    TK Tokelau
    TL Timor-Leste
    TM Turkmenistan
    TN Tunis
    TO Tonga
    TR Turska
    TT Trinidad i Tobago
    TV Tuvalu
    TW Tajvan
    TZ Tanzanija
    UA Ukrajina
    UG Uganda
    UM Mali udaljeni otoci SAD-a
    US Sjedinjene Američke Države
    UY Urugvaj
    UZ Uzbekistan
    VA Vatikanski Grad
    VC Sveti Vincent i Grenadini
    VE Venezuela
    VG Britanski Djevičanski otoci
    VI Američki Djevičanski otoci
    VN Vijetnam
    VU Vanuatu
    WF Wallis i Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Mayotte
    ZA Južnoafrička Republika
    ZM Zambija
    ZW Zimbabve
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andora"

        Cldr.AE ->
            "Ujedinjeni Arapski Emirati"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigva i Barbuda"

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
            "Američka Samoa"

        Cldr.AT ->
            "Austrija"

        Cldr.AU ->
            "Australija"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ålandski otoci"

        Cldr.AZ ->
            "Azerbajdžan"

        Cldr.BA ->
            "Bosna i Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladeš"

        Cldr.BE ->
            "Belgija"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bugarska"

        Cldr.BH ->
            "Bahrein"

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
            "Karipski otoci Nizozemske"

        Cldr.BR ->
            "Brazil"

        Cldr.BS ->
            "Bahami"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Otok Bouvet"

        Cldr.BW ->
            "Bocvana"

        Cldr.BY ->
            "Bjelorusija"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosovi (Keelingovi) otoci"

        Cldr.CD ->
            "Kongo - Kinshasa"

        Cldr.CF ->
            "Srednjoafrička Republika"

        Cldr.CG ->
            "Kongo - Brazzaville"

        Cldr.CH ->
            "Švicarska"

        Cldr.CI ->
            "Obala Bjelokosti"

        Cldr.CK ->
            "Cookovi otoci"

        Cldr.CL ->
            "Čile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Kina"

        Cldr.CO ->
            "Kolumbija"

        Cldr.CR ->
            "Kostarika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Zelenortska Republika"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Božićni otok"

        Cldr.CY ->
            "Cipar"

        Cldr.CZ ->
            "Češka"

        Cldr.DE ->
            "Njemačka"

        Cldr.DJ ->
            "Džibuti"

        Cldr.DK ->
            "Danska"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikanska Republika"

        Cldr.DZ ->
            "Alžir"

        Cldr.EC ->
            "Ekvador"

        Cldr.EE ->
            "Estonija"

        Cldr.EG ->
            "Egipat"

        Cldr.EH ->
            "Zapadna Sahara"

        Cldr.ER ->
            "Eritreja"

        Cldr.ES ->
            "Španjolska"

        Cldr.ET ->
            "Etiopija"

        Cldr.FI ->
            "Finska"

        Cldr.FJ ->
            "Fidži"

        Cldr.FK ->
            "Falklandski otoci"

        Cldr.FM ->
            "Mikronezija"

        Cldr.FO ->
            "Farski otoci"

        Cldr.FR ->
            "Francuska"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Ujedinjeno Kraljevstvo"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruzija"

        Cldr.GF ->
            "Francuska Gijana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grenland"

        Cldr.GM ->
            "Gambija"

        Cldr.GN ->
            "Gvineja"

        Cldr.GP ->
            "Guadalupe"

        Cldr.GQ ->
            "Ekvatorska Gvineja"

        Cldr.GR ->
            "Grčka"

        Cldr.GS ->
            "Južna Georgija i Južni Sendvički Otoci"

        Cldr.GT_ ->
            "Gvatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gvineja Bisau"

        Cldr.GY ->
            "Gvajana"

        Cldr.HK ->
            "PUP Hong Kong Kina"

        Cldr.HM ->
            "Otoci Heard i McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Hrvatska"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Mađarska"

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
            "Britanski Indijskooceanski teritorij"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Island"

        Cldr.IT ->
            "Italija"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamajka"

        Cldr.JO ->
            "Jordan"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenija"

        Cldr.KG ->
            "Kirgistan"

        Cldr.KH ->
            "Kambodža"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komori"

        Cldr.KN ->
            "Sveti Kristofor i Nevis"

        Cldr.KP ->
            "Sjeverna Koreja"

        Cldr.KR ->
            "Južna Koreja"

        Cldr.KW ->
            "Kuvajt"

        Cldr.KY ->
            "Kajmanski otoci"

        Cldr.KZ ->
            "Kazahstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "Sveta Lucija"

        Cldr.LI ->
            "Lihtenštajn"

        Cldr.LK ->
            "Šri Lanka"

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
            "Crna Gora"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Maršalovi Otoci"

        Cldr.MK ->
            "Sjeverna Makedonija"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mjanmar (Burma)"

        Cldr.MN ->
            "Mongolija"

        Cldr.MO ->
            "PUP Makao Kina"

        Cldr.MP ->
            "Sjevernomarijanski otoci"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Mauretanija"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauricijus"

        Cldr.MV ->
            "Maldivi"

        Cldr.MW ->
            "Malavi"

        Cldr.MX ->
            "Meksiko"

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
            "Otok Norfolk"

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
            "Novi Zeland"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Francuska Polinezija"

        Cldr.PG ->
            "Papua Nova Gvineja"

        Cldr.PH ->
            "Filipini"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Poljska"

        Cldr.PM ->
            "Saint-Pierre-et-Miquelon"

        Cldr.PN ->
            "Otoci Pitcairn"

        Cldr.PR ->
            "Portoriko"

        Cldr.PS ->
            "Palestinsko područje"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragvaj"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Rumunjska"

        Cldr.RS ->
            "Srbija"

        Cldr.RU ->
            "Rusija"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saudijska Arabija"

        Cldr.SB ->
            "Salomonski Otoci"

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
            "Svalbard i Jan Mayen"

        Cldr.SK ->
            "Slovačka"

        Cldr.SL ->
            "Sijera Leone"

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
            "Sveti Toma i Princip"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Sirija"

        Cldr.SZ ->
            "Esvatini"

        Cldr.TC ->
            "Otoci Turks i Caicos"

        Cldr.TD ->
            "Čad"

        Cldr.TF ->
            "Francuski južni i antarktički teritoriji"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tajland"

        Cldr.TJ ->
            "Tadžikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunis"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turska"

        Cldr.TT ->
            "Trinidad i Tobago"

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
            "Mali udaljeni otoci SAD-a"

        Cldr.US ->
            "Sjedinjene Američke Države"

        Cldr.UY ->
            "Urugvaj"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikanski Grad"

        Cldr.VC ->
            "Sveti Vincent i Grenadini"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Britanski Djevičanski otoci"

        Cldr.VI ->
            "Američki Djevičanski otoci"

        Cldr.VN ->
            "Vijetnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis i Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Južnoafrička Republika"

        Cldr.ZM ->
            "Zambija"

        Cldr.ZW ->
            "Zimbabve"