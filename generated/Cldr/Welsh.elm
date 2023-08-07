module Cldr.Welsh exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Welsh.

    AD Andorra
    AE Emiradau Arabaidd Unedig
    AF Afghanistan
    AG Antigua a Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antarctica
    AR Yr Ariannin
    AS Samoa America
    AT Awstria
    AU Awstralia
    AW Aruba
    AX Ynysoedd Åland
    AZ Aserbaijan
    BA Bosnia a Herzegovina
    BB Barbados
    BD Bangladesh
    BE Gwlad Belg
    BF Burkina Faso
    BG Bwlgaria
    BH Bahrain
    BI Burundi
    BJ Benin
    BL Saint Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolifia
    BQ Antilles yr Iseldiroedd
    BR Brasil
    BS Y Bahamas
    BT Bhutan
    BV Ynys Bouvet
    BW Botswana
    BY Belarws
    BZ Belize
    CA Canada
    CC Ynysoedd Cocos (Keeling)
    CD Y Congo (G.Dd.C.)
    CF Gweriniaeth Canolbarth Affrica
    CG Y Congo (Gweriniaeth)
    CH Y Swistir
    CI Côte d’Ivoire
    CK Ynysoedd Cook
    CL Chile
    CM Camerŵn
    CN Tsieina
    CO Colombia
    CR Costa Rica
    CU Ciwba
    CV Cabo Verde
    CW Curaçao
    CX Ynys y Nadolig
    CY Cyprus
    CZ Gweriniaeth Tsiec
    DE Yr Almaen
    DJ Djibouti
    DK Denmarc
    DM Dominica
    DO Gweriniaeth Dominica
    DZ Algeria
    EC Ecuador
    EE Estonia
    EG Yr Aifft
    EH Gorllewin Sahara
    ER Eritrea
    ES Sbaen
    ET Ethiopia
    FI Y Ffindir
    FJ Fiji
    FK Ynysoedd y Falkland/Malvinas
    FM Micronesia
    FO Ynysoedd Ffaro
    FR Ffrainc
    GA Gabon
    GB Y Deyrnas Unedig
    GD Grenada
    GE Georgia
    GF Guyane Ffrengig
    GG Ynys y Garn
    GH Ghana
    GI Gibraltar
    GL Yr Ynys Las
    GM Gambia
    GN Gini
    GP Guadeloupe
    GQ Gini Gyhydeddol
    GR Gwlad Groeg
    GS De Georgia ac Ynysoedd Sandwich y De
    GT Guatemala
    GU Guam
    GW Guiné-Bissau
    GY Guyana
    HK Hong Kong
    HM Ynys Heard ac Ynysoedd McDonald
    HN Honduras
    HR Croatia
    HT Haiti
    HU Hwngari
    ID Indonesia
    IE Iwerddon
    IL Israel
    IM Ynys Manaw
    IN India
    IO Tiriogaeth Brydeinig Cefnfor India
    IQ Irac
    IR Iran
    IS Gwlad yr Iâ
    IT Yr Eidal
    JE Jersey
    JM Jamaica
    JO Gwlad Iorddonen
    JP Japan
    KE Kenya
    KG Kyrgyzstan
    KH Cambodia
    KI Kiribati
    KM Comoros
    KN Saint Kitts a Nevis
    KP Gogledd Corea
    KR De Corea
    KW Kuwait
    KY Ynysoedd Cayman
    KZ Kazakhstan
    LA Laos
    LB Libanus
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lithwania
    LU Lwcsembwrg
    LV Latfia
    LY Libya
    MA Moroco
    MC Monaco
    MD Moldofa
    ME Montenegro
    MF Saint Martin
    MG Madagascar
    MH Ynysoedd Marshall
    MK Gogledd Macedonia
    ML Mali
    MM Myanmar (Burma)
    MN Mongolia
    MO Macau
    MP Ynysoedd Gogledd Mariana
    MQ Martinique
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Y Maldives
    MW Malawi
    MX Mecsico
    MY Malaysia
    MZ Mozambique
    NA Namibia
    NC Caledonia Newydd
    NE Niger
    NF Ynys Norfolk
    NG Nigeria
    NI Nicaragua
    NL Yr Iseldiroedd
    NO Norwy
    NP Nepal
    NR Nauru
    NU Niue
    NZ Seland Newydd
    OM Oman
    PA Panama
    PE Periw
    PF Polynesia Ffrengig
    PG Papua Guinea Newydd
    PH Y Philipinau
    PK Pakistan
    PL Gwlad Pwyl
    PM Saint-Pierre-et-Miquelon
    PN Ynysoedd Pitcairn
    PR Puerto Rico
    PS Palesteina
    PT Portiwgal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Rwmania
    RS Serbia
    RU Rwsia
    RW Rwanda
    SA Saudi Arabia
    SB Ynysoedd Solomon
    SC Seychelles
    SD Swdan
    SE Sweden
    SG Singapore
    SH Saint Helena
    SI Slofenia
    SJ Svalbard a Jan Mayen
    SK Slofacia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Suriname
    SS De Swdan
    ST São Tomé a Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Syria
    SZ Eswatini
    TC Ynysoedd Turks a Caicos
    TD Tsiad
    TF Tiroedd Deheuol ac Antarctig Ffrainc
    TG Togo
    TH Gwlad Thai
    TJ Tajicistan
    TK Tokelau
    TL Dwyrain Timor
    TM Tyrcmenistan
    TN Tiwnisia
    TO Tonga
    TR Twrci
    TT Trinidad a Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Wcráin
    UG Uganda
    UM Ynysoedd Pellennig UDA
    US Yr Unol Daleithiau
    UY Uruguay
    UZ Uzbekistan
    VA Y Fatican
    VC Saint Vincent a’r Grenadines
    VE Venezuela
    VG Ynysoedd Gwyryf Prydain
    VI Ynysoedd Gwyryf yr Unol Daleithiau
    VN Fietnam
    VU Vanuatu
    WF Wallis a Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA De Affrica
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Emiradau Arabaidd Unedig"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua a Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarctica"

        Cldr.AR ->
            "Yr Ariannin"

        Cldr.AS ->
            "Samoa America"

        Cldr.AT ->
            "Awstria"

        Cldr.AU ->
            "Awstralia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ynysoedd Åland"

        Cldr.AZ ->
            "Aserbaijan"

        Cldr.BA ->
            "Bosnia a Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Gwlad Belg"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bwlgaria"

        Cldr.BH ->
            "Bahrain"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Saint Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolifia"

        Cldr.BQ ->
            "Antilles yr Iseldiroedd"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Y Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Ynys Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarws"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Ynysoedd Cocos (Keeling)"

        Cldr.CD ->
            "Y Congo (G.Dd.C.)"

        Cldr.CF ->
            "Gweriniaeth Canolbarth Affrica"

        Cldr.CG ->
            "Y Congo (Gweriniaeth)"

        Cldr.CH ->
            "Y Swistir"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Ynysoedd Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Camerŵn"

        Cldr.CN ->
            "Tsieina"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Ciwba"

        Cldr.CV ->
            "Cabo Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Ynys y Nadolig"

        Cldr.CY ->
            "Cyprus"

        Cldr.CZ ->
            "Gweriniaeth Tsiec"

        Cldr.DE ->
            "Yr Almaen"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Denmarc"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Gweriniaeth Dominica"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Yr Aifft"

        Cldr.EH ->
            "Gorllewin Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Sbaen"

        Cldr.ET ->
            "Ethiopia"

        Cldr.FI ->
            "Y Ffindir"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Ynysoedd y Falkland/Malvinas"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Ynysoedd Ffaro"

        Cldr.FR ->
            "Ffrainc"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Y Deyrnas Unedig"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guyane Ffrengig"

        Cldr.GG ->
            "Ynys y Garn"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Yr Ynys Las"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Gini"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Gini Gyhydeddol"

        Cldr.GR ->
            "Gwlad Groeg"

        Cldr.GS ->
            "De Georgia ac Ynysoedd Sandwich y De"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guiné-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Ynys Heard ac Ynysoedd McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croatia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hwngari"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Iwerddon"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Ynys Manaw"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Tiriogaeth Brydeinig Cefnfor India"

        Cldr.IQ ->
            "Irac"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Gwlad yr Iâ"

        Cldr.IT ->
            "Yr Eidal"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Gwlad Iorddonen"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kyrgyzstan"

        Cldr.KH ->
            "Cambodia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comoros"

        Cldr.KN ->
            "Saint Kitts a Nevis"

        Cldr.KP ->
            "Gogledd Corea"

        Cldr.KR ->
            "De Corea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Ynysoedd Cayman"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanus"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Lithwania"

        Cldr.LU ->
            "Lwcsembwrg"

        Cldr.LV ->
            "Latfia"

        Cldr.LY ->
            "Libya"

        Cldr.MA ->
            "Moroco"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldofa"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Ynysoedd Marshall"

        Cldr.MK ->
            "Gogledd Macedonia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macau"

        Cldr.MP ->
            "Ynysoedd Gogledd Mariana"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Y Maldives"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mecsico"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Caledonia Newydd"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Ynys Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Yr Iseldiroedd"

        Cldr.NO ->
            "Norwy"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Seland Newydd"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Periw"

        Cldr.PF ->
            "Polynesia Ffrengig"

        Cldr.PG ->
            "Papua Guinea Newydd"

        Cldr.PH ->
            "Y Philipinau"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Gwlad Pwyl"

        Cldr.PM ->
            "Saint-Pierre-et-Miquelon"

        Cldr.PN ->
            "Ynysoedd Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palesteina"

        Cldr.PT ->
            "Portiwgal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Rwmania"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rwsia"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudi Arabia"

        Cldr.SB ->
            "Ynysoedd Solomon"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Swdan"

        Cldr.SE ->
            "Sweden"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "Saint Helena"

        Cldr.SI ->
            "Slofenia"

        Cldr.SJ ->
            "Svalbard a Jan Mayen"

        Cldr.SK ->
            "Slofacia"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "De Swdan"

        Cldr.ST ->
            "São Tomé a Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Ynysoedd Turks a Caicos"

        Cldr.TD ->
            "Tsiad"

        Cldr.TF ->
            "Tiroedd Deheuol ac Antarctig Ffrainc"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Gwlad Thai"

        Cldr.TJ ->
            "Tajicistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Dwyrain Timor"

        Cldr.TM ->
            "Tyrcmenistan"

        Cldr.TN ->
            "Tiwnisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Twrci"

        Cldr.TT ->
            "Trinidad a Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Wcráin"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Ynysoedd Pellennig UDA"

        Cldr.US ->
            "Yr Unol Daleithiau"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Y Fatican"

        Cldr.VC ->
            "Saint Vincent a’r Grenadines"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Ynysoedd Gwyryf Prydain"

        Cldr.VI ->
            "Ynysoedd Gwyryf yr Unol Daleithiau"

        Cldr.VN ->
            "Fietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis a Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "De Affrica"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"