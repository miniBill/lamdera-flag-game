module Cldr.Serbian.Latin exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Serbian (Latin).

    AD Andora
    AE Ujedinjeni Arapski Emirati
    AF Avganistan
    AG Antigva i Barbuda
    AI Angvila
    AL Albanija
    AM Jermenija
    AO Angola
    AQ Antarktik
    AR Argentina
    AS Američka Samoa
    AT Austrija
    AU Australija
    AW Aruba
    AX Olandska Ostrva
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
    BY Belorusija
    BZ Belize
    CA Kanada
    CC Kokosova (Kilingova) Ostrva
    CD Kongo - Kinšasa
    CF Centralnoafrička Republika
    CG Kongo - Brazavil
    CH Švajcarska
    CI Obala Slonovače (Kot d’Ivoar)
    CK Kukova Ostrva
    CL Čile
    CM Kamerun
    CN Kina
    CO Kolumbija
    CR Kostarika
    CU Kuba
    CV Zelenortska Ostrva
    CW Kurasao
    CX Božićno Ostrvo
    CY Kipar
    CZ Češka
    DE Nemačka
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
    FK Foklandska Ostrva
    FM Mikronezija
    FO Farska Ostrva
    FR Francuska
    GA Gabon
    GB Ujedinjeno Kraljevstvo
    GD Grenada
    GE Gruzija
    GF Francuska Gvajana
    GG Gernzi
    GH Gana
    GI Gibraltar
    GL Grenland
    GM Gambija
    GN Gvineja
    GP Gvadelup
    GQ Ekvatorijalna Gvineja
    GR Grčka
    GS Južna Džordžija i Južna Sendvička Ostrva
    GT Gvatemala
    GU Guam
    GW Gvineja-Bisao
    GY Gvajana
    HK SAR Hongkong (Kina)
    HM Ostrvo Herd i Mekdonaldova ostrva
    HN Honduras
    HR Hrvatska
    HT Haiti
    HU Mađarska
    ID Indonezija
    IE Irska
    IL Izrael
    IM Ostrvo Man
    IN Indija
    IO Britanska teritorija Indijskog okeana
    IQ Irak
    IR Iran
    IS Island
    IT Italija
    JE Džerzi
    JM Jamajka
    JO Jordan
    JP Japan
    KE Kenija
    KG Kirgistan
    KH Kambodža
    KI Kiribati
    KM Komorska Ostrva
    KN Sent Kits i Nevis
    KP Severna Koreja
    KR Južna Koreja
    KW Kuvajt
    KY Kajmanska Ostrva
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
    LV Letonija
    LY Libija
    MA Maroko
    MC Monako
    MD Moldavija
    ME Crna Gora
    MF Sveti Martin (Francuska)
    MG Madagaskar
    MH Maršalska Ostrva
    MK Severna Makedonija
    ML Mali
    MM Mijanmar (Burma)
    MN Mongolija
    MO SAR Makao (Kina)
    MP Severna Marijanska Ostrva
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
    NF Ostrvo Norfok
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
    PM Sen Pjer i Mikelon
    PN Pitkern
    PR Portoriko
    PS Palestinske teritorije
    PT Portugalija
    PW Palau
    PY Paragvaj
    QA Katar
    RE Reinion
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
    SH Sveta Jelena
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
    SX Sveti Martin (Holandija)
    SY Sirija
    SZ Svazilend
    TC Ostrva Turks i Kaikos
    TD Čad
    TF Francuske Južne Teritorije
    TG Togo
    TH Tajland
    TJ Tadžikistan
    TK Tokelau
    TL Timor-Leste (Istočni Timor)
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
    UM Udaljena ostrva SAD
    US Sjedinjene Države
    UY Urugvaj
    UZ Uzbekistan
    VA Vatikan
    VC Sent Vinsent i Grenadini
    VE Venecuela
    VG Britanska Devičanska Ostrva
    VI Američka Devičanska Ostrva
    VN Vijetnam
    VU Vanuatu
    WF Valis i Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Majot
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
            "Avganistan"

        Cldr.AG ->
            "Antigva i Barbuda"

        Cldr.AI ->
            "Angvila"

        Cldr.AL ->
            "Albanija"

        Cldr.AM ->
            "Jermenija"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktik"

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
            "Olandska Ostrva"

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
            "Belorusija"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosova (Kilingova) Ostrva"

        Cldr.CD ->
            "Kongo - Kinšasa"

        Cldr.CF ->
            "Centralnoafrička Republika"

        Cldr.CG ->
            "Kongo - Brazavil"

        Cldr.CH ->
            "Švajcarska"

        Cldr.CI ->
            "Obala Slonovače (Kot d’Ivoar)"

        Cldr.CK ->
            "Kukova Ostrva"

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
            "Božićno Ostrvo"

        Cldr.CY ->
            "Kipar"

        Cldr.CZ ->
            "Češka"

        Cldr.DE ->
            "Nemačka"

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
            "Foklandska Ostrva"

        Cldr.FM ->
            "Mikronezija"

        Cldr.FO ->
            "Farska Ostrva"

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
            "Gernzi"

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
            "Gvadelup"

        Cldr.GQ ->
            "Ekvatorijalna Gvineja"

        Cldr.GR ->
            "Grčka"

        Cldr.GS ->
            "Južna Džordžija i Južna Sendvička Ostrva"

        Cldr.GT_ ->
            "Gvatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gvineja-Bisao"

        Cldr.GY ->
            "Gvajana"

        Cldr.HK ->
            "SAR Hongkong (Kina)"

        Cldr.HM ->
            "Ostrvo Herd i Mekdonaldova ostrva"

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
            "Britanska teritorija Indijskog okeana"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Island"

        Cldr.IT ->
            "Italija"

        Cldr.JE ->
            "Džerzi"

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
            "Komorska Ostrva"

        Cldr.KN ->
            "Sent Kits i Nevis"

        Cldr.KP ->
            "Severna Koreja"

        Cldr.KR ->
            "Južna Koreja"

        Cldr.KW ->
            "Kuvajt"

        Cldr.KY ->
            "Kajmanska Ostrva"

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
            "Letonija"

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
            "Sveti Martin (Francuska)"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Maršalska Ostrva"

        Cldr.MK ->
            "Severna Makedonija"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mijanmar (Burma)"

        Cldr.MN ->
            "Mongolija"

        Cldr.MO ->
            "SAR Makao (Kina)"

        Cldr.MP ->
            "Severna Marijanska Ostrva"

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
            "Ostrvo Norfok"

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
            "Sen Pjer i Mikelon"

        Cldr.PN ->
            "Pitkern"

        Cldr.PR ->
            "Portoriko"

        Cldr.PS ->
            "Palestinske teritorije"

        Cldr.PT ->
            "Portugalija"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragvaj"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Reinion"

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
            "Sveta Jelena"

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
            "Sveti Martin (Holandija)"

        Cldr.SY ->
            "Sirija"

        Cldr.SZ ->
            "Svazilend"

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
            "Timor-Leste (Istočni Timor)"

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
            "Udaljena ostrva SAD"

        Cldr.US ->
            "Sjedinjene Države"

        Cldr.UY ->
            "Urugvaj"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikan"

        Cldr.VC ->
            "Sent Vinsent i Grenadini"

        Cldr.VE ->
            "Venecuela"

        Cldr.VG ->
            "Britanska Devičanska Ostrva"

        Cldr.VI ->
            "Američka Devičanska Ostrva"

        Cldr.VN ->
            "Vijetnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Valis i Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Majot"

        Cldr.ZA ->
            "Južnoafrička Republika"

        Cldr.ZM ->
            "Zambija"

        Cldr.ZW ->
            "Zimbabve"