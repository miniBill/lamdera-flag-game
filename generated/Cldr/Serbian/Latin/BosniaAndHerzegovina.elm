module Cldr.Serbian.Latin.BosniaAndHerzegovina exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Serbian.Latin


{-| Name for `CountryCode` in Serbian (Latin) - Bosnia & Herzegovina.

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
    BL Sen Bartelemi
    BM Bermuda
    BN Bruneji
    BO Bolivija
    BQ Karipska Holandija
    BR Brazil
    BS Bahami
    BT Butan
    BV ostrvo Buve
    BW Bocvana
    BY Bjelorusija
    BZ Belize
    CA Kanada
    CC Kokosova (Kiling) ostrva
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
    FK Foklandska ostrva
    FM Mikronezija
    FO Farska ostrva
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
    GS Južna Džordžija i Južna Sendvička ostrva
    GT Gvatemala
    GU Gvam
    GW Gvineja Bisao
    GY Gvajana
    HK Hongkong (SAO Kine)
    HM ostrvo Herd i ostrva Makdonald
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
    KM Komori
    KN Sent Kits i Nevis
    KP Sjeverna Koreja
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
    MK Sjeverna Makedonija
    ML Mali
    MM Mjanmar (Burma)
    MN Mongolija
    MO SAR Makao (Kina)
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
    NF ostrvo Norfok
    NG Nigerija
    NI Nikaragva
    NL Holandija
    NO Norveška
    NP Nepal
    NR Nauru
    NU Nijue
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
    PS palestinske teritorije
    PT Portugalija
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
    TF Francuske južne teritorije
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
    UM Spoljna ostrva SAD
    US Sjedinjene Države
    UY Urugvaj
    UZ Uzbekistan
    VA Vatikan
    VC Sveti Vinsent i Grenadini
    VE Venecuela
    VG Britanska Djevičanska ostrva
    VI Američka Djevičanska ostrva
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
        Cldr.AX ->
            "Olandska ostrva"

        Cldr.BL ->
            "Sen Bartelemi"

        Cldr.BN ->
            "Bruneji"

        Cldr.BV ->
            "ostrvo Buve"

        Cldr.BY ->
            "Bjelorusija"

        Cldr.CC ->
            "Kokosova (Kiling) ostrva"

        Cldr.CZ ->
            "Češka Republika"

        Cldr.DE ->
            "Njemačka"

        Cldr.FK ->
            "Foklandska ostrva"

        Cldr.FO ->
            "Farska ostrva"

        Cldr.GS ->
            "Južna Džordžija i Južna Sendvička ostrva"

        Cldr.GU ->
            "Gvam"

        Cldr.GW ->
            "Gvineja Bisao"

        Cldr.HK ->
            "Hongkong (SAO Kine)"

        Cldr.HM ->
            "ostrvo Herd i ostrva Makdonald"

        Cldr.KM ->
            "Komori"

        Cldr.KP ->
            "Sjeverna Koreja"

        Cldr.MK ->
            "Sjeverna Makedonija"

        Cldr.MM ->
            "Mjanmar (Burma)"

        Cldr.MP ->
            "Sjeverna Marijanska ostrva"

        Cldr.NF ->
            "ostrvo Norfok"

        Cldr.NU ->
            "Nijue"

        Cldr.PS ->
            "palestinske teritorije"

        Cldr.RE ->
            "Reunion"

        Cldr.TF ->
            "Francuske južne teritorije"

        Cldr.UM ->
            "Spoljna ostrva SAD"

        Cldr.VC ->
            "Sveti Vinsent i Grenadini"

        Cldr.VG ->
            "Britanska Djevičanska ostrva"

        Cldr.VI ->
            "Američka Djevičanska ostrva"

        _ ->
            Cldr.Serbian.Latin.countryCodeToName countryCode