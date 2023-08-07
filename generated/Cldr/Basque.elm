module Cldr.Basque exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Basque.

    AD Andorra
    AE Arabiar Emirerri Batuak
    AF Afganistan
    AG Antigua eta Barbuda
    AI Aingira
    AL Albania
    AM Armenia
    AO Angola
    AQ Antartika
    AR Argentina
    AS Samoa Estatubatuarra
    AT Austria
    AU Australia
    AW Aruba
    AX Åland
    AZ Azerbaijan
    BA Bosnia-Herzegovina
    BB Barbados
    BD Bangladesh
    BE Belgika
    BF Burkina Faso
    BG Bulgaria
    BH Bahrain
    BI Burundi
    BJ Benin
    BL Saint Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Karibeko Herbehereak
    BR Brasil
    BS Bahamak
    BT Bhutan
    BV Bouvet uhartea
    BW Botswana
    BY Bielorrusia
    BZ Belize
    CA Kanada
    CC Cocos (Keeling) uharteak
    CD Kongo (DR)
    CF Afrika Erdiko Errepublika
    CG Kongoko Errepublika
    CH Suitza
    CI Boli Kosta
    CK Cook uharteak
    CL Txile
    CM Kamerun
    CN Txina
    CO Kolonbia
    CR Costa Rica
    CU Kuba
    CV Cabo Verde
    CW Curaçao
    CX Christmas uhartea
    CY Zipre
    CZ Txekiar Errepublika
    DE Alemania
    DJ Djibuti
    DK Danimarka
    DM Dominika
    DO Dominikar Errepublika
    DZ Aljeria
    EC Ekuador
    EE Estonia
    EG Egipto
    EH Mendebaldeko Sahara
    ER Eritrea
    ES Espainia
    ET Etiopia
    FI Finlandia
    FJ Fiji
    FK Falklandak
    FM Mikronesia
    FO Faroe uharteak
    FR Frantzia
    GA Gabon
    GB Erresuma Batua
    GD Grenada
    GE Georgia
    GF Guyana Frantsesa
    GG Guernesey
    GH Ghana
    GI Gibraltar
    GL Groenlandia
    GM Gambia
    GN Ginea
    GP Guadalupe
    GQ Ekuatore Ginea
    GR Grezia
    GS Hegoaldeko Georgia eta Hegoaldeko Sandwich uharteak
    GT Guatemala
    GU Guam
    GW Ginea Bissau
    GY Guyana
    HK Hong Kong
    HM Heard eta McDonald uharteak
    HN Honduras
    HR Kroazia
    HT Haiti
    HU Hungaria
    ID Indonesia
    IE Irlanda
    IL Israel
    IM Man uhartea
    IN India
    IO Indiako Ozeanoko lurralde britainiarra
    IQ Irak
    IR Iran
    IS Islandia
    IT Italia
    JE Jersey
    JM Jamaika
    JO Jordania
    JP Japonia
    KE Kenya
    KG Kirgizistan
    KH Kanbodia
    KI Kiribati
    KM Komoreak
    KN Saint Kitts eta Nevis
    KP Ipar Korea
    KR Hego Korea
    KW Kuwait
    KY Kaiman uharteak
    KZ Kazakhstan
    LA Laos
    LB Libano
    LC Santa Luzia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lituania
    LU Luxenburgo
    LV Letonia
    LY Libia
    MA Maroko
    MC Monako
    MD Moldavia
    ME Montenegro
    MF San Martin
    MG Madagaskar
    MH Marshall Uharteak
    MK Ipar Mazedonia
    ML Mali
    MM Myanmar (Birmania)
    MN Mongolia
    MO Macau
    MP Ipar Mariana uharteak
    MQ Martinika
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Maurizio
    MV Maldivak
    MW Malawi
    MX Mexiko
    MY Malaysia
    MZ Mozambike
    NA Namibia
    NC Kaledonia Berria
    NE Niger
    NF Norfolk uhartea
    NG Nigeria
    NI Nikaragua
    NL Herbehereak
    NO Norvegia
    NP Nepal
    NR Nauru
    NU Niue
    NZ Zeelanda Berria
    OM Oman
    PA Panama
    PE Peru
    PF Polinesia Frantsesa
    PG Papua Ginea Berria
    PH Filipinak
    PK Pakistan
    PL Polonia
    PM Saint-Pierre eta Mikelune
    PN Pitcairn uharteak
    PR Puerto Rico
    PS Palestina
    PT Portugal
    PW Palau
    PY Paraguai
    QA Qatar
    RE Reunion
    RO Errumania
    RS Serbia
    RU Errusia
    RW Ruanda
    SA Saudi Arabia
    SB Salomon Uharteak
    SC Seychelleak
    SD Sudan
    SE Suedia
    SG Singapur
    SH Santa Helena
    SI Eslovenia
    SJ Svalbard eta Jan Mayen uharteak
    SK Eslovakia
    SL Sierra Leona
    SM San Marino
    SN Senegal
    SO Somalia
    SR Surinam
    SS Hego Sudan
    ST Sao Tome eta Principe
    SV El Salvador
    SX Sint Maarten
    SY Siria
    SZ Swazilandia
    TC Turk eta Caico uharteak
    TD Txad
    TF Hegoaldeko lurralde frantsesak
    TG Togo
    TH Thailandia
    TJ Tajikistan
    TK Tokelau
    TL Ekialdeko Timor
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Turkia
    TT Trinidad eta Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraina
    UG Uganda
    UM Ameriketako Estatu Batuetako Kanpoaldeko Uharte Txikiak
    US Ameriketako Estatu Batuak
    UY Uruguai
    UZ Uzbekistan
    VA Vatikano Hiria
    VC Saint Vincent eta Grenadinak
    VE Venezuela
    VG Birjina uharte britainiarrak
    VI Birjina uharte amerikarrak
    VN Vietnam
    VU Vanuatu
    WF Wallis eta Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA Hegoafrika
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Arabiar Emirerri Batuak"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua eta Barbuda"

        Cldr.AI ->
            "Aingira"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antartika"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa Estatubatuarra"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Åland"

        Cldr.AZ ->
            "Azerbaijan"

        Cldr.BA ->
            "Bosnia-Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgika"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaria"

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
            "Bolivia"

        Cldr.BQ ->
            "Karibeko Herbehereak"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Bahamak"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvet uhartea"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Bielorrusia"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Cocos (Keeling) uharteak"

        Cldr.CD ->
            "Kongo (DR)"

        Cldr.CF ->
            "Afrika Erdiko Errepublika"

        Cldr.CG ->
            "Kongoko Errepublika"

        Cldr.CH ->
            "Suitza"

        Cldr.CI ->
            "Boli Kosta"

        Cldr.CK ->
            "Cook uharteak"

        Cldr.CL ->
            "Txile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Txina"

        Cldr.CO ->
            "Kolonbia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Cabo Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Christmas uhartea"

        Cldr.CY ->
            "Zipre"

        Cldr.CZ ->
            "Txekiar Errepublika"

        Cldr.DE ->
            "Alemania"

        Cldr.DJ ->
            "Djibuti"

        Cldr.DK ->
            "Danimarka"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikar Errepublika"

        Cldr.DZ ->
            "Aljeria"

        Cldr.EC ->
            "Ekuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egipto"

        Cldr.EH ->
            "Mendebaldeko Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Espainia"

        Cldr.ET ->
            "Etiopia"

        Cldr.FI ->
            "Finlandia"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Falklandak"

        Cldr.FM ->
            "Mikronesia"

        Cldr.FO ->
            "Faroe uharteak"

        Cldr.FR ->
            "Frantzia"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Erresuma Batua"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guyana Frantsesa"

        Cldr.GG ->
            "Guernesey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenlandia"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Ginea"

        Cldr.GP ->
            "Guadalupe"

        Cldr.GQ ->
            "Ekuatore Ginea"

        Cldr.GR ->
            "Grezia"

        Cldr.GS ->
            "Hegoaldeko Georgia eta Hegoaldeko Sandwich uharteak"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Ginea Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Heard eta McDonald uharteak"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroazia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hungaria"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Irlanda"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Man uhartea"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Indiako Ozeanoko lurralde britainiarra"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islandia"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jordania"

        Cldr.JP ->
            "Japonia"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirgizistan"

        Cldr.KH ->
            "Kanbodia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komoreak"

        Cldr.KN ->
            "Saint Kitts eta Nevis"

        Cldr.KP ->
            "Ipar Korea"

        Cldr.KR ->
            "Hego Korea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Kaiman uharteak"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libano"

        Cldr.LC ->
            "Santa Luzia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Lituania"

        Cldr.LU ->
            "Luxenburgo"

        Cldr.LV ->
            "Letonia"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Maroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldavia"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "San Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshall Uharteak"

        Cldr.MK ->
            "Ipar Mazedonia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birmania)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macau"

        Cldr.MP ->
            "Ipar Mariana uharteak"

        Cldr.MQ ->
            "Martinika"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Maurizio"

        Cldr.MV ->
            "Maldivak"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexiko"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambike"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Kaledonia Berria"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk uhartea"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Herbehereak"

        Cldr.NO ->
            "Norvegia"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Zeelanda Berria"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polinesia Frantsesa"

        Cldr.PG ->
            "Papua Ginea Berria"

        Cldr.PH ->
            "Filipinak"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polonia"

        Cldr.PM ->
            "Saint-Pierre eta Mikelune"

        Cldr.PN ->
            "Pitcairn uharteak"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestina"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguai"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Reunion"

        Cldr.RO ->
            "Errumania"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Errusia"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saudi Arabia"

        Cldr.SB ->
            "Salomon Uharteak"

        Cldr.SC ->
            "Seychelleak"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Suedia"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Santa Helena"

        Cldr.SI ->
            "Eslovenia"

        Cldr.SJ ->
            "Svalbard eta Jan Mayen uharteak"

        Cldr.SK ->
            "Eslovakia"

        Cldr.SL ->
            "Sierra Leona"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Hego Sudan"

        Cldr.ST ->
            "Sao Tome eta Principe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Siria"

        Cldr.SZ ->
            "Swazilandia"

        Cldr.TC ->
            "Turk eta Caico uharteak"

        Cldr.TD ->
            "Txad"

        Cldr.TF ->
            "Hegoaldeko lurralde frantsesak"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailandia"

        Cldr.TJ ->
            "Tajikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Ekialdeko Timor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkia"

        Cldr.TT ->
            "Trinidad eta Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Ameriketako Estatu Batuetako Kanpoaldeko Uharte Txikiak"

        Cldr.US ->
            "Ameriketako Estatu Batuak"

        Cldr.UY ->
            "Uruguai"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikano Hiria"

        Cldr.VC ->
            "Saint Vincent eta Grenadinak"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Birjina uharte britainiarrak"

        Cldr.VI ->
            "Birjina uharte amerikarrak"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis eta Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Hegoafrika"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"