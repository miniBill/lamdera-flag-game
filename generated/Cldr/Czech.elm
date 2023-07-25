module Cldr.Czech exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Czech.

    AD Andorra
    AE Spojené arabské emiráty
    AF Afghánistán
    AG Antigua a Barbuda
    AI Anguilla
    AL Albánie
    AM Arménie
    AO Angola
    AQ Antarktida
    AR Argentina
    AS Americká Samoa
    AT Rakousko
    AU Austrálie
    AW Aruba
    AX Ålandy
    AZ Ázerbájdžán
    BA Bosna a Hercegovina
    BB Barbados
    BD Bangladéš
    BE Belgie
    BF Burkina Faso
    BG Bulharsko
    BH Bahrajn
    BI Burundi
    BJ Benin
    BL Svatý Bartoloměj
    BM Bermudy
    BN Brunej
    BO Bolívie
    BQ Karibské Nizozemsko
    BR Brazílie
    BS Bahamy
    BT Bhútán
    BV Bouvetův ostrov
    BW Botswana
    BY Bělorusko
    BZ Belize
    CA Kanada
    CC Kokosové ostrovy
    CD Kongo – Kinshasa
    CF Středoafrická republika
    CG Kongo – Brazzaville
    CH Švýcarsko
    CI Pobřeží slonoviny
    CK Cookovy ostrovy
    CL Chile
    CM Kamerun
    CN Čína
    CO Kolumbie
    CR Kostarika
    CU Kuba
    CV Kapverdy
    CW Curaçao
    CX Vánoční ostrov
    CY Kypr
    CZ Česko
    DE Německo
    DJ Džibutsko
    DK Dánsko
    DM Dominika
    DO Dominikánská republika
    DZ Alžírsko
    EC Ekvádor
    EE Estonsko
    EG Egypt
    EH Západní Sahara
    ER Eritrea
    ES Španělsko
    ET Etiopie
    FI Finsko
    FJ Fidži
    FK Falklandské ostrovy
    FM Mikronésie
    FO Faerské ostrovy
    FR Francie
    GA Gabon
    GB Spojené království
    GD Grenada
    GE Gruzie
    GF Francouzská Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Grónsko
    GM Gambie
    GN Guinea
    GP Guadeloupe
    GQ Rovníková Guinea
    GR Řecko
    GS Jižní Georgie a Jižní Sandwichovy ostrovy
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hongkong – ZAO Číny
    HM Heardův ostrov a McDonaldovy ostrovy
    HN Honduras
    HR Chorvatsko
    HT Haiti
    HU Maďarsko
    ID Indonésie
    IE Irsko
    IL Izrael
    IM Ostrov Man
    IN Indie
    IO Britské indickooceánské území
    IQ Irák
    IR Írán
    IS Island
    IT Itálie
    JE Jersey
    JM Jamajka
    JO Jordánsko
    JP Japonsko
    KE Keňa
    KG Kyrgyzstán
    KH Kambodža
    KI Kiribati
    KM Komory
    KN Svatý Kryštof a Nevis
    KP Severní Korea
    KR Jižní Korea
    KW Kuvajt
    KY Kajmanské ostrovy
    KZ Kazachstán
    LA Laos
    LB Libanon
    LC Svatá Lucie
    LI Lichtenštejnsko
    LK Srí Lanka
    LR Libérie
    LS Lesotho
    LT Litva
    LU Lucembursko
    LV Lotyšsko
    LY Libye
    MA Maroko
    MC Monako
    MD Moldavsko
    ME Černá Hora
    MF Svatý Martin (Francie)
    MG Madagaskar
    MH Marshallovy ostrovy
    MK Severní Makedonie
    ML Mali
    MM Myanmar (Barma)
    MN Mongolsko
    MO Macao – ZAO Číny
    MP Severní Mariany
    MQ Martinik
    MR Mauritánie
    MS Montserrat
    MT Malta
    MU Mauricius
    MV Maledivy
    MW Malawi
    MX Mexiko
    MY Malajsie
    MZ Mosambik
    NA Namibie
    NC Nová Kaledonie
    NE Niger
    NF Norfolk
    NG Nigérie
    NI Nikaragua
    NL Nizozemsko
    NO Norsko
    NP Nepál
    NR Nauru
    NU Niue
    NZ Nový Zéland
    OM Omán
    PA Panama
    PE Peru
    PF Francouzská Polynésie
    PG Papua-Nová Guinea
    PH Filipíny
    PK Pákistán
    PL Polsko
    PM Saint-Pierre a Miquelon
    PN Pitcairnovy ostrovy
    PR Portoriko
    PS Palestinská území
    PT Portugalsko
    PW Palau
    PY Paraguay
    QA Katar
    RE Réunion
    RO Rumunsko
    RS Srbsko
    RU Rusko
    RW Rwanda
    SA Saúdská Arábie
    SB Šalamounovy ostrovy
    SC Seychely
    SD Súdán
    SE Švédsko
    SG Singapur
    SH Svatá Helena
    SI Slovinsko
    SJ Špicberky a Jan Mayen
    SK Slovensko
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somálsko
    SR Surinam
    SS Jižní Súdán
    ST Svatý Tomáš a Princův ostrov
    SV Salvador
    SX Svatý Martin (Nizozemsko)
    SY Sýrie
    SZ Eswatini
    TC Turks a Caicos
    TD Čad
    TF Francouzská jižní území
    TG Togo
    TH Thajsko
    TJ Tádžikistán
    TK Tokelau
    TL Východní Timor
    TM Turkmenistán
    TN Tunisko
    TO Tonga
    TR Turecko
    TT Trinidad a Tobago
    TV Tuvalu
    TW Tchaj-wan
    TZ Tanzanie
    UA Ukrajina
    UG Uganda
    UM Menší odlehlé ostrovy USA
    US Spojené státy
    UY Uruguay
    UZ Uzbekistán
    VA Vatikán
    VC Svatý Vincenc a Grenadiny
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
    ZA Jihoafrická republika
    ZM Zambie
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
            "Afghánistán"

        Cldr.AG ->
            "Antigua a Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albánie"

        Cldr.AM ->
            "Arménie"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktida"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Americká Samoa"

        Cldr.AT ->
            "Rakousko"

        Cldr.AU ->
            "Austrálie"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ålandy"

        Cldr.AZ ->
            "Ázerbájdžán"

        Cldr.BA ->
            "Bosna a Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladéš"

        Cldr.BE ->
            "Belgie"

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
            "Svatý Bartoloměj"

        Cldr.BM ->
            "Bermudy"

        Cldr.BN ->
            "Brunej"

        Cldr.BO ->
            "Bolívie"

        Cldr.BQ ->
            "Karibské Nizozemsko"

        Cldr.BR ->
            "Brazílie"

        Cldr.BS ->
            "Bahamy"

        Cldr.BT ->
            "Bhútán"

        Cldr.BV ->
            "Bouvetův ostrov"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Bělorusko"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosové ostrovy"

        Cldr.CD ->
            "Kongo – Kinshasa"

        Cldr.CF ->
            "Středoafrická republika"

        Cldr.CG ->
            "Kongo – Brazzaville"

        Cldr.CH ->
            "Švýcarsko"

        Cldr.CI ->
            "Pobřeží slonoviny"

        Cldr.CK ->
            "Cookovy ostrovy"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Čína"

        Cldr.CO ->
            "Kolumbie"

        Cldr.CR ->
            "Kostarika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kapverdy"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Vánoční ostrov"

        Cldr.CY ->
            "Kypr"

        Cldr.CZ ->
            "Česko"

        Cldr.DE ->
            "Německo"

        Cldr.DJ ->
            "Džibutsko"

        Cldr.DK ->
            "Dánsko"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikánská republika"

        Cldr.DZ ->
            "Alžírsko"

        Cldr.EC ->
            "Ekvádor"

        Cldr.EE ->
            "Estonsko"

        Cldr.EG ->
            "Egypt"

        Cldr.EH ->
            "Západní Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Španělsko"

        Cldr.ET ->
            "Etiopie"

        Cldr.FI ->
            "Finsko"

        Cldr.FJ ->
            "Fidži"

        Cldr.FK ->
            "Falklandské ostrovy"

        Cldr.FM ->
            "Mikronésie"

        Cldr.FO ->
            "Faerské ostrovy"

        Cldr.FR ->
            "Francie"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Spojené království"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruzie"

        Cldr.GF ->
            "Francouzská Guyana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grónsko"

        Cldr.GM ->
            "Gambie"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Rovníková Guinea"

        Cldr.GR ->
            "Řecko"

        Cldr.GS ->
            "Jižní Georgie a Jižní Sandwichovy ostrovy"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkong – ZAO Číny"

        Cldr.HM ->
            "Heardův ostrov a McDonaldovy ostrovy"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Chorvatsko"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Maďarsko"

        Cldr.ID ->
            "Indonésie"

        Cldr.IE ->
            "Irsko"

        Cldr.IL ->
            "Izrael"

        Cldr.IM ->
            "Ostrov Man"

        Cldr.IN ->
            "Indie"

        Cldr.IO ->
            "Britské indickooceánské území"

        Cldr.IQ ->
            "Irák"

        Cldr.IR ->
            "Írán"

        Cldr.IS ->
            "Island"

        Cldr.IT ->
            "Itálie"

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
            "Kyrgyzstán"

        Cldr.KH ->
            "Kambodža"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komory"

        Cldr.KN ->
            "Svatý Kryštof a Nevis"

        Cldr.KP ->
            "Severní Korea"

        Cldr.KR ->
            "Jižní Korea"

        Cldr.KW ->
            "Kuvajt"

        Cldr.KY ->
            "Kajmanské ostrovy"

        Cldr.KZ ->
            "Kazachstán"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "Svatá Lucie"

        Cldr.LI ->
            "Lichtenštejnsko"

        Cldr.LK ->
            "Srí Lanka"

        Cldr.LR ->
            "Libérie"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Litva"

        Cldr.LU ->
            "Lucembursko"

        Cldr.LV ->
            "Lotyšsko"

        Cldr.LY ->
            "Libye"

        Cldr.MA ->
            "Maroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldavsko"

        Cldr.ME ->
            "Černá Hora"

        Cldr.MF ->
            "Svatý Martin (Francie)"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshallovy ostrovy"

        Cldr.MK ->
            "Severní Makedonie"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Barma)"

        Cldr.MN ->
            "Mongolsko"

        Cldr.MO ->
            "Macao – ZAO Číny"

        Cldr.MP ->
            "Severní Mariany"

        Cldr.MQ ->
            "Martinik"

        Cldr.MR ->
            "Mauritánie"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauricius"

        Cldr.MV ->
            "Maledivy"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexiko"

        Cldr.MY ->
            "Malajsie"

        Cldr.MZ ->
            "Mosambik"

        Cldr.NA ->
            "Namibie"

        Cldr.NC ->
            "Nová Kaledonie"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk"

        Cldr.NG ->
            "Nigérie"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Nizozemsko"

        Cldr.NO ->
            "Norsko"

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
            "Francouzská Polynésie"

        Cldr.PG ->
            "Papua-Nová Guinea"

        Cldr.PH ->
            "Filipíny"

        Cldr.PK ->
            "Pákistán"

        Cldr.PL ->
            "Polsko"

        Cldr.PM ->
            "Saint-Pierre a Miquelon"

        Cldr.PN ->
            "Pitcairnovy ostrovy"

        Cldr.PR ->
            "Portoriko"

        Cldr.PS ->
            "Palestinská území"

        Cldr.PT ->
            "Portugalsko"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

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
            "Saúdská Arábie"

        Cldr.SB ->
            "Šalamounovy ostrovy"

        Cldr.SC ->
            "Seychely"

        Cldr.SD ->
            "Súdán"

        Cldr.SE ->
            "Švédsko"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Svatá Helena"

        Cldr.SI ->
            "Slovinsko"

        Cldr.SJ ->
            "Špicberky a Jan Mayen"

        Cldr.SK ->
            "Slovensko"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somálsko"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Jižní Súdán"

        Cldr.ST ->
            "Svatý Tomáš a Princův ostrov"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Svatý Martin (Nizozemsko)"

        Cldr.SY ->
            "Sýrie"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks a Caicos"

        Cldr.TD ->
            "Čad"

        Cldr.TF ->
            "Francouzská jižní území"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thajsko"

        Cldr.TJ ->
            "Tádžikistán"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Východní Timor"

        Cldr.TM ->
            "Turkmenistán"

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
            "Tchaj-wan"

        Cldr.TZ ->
            "Tanzanie"

        Cldr.UA ->
            "Ukrajina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Menší odlehlé ostrovy USA"

        Cldr.US ->
            "Spojené státy"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistán"

        Cldr.VA ->
            "Vatikán"

        Cldr.VC ->
            "Svatý Vincenc a Grenadiny"

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
            "Jihoafrická republika"

        Cldr.ZM ->
            "Zambie"

        Cldr.ZW ->
            "Zimbabwe"