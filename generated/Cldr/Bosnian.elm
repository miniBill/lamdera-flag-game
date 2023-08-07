module Cldr.Bosnian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Bosnian.

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
    AX Olandska ostrva
    AZ Azerbejdžan
    BA Bosna i Hercegovina
    BB Barbados
    BD Bangladeš
    BE Belgija
    BF Burkina Faso
    BG Bugarska
    BH Bahrein
    BI Burundi
    BJ Benin
    BL Sveti Bartolomej
    BM Bermuda
    BN Brunej
    BO Bolivija
    BQ Karipska Holandija
    BR Brazil
    BS Bahami
    BT Butan
    BV Ostrvo Buve
    BW Bocvana
    BY Bjelorusija
    BZ Belize
    CA Kanada
    CC Kokosova (Keelingova) ostrva
    CD DR Kongo
    CF Centralnoafrička Republika
    CG Republika Kongo
    CH Švicarska
    CI Obala Slonovače
    CK Kukova ostrva
    CL Čile
    CM Kamerun
    CN Kina
    CO Kolumbija
    CR Kostarika
    CU Kuba
    CV Zelenortska Ostrva
    CW Kurasao
    CX Božićno ostrvo
    CY Kipar
    CZ Češka Republika
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
    ES Španija
    ET Etiopija
    FI Finska
    FJ Fidži
    FK Folklandska ostrva
    FM Mikronezija
    FO Farska ostrva
    FR Francuska
    GA Gabon
    GB Ujedinjeno Kraljevstvo
    GD Grenada
    GE Gruzija
    GF Francuska Gvajana
    GG Guernsey
    GH Gana
    GI Gibraltar
    GL Grenland
    GM Gambija
    GN Gvineja
    GP Gvadalupe
    GQ Ekvatorijalna Gvineja
    GR Grčka
    GS Južna Džordžija i Južna Sendvič ostrva
    GT Gvatemala
    GU Guam
    GW Gvineja-Bisao
    GY Gvajana
    HK Hong Kong
    HM Ostrvo Heard i arhipelag McDonald
    HN Honduras
    HR Hrvatska
    HT Haiti
    HU Mađarska
    ID Indonezija
    IE Irska
    IL Izrael
    IM Ostrvo Man
    IN Indija
    IO Britanska Teritorija u Indijskom Okeanu
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
    KN Sveti Kits i Nevis
    KP Sjeverna Koreja
    KR Južna Koreja
    KW Kuvajt
    KY Kajmanska ostrva
    KZ Kazahstan
    LA Laos
    LB Liban
    LC Sveta Lucija
    LI Lihtenštajn
    LK Šri Lanka
    LR Liberija
    LS Lesoto
    LT Litvanija
    LU Luksemburg
    LV Latvija
    LY Libija
    MA Maroko
    MC Monako
    MD Moldavija
    ME Crna Gora
    MF Sveti Martin
    MG Madagaskar
    MH Maršalova ostrva
    MK Sjeverna Makedonija
    ML Mali
    MM Mjanmar
    MN Mongolija
    MO Makao
    MP Sjeverna Marijanska ostrva
    MQ Martinik
    MR Mauritanija
    MS Monserat
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
    NF Ostrvo Norfolk
    NG Nigerija
    NI Nikaragva
    NL Holandija
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
    PM Sveti Petar i Mikelon
    PN Pitkernska Ostrva
    PR Porto Riko
    PS Palestina
    PT Portugal
    PW Palau
    PY Paragvaj
    QA Katar
    RE Reunion
    RO Rumunija
    RS Srbija
    RU Rusija
    RW Ruanda
    SA Saudijska Arabija
    SB Solomonska Ostrva
    SC Sejšeli
    SD Sudan
    SE Švedska
    SG Singapur
    SH Sveta Helena
    SI Slovenija
    SJ Svalbard i Jan Majen
    SK Slovačka
    SL Sijera Leone
    SM San Marino
    SN Senegal
    SO Somalija
    SR Surinam
    SS Južni Sudan
    ST Sao Tome i Principe
    SV Salvador
    SX Sint Marten
    SY Sirija
    SZ Esvatini
    TC Ostrva Turks i Kaikos
    TD Čad
    TF Francuske Južne Teritorije
    TG Togo
    TH Tajland
    TJ Tadžikistan
    TK Tokelau
    TL Istočni Timor
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
    UM Američka Vanjska Ostrva
    US Sjedinjene Države
    UY Urugvaj
    UZ Uzbekistan
    VA Vatikan
    VC Sveti Vinsent i Grenadin
    VE Venecuela
    VG Britanska Djevičanska ostrva
    VI Američka Djevičanska ostrva
    VN Vijetnam
    VU Vanuatu
    WF Ostrva Valis i Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Majote
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
            "Olandska ostrva"

        Cldr.AZ ->
            "Azerbejdžan"

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
            "Sveti Bartolomej"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunej"

        Cldr.BO ->
            "Bolivija"

        Cldr.BQ ->
            "Karipska Holandija"

        Cldr.BR ->
            "Brazil"

        Cldr.BS ->
            "Bahami"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Ostrvo Buve"

        Cldr.BW ->
            "Bocvana"

        Cldr.BY ->
            "Bjelorusija"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosova (Keelingova) ostrva"

        Cldr.CD ->
            "DR Kongo"

        Cldr.CF ->
            "Centralnoafrička Republika"

        Cldr.CG ->
            "Republika Kongo"

        Cldr.CH ->
            "Švicarska"

        Cldr.CI ->
            "Obala Slonovače"

        Cldr.CK ->
            "Kukova ostrva"

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
            "Zelenortska Ostrva"

        Cldr.CW ->
            "Kurasao"

        Cldr.CX ->
            "Božićno ostrvo"

        Cldr.CY ->
            "Kipar"

        Cldr.CZ ->
            "Češka Republika"

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
            "Španija"

        Cldr.ET ->
            "Etiopija"

        Cldr.FI ->
            "Finska"

        Cldr.FJ ->
            "Fidži"

        Cldr.FK ->
            "Folklandska ostrva"

        Cldr.FM ->
            "Mikronezija"

        Cldr.FO ->
            "Farska ostrva"

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
            "Francuska Gvajana"

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
            "Gvadalupe"

        Cldr.GQ ->
            "Ekvatorijalna Gvineja"

        Cldr.GR ->
            "Grčka"

        Cldr.GS ->
            "Južna Džordžija i Južna Sendvič ostrva"

        Cldr.GT_ ->
            "Gvatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gvineja-Bisao"

        Cldr.GY ->
            "Gvajana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Ostrvo Heard i arhipelag McDonald"

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
            "Ostrvo Man"

        Cldr.IN ->
            "Indija"

        Cldr.IO ->
            "Britanska Teritorija u Indijskom Okeanu"

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
            "Sveti Kits i Nevis"

        Cldr.KP ->
            "Sjeverna Koreja"

        Cldr.KR ->
            "Južna Koreja"

        Cldr.KW ->
            "Kuvajt"

        Cldr.KY ->
            "Kajmanska ostrva"

        Cldr.KZ ->
            "Kazahstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Liban"

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
            "Litvanija"

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
            "Sveti Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Maršalova ostrva"

        Cldr.MK ->
            "Sjeverna Makedonija"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mjanmar"

        Cldr.MN ->
            "Mongolija"

        Cldr.MO ->
            "Makao"

        Cldr.MP ->
            "Sjeverna Marijanska ostrva"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Mauritanija"

        Cldr.MS ->
            "Monserat"

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
            "Ostrvo Norfolk"

        Cldr.NG ->
            "Nigerija"

        Cldr.NI ->
            "Nikaragva"

        Cldr.NL ->
            "Holandija"

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
            "Sveti Petar i Mikelon"

        Cldr.PN ->
            "Pitkernska Ostrva"

        Cldr.PR ->
            "Porto Riko"

        Cldr.PS ->
            "Palestina"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragvaj"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Reunion"

        Cldr.RO ->
            "Rumunija"

        Cldr.RS ->
            "Srbija"

        Cldr.RU ->
            "Rusija"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saudijska Arabija"

        Cldr.SB ->
            "Solomonska Ostrva"

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
            "Svalbard i Jan Majen"

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
            "Sao Tome i Principe"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Sint Marten"

        Cldr.SY ->
            "Sirija"

        Cldr.SZ ->
            "Esvatini"

        Cldr.TC ->
            "Ostrva Turks i Kaikos"

        Cldr.TD ->
            "Čad"

        Cldr.TF ->
            "Francuske Južne Teritorije"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tajland"

        Cldr.TJ ->
            "Tadžikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Istočni Timor"

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
            "Američka Vanjska Ostrva"

        Cldr.US ->
            "Sjedinjene Države"

        Cldr.UY ->
            "Urugvaj"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikan"

        Cldr.VC ->
            "Sveti Vinsent i Grenadin"

        Cldr.VE ->
            "Venecuela"

        Cldr.VG ->
            "Britanska Djevičanska ostrva"

        Cldr.VI ->
            "Američka Djevičanska ostrva"

        Cldr.VN ->
            "Vijetnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Ostrva Valis i Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Majote"

        Cldr.ZA ->
            "Južnoafrička Republika"

        Cldr.ZM ->
            "Zambija"

        Cldr.ZW ->
            "Zimbabve"