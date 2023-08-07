module Cldr.Slovak exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Slovak.

    AD Andorra
    AE Spojené arabské emiráty
    AF Afganistan
    AG Antigua a Barbuda
    AI Anguilla
    AL Albánsko
    AM Arménsko
    AO Angola
    AQ Antarktída
    AR Argentína
    AS Americká Samoa
    AT Rakúsko
    AU Austrália
    AW Aruba
    AX Alandy
    AZ Azerbajdžan
    BA Bosna a Hercegovina
    BB Barbados
    BD Bangladéš
    BE Belgicko
    BF Burkina Faso
    BG Bulharsko
    BH Bahrajn
    BI Burundi
    BJ Benin
    BL Svätý Bartolomej
    BM Bermudy
    BN Brunej
    BO Bolívia
    BQ Karibské Holandsko
    BR Brazília
    BS Bahamy
    BT Bhután
    BV Bouvetov ostrov
    BW Botswana
    BY Bielorusko
    BZ Belize
    CA Kanada
    CC Kokosové ostrovy
    CD Kongo (DRK)
    CF Stredoafrická republika
    CG Kongo (republika)
    CH Švajčiarsko
    CI Pobrežie Slonoviny
    CK Cookove ostrovy
    CL Čile
    CM Kamerun
    CN Čína
    CO Kolumbia
    CR Kostarika
    CU Kuba
    CV Kapverdy
    CW Curaçao
    CX Vianočný ostrov
    CY Cyprus
    CZ Česká republika
    DE Nemecko
    DJ Džibutsko
    DK Dánsko
    DM Dominika
    DO Dominikánska republika
    DZ Alžírsko
    EC Ekvádor
    EE Estónsko
    EG Egypt
    EH Západná Sahara
    ER Eritrea
    ES Španielsko
    ET Etiópia
    FI Fínsko
    FJ Fidži
    FK Falklandy
    FM Mikronézia
    FO Faerské ostrovy
    FR Francúzsko
    GA Gabon
    GB Spojené kráľovstvo
    GD Grenada
    GE Gruzínsko
    GF Francúzska Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltár
    GL Grónsko
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Rovníková Guinea
    GR Grécko
    GS Južná Georgia a Južné Sandwichove ostrovy
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hongkong
    HM Heardov ostrov a Macdonaldove ostrovy
    HN Honduras
    HR Chorvátsko
    HT Haiti
    HU Maďarsko
    ID Indonézia
    IE Írsko
    IL Izrael
    IM Ostrov Man
    IN India
    IO Britské indickooceánske územie
    IQ Irak
    IR Irán
    IS Island
    IT Taliansko
    JE Jersey
    JM Jamajka
    JO Jordánsko
    JP Japonsko
    KE Keňa
    KG Kirgizsko
    KH Kambodža
    KI Kiribati
    KM Komory
    KN Svätý Krištof a Nevis
    KP Severná Kórea
    KR Južná Kórea
    KW Kuvajt
    KY Kajmanie ostrovy
    KZ Kazachstan
    LA Laos
    LB Libanon
    LC Svätá Lucia
    LI Lichtenštajnsko
    LK Srí Lanka
    LR Libéria
    LS Lesotho
    LT Litva
    LU Luxembursko
    LV Lotyšsko
    LY Líbya
    MA Maroko
    MC Monako
    MD Moldavsko
    ME Čierna Hora
    MF Svätý Martin (fr.)
    MG Madagaskar
    MH Marshallove ostrovy
    MK Severné Macedónsko
    ML Mali
    MM Mjanmarsko
    MN Mongolsko
    MO Macao
    MP Severné Mariány
    MQ Martinik
    MR Mauritánia
    MS Montserrat
    MT Malta
    MU Maurícius
    MV Maldivy
    MW Malawi
    MX Mexiko
    MY Malajzia
    MZ Mozambik
    NA Namíbia
    NC Nová Kaledónia
    NE Niger
    NF Norfolk
    NG Nigéria
    NI Nikaragua
    NL Holandsko
    NO Nórsko
    NP Nepál
    NR Nauru
    NU Niue
    NZ Nový Zéland
    OM Omán
    PA Panama
    PE Peru
    PF Francúzska Polynézia
    PG Papua-Nová Guinea
    PH Filipíny
    PK Pakistan
    PL Poľsko
    PM Saint Pierre a Miquelon
    PN Pitcairnove ostrovy
    PR Portoriko
    PS Palestínska samospráva
    PT Portugalsko
    PW Palau
    PY Paraguaj
    QA Katar
    RE Réunion
    RO Rumunsko
    RS Srbsko
    RU Rusko
    RW Rwanda
    SA Saudská Arábia
    SB Šalamúnove ostrovy
    SC Seychely
    SD Sudán
    SE Švédsko
    SG Singapur
    SH Svätá Helena
    SI Slovinsko
    SJ Svalbard a Jan Mayen
    SK Slovensko
    SL Sierra Leone
    SM San Maríno
    SN Senegal
    SO Somálsko
    SR Surinam
    SS Južný Sudán
    ST Svätý Tomáš a Princov ostrov
    SV Salvádor
    SX Svätý Martin (hol.)
    SY Sýria
    SZ Eswatini
    TC Turks a Caicos
    TD Čad
    TF Francúzske južné a antarktické územia
    TG Togo
    TH Thajsko
    TJ Tadžikistan
    TK Tokelau
    TL Východný Timor
    TM Turkménsko
    TN Tunisko
    TO Tonga
    TR Turecko
    TT Trinidad a Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzánia
    UA Ukrajina
    UG Uganda
    UM Menšie odľahlé ostrovy USA
    US Spojené štáty
    UY Uruguaj
    UZ Uzbekistan
    VA Vatikán
    VC Svätý Vincent a Grenadíny
    VE Venezuela
    VG Britské Panenské ostrovy
    VI Americké Panenské ostrovy
    VN Vietnam
    VU Vanuatu
    WF Wallis a Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Mayotte
    ZA Južná Afrika
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Spojené arabské emiráty"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua a Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albánsko"

        Cldr.AM ->
            "Arménsko"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktída"

        Cldr.AR ->
            "Argentína"

        Cldr.AS ->
            "Americká Samoa"

        Cldr.AT ->
            "Rakúsko"

        Cldr.AU ->
            "Austrália"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Alandy"

        Cldr.AZ ->
            "Azerbajdžan"

        Cldr.BA ->
            "Bosna a Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladéš"

        Cldr.BE ->
            "Belgicko"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulharsko"

        Cldr.BH ->
            "Bahrajn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Svätý Bartolomej"

        Cldr.BM ->
            "Bermudy"

        Cldr.BN ->
            "Brunej"

        Cldr.BO ->
            "Bolívia"

        Cldr.BQ ->
            "Karibské Holandsko"

        Cldr.BR ->
            "Brazília"

        Cldr.BS ->
            "Bahamy"

        Cldr.BT ->
            "Bhután"

        Cldr.BV ->
            "Bouvetov ostrov"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Bielorusko"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosové ostrovy"

        Cldr.CD ->
            "Kongo (DRK)"

        Cldr.CF ->
            "Stredoafrická republika"

        Cldr.CG ->
            "Kongo (republika)"

        Cldr.CH ->
            "Švajčiarsko"

        Cldr.CI ->
            "Pobrežie Slonoviny"

        Cldr.CK ->
            "Cookove ostrovy"

        Cldr.CL ->
            "Čile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Čína"

        Cldr.CO ->
            "Kolumbia"

        Cldr.CR ->
            "Kostarika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kapverdy"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Vianočný ostrov"

        Cldr.CY ->
            "Cyprus"

        Cldr.CZ ->
            "Česká republika"

        Cldr.DE ->
            "Nemecko"

        Cldr.DJ ->
            "Džibutsko"

        Cldr.DK ->
            "Dánsko"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikánska republika"

        Cldr.DZ ->
            "Alžírsko"

        Cldr.EC ->
            "Ekvádor"

        Cldr.EE ->
            "Estónsko"

        Cldr.EG ->
            "Egypt"

        Cldr.EH ->
            "Západná Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Španielsko"

        Cldr.ET ->
            "Etiópia"

        Cldr.FI ->
            "Fínsko"

        Cldr.FJ ->
            "Fidži"

        Cldr.FK ->
            "Falklandy"

        Cldr.FM ->
            "Mikronézia"

        Cldr.FO ->
            "Faerské ostrovy"

        Cldr.FR ->
            "Francúzsko"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Spojené kráľovstvo"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruzínsko"

        Cldr.GF ->
            "Francúzska Guyana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltár"

        Cldr.GL ->
            "Grónsko"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Rovníková Guinea"

        Cldr.GR ->
            "Grécko"

        Cldr.GS ->
            "Južná Georgia a Južné Sandwichove ostrovy"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkong"

        Cldr.HM ->
            "Heardov ostrov a Macdonaldove ostrovy"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Chorvátsko"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Maďarsko"

        Cldr.ID ->
            "Indonézia"

        Cldr.IE ->
            "Írsko"

        Cldr.IL ->
            "Izrael"

        Cldr.IM ->
            "Ostrov Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Britské indickooceánske územie"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Irán"

        Cldr.IS ->
            "Island"

        Cldr.IT ->
            "Taliansko"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamajka"

        Cldr.JO ->
            "Jordánsko"

        Cldr.JP ->
            "Japonsko"

        Cldr.KE ->
            "Keňa"

        Cldr.KG ->
            "Kirgizsko"

        Cldr.KH ->
            "Kambodža"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komory"

        Cldr.KN ->
            "Svätý Krištof a Nevis"

        Cldr.KP ->
            "Severná Kórea"

        Cldr.KR ->
            "Južná Kórea"

        Cldr.KW ->
            "Kuvajt"

        Cldr.KY ->
            "Kajmanie ostrovy"

        Cldr.KZ ->
            "Kazachstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "Svätá Lucia"

        Cldr.LI ->
            "Lichtenštajnsko"

        Cldr.LK ->
            "Srí Lanka"

        Cldr.LR ->
            "Libéria"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Litva"

        Cldr.LU ->
            "Luxembursko"

        Cldr.LV ->
            "Lotyšsko"

        Cldr.LY ->
            "Líbya"

        Cldr.MA ->
            "Maroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldavsko"

        Cldr.ME ->
            "Čierna Hora"

        Cldr.MF ->
            "Svätý Martin (fr.)"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshallove ostrovy"

        Cldr.MK ->
            "Severné Macedónsko"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mjanmarsko"

        Cldr.MN ->
            "Mongolsko"

        Cldr.MO ->
            "Macao"

        Cldr.MP ->
            "Severné Mariány"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Mauritánia"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Maurícius"

        Cldr.MV ->
            "Maldivy"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexiko"

        Cldr.MY ->
            "Malajzia"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namíbia"

        Cldr.NC ->
            "Nová Kaledónia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk"

        Cldr.NG ->
            "Nigéria"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Holandsko"

        Cldr.NO ->
            "Nórsko"

        Cldr.NP ->
            "Nepál"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nový Zéland"

        Cldr.OM ->
            "Omán"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Francúzska Polynézia"

        Cldr.PG ->
            "Papua-Nová Guinea"

        Cldr.PH ->
            "Filipíny"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Poľsko"

        Cldr.PM ->
            "Saint Pierre a Miquelon"

        Cldr.PN ->
            "Pitcairnove ostrovy"

        Cldr.PR ->
            "Portoriko"

        Cldr.PS ->
            "Palestínska samospráva"

        Cldr.PT ->
            "Portugalsko"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguaj"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Rumunsko"

        Cldr.RS ->
            "Srbsko"

        Cldr.RU ->
            "Rusko"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudská Arábia"

        Cldr.SB ->
            "Šalamúnove ostrovy"

        Cldr.SC ->
            "Seychely"

        Cldr.SD ->
            "Sudán"

        Cldr.SE ->
            "Švédsko"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Svätá Helena"

        Cldr.SI ->
            "Slovinsko"

        Cldr.SJ ->
            "Svalbard a Jan Mayen"

        Cldr.SK ->
            "Slovensko"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Maríno"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somálsko"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Južný Sudán"

        Cldr.ST ->
            "Svätý Tomáš a Princov ostrov"

        Cldr.SV ->
            "Salvádor"

        Cldr.SX ->
            "Svätý Martin (hol.)"

        Cldr.SY ->
            "Sýria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks a Caicos"

        Cldr.TD ->
            "Čad"

        Cldr.TF ->
            "Francúzske južné a antarktické územia"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thajsko"

        Cldr.TJ ->
            "Tadžikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Východný Timor"

        Cldr.TM ->
            "Turkménsko"

        Cldr.TN ->
            "Tunisko"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turecko"

        Cldr.TT ->
            "Trinidad a Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzánia"

        Cldr.UA ->
            "Ukrajina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Menšie odľahlé ostrovy USA"

        Cldr.US ->
            "Spojené štáty"

        Cldr.UY ->
            "Uruguaj"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikán"

        Cldr.VC ->
            "Svätý Vincent a Grenadíny"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Britské Panenské ostrovy"

        Cldr.VI ->
            "Americké Panenské ostrovy"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis a Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Južná Afrika"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"