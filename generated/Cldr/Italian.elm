module Cldr.Italian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Italian.

    AD Andorra
    AE Emirati Arabi Uniti
    AF Afghanistan
    AG Antigua e Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antartide
    AR Argentina
    AS Samoa americane
    AT Austria
    AU Australia
    AW Aruba
    AX Isole Åland
    AZ Azerbaigian
    BA Bosnia ed Erzegovina
    BB Barbados
    BD Bangladesh
    BE Belgio
    BF Burkina Faso
    BG Bulgaria
    BH Bahrein
    BI Burundi
    BJ Benin
    BL Saint-Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Caraibi olandesi
    BR Brasile
    BS Bahamas
    BT Bhutan
    BV Isola Bouvet
    BW Botswana
    BY Bielorussia
    BZ Belize
    CA Canada
    CC Isole Cocos (Keeling)
    CD Congo - Kinshasa
    CF Repubblica Centrafricana
    CG Congo-Brazzaville
    CH Svizzera
    CI Costa d’Avorio
    CK Isole Cook
    CL Cile
    CM Camerun
    CN Cina
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Capo Verde
    CW Curaçao
    CX Isola Christmas
    CY Cipro
    CZ Cechia
    DE Germania
    DJ Gibuti
    DK Danimarca
    DM Dominica
    DO Repubblica Dominicana
    DZ Algeria
    EC Ecuador
    EE Estonia
    EG Egitto
    EH Sahara occidentale
    ER Eritrea
    ES Spagna
    ET Etiopia
    FI Finlandia
    FJ Figi
    FK Isole Falkland
    FM Micronesia
    FO Isole Fær Øer
    FR Francia
    GA Gabon
    GB Regno Unito
    GD Grenada
    GE Georgia
    GF Guyana Francese
    GG Guernsey
    GH Ghana
    GI Gibilterra
    GL Groenlandia
    GM Gambia
    GN Guinea
    GP Guadalupa
    GQ Guinea Equatoriale
    GR Grecia
    GS Georgia del Sud e Sandwich Australi
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK RAS di Hong Kong
    HM Isole Heard e McDonald
    HN Honduras
    HR Croazia
    HT Haiti
    HU Ungheria
    ID Indonesia
    IE Irlanda
    IL Israele
    IM Isola di Man
    IN India
    IO Territorio britannico dell’Oceano Indiano
    IQ Iraq
    IR Iran
    IS Islanda
    IT Italia
    JE Jersey
    JM Giamaica
    JO Giordania
    JP Giappone
    KE Kenya
    KG Kirghizistan
    KH Cambogia
    KI Kiribati
    KM Comore
    KN Saint Kitts e Nevis
    KP Corea del Nord
    KR Corea del Sud
    KW Kuwait
    KY Isole Cayman
    KZ Kazakistan
    LA Laos
    LB Libano
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lituania
    LU Lussemburgo
    LV Lettonia
    LY Libia
    MA Marocco
    MC Monaco
    MD Moldavia
    ME Montenegro
    MF Saint Martin
    MG Madagascar
    MH Isole Marshall
    MK Macedonia del Nord
    ML Mali
    MM Myanmar (Birmania)
    MN Mongolia
    MO RAS di Macao
    MP Isole Marianne settentrionali
    MQ Martinica
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldive
    MW Malawi
    MX Messico
    MY Malaysia
    MZ Mozambico
    NA Namibia
    NC Nuova Caledonia
    NE Niger
    NF Isola Norfolk
    NG Nigeria
    NI Nicaragua
    NL Paesi Bassi
    NO Norvegia
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nuova Zelanda
    OM Oman
    PA Panama
    PE Perù
    PF Polinesia francese
    PG Papua Nuova Guinea
    PH Filippine
    PK Pakistan
    PL Polonia
    PM Saint-Pierre e Miquelon
    PN Isole Pitcairn
    PR Portorico
    PS Territori palestinesi
    PT Portogallo
    PW Palau
    PY Paraguay
    QA Qatar
    RE Riunione
    RO Romania
    RS Serbia
    RU Russia
    RW Ruanda
    SA Arabia Saudita
    SB Isole Salomone
    SC Seychelles
    SD Sudan
    SE Svezia
    SG Singapore
    SH Sant’Elena
    SI Slovenia
    SJ Svalbard e Jan Mayen
    SK Slovacchia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Suriname
    SS Sud Sudan
    ST São Tomé e Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Siria
    SZ eSwatini
    TC Isole Turks e Caicos
    TD Ciad
    TF Terre australi francesi
    TG Togo
    TH Thailandia
    TJ Tagikistan
    TK Tokelau
    TL Timor Est
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Turchia
    TT Trinidad e Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ucraina
    UG Uganda
    UM Isole Minori Esterne degli Stati Uniti
    US Stati Uniti
    UY Uruguay
    UZ Uzbekistan
    VA Città del Vaticano
    VC Saint Vincent e Grenadine
    VE Venezuela
    VG Isole Vergini Britanniche
    VI Isole Vergini Americane
    VN Vietnam
    VU Vanuatu
    WF Wallis e Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA Sudafrica
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Emirati Arabi Uniti"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua e Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antartide"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa americane"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Isole Åland"

        Cldr.AZ ->
            "Azerbaigian"

        Cldr.BA ->
            "Bosnia ed Erzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgio"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaria"

        Cldr.BH ->
            "Bahrein"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Saint-Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Caraibi olandesi"

        Cldr.BR ->
            "Brasile"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Isola Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Bielorussia"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Isole Cocos (Keeling)"

        Cldr.CD ->
            "Congo - Kinshasa"

        Cldr.CF ->
            "Repubblica Centrafricana"

        Cldr.CG ->
            "Congo-Brazzaville"

        Cldr.CH ->
            "Svizzera"

        Cldr.CI ->
            "Costa d’Avorio"

        Cldr.CK ->
            "Isole Cook"

        Cldr.CL ->
            "Cile"

        Cldr.CM ->
            "Camerun"

        Cldr.CN ->
            "Cina"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Capo Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Isola Christmas"

        Cldr.CY ->
            "Cipro"

        Cldr.CZ ->
            "Cechia"

        Cldr.DE ->
            "Germania"

        Cldr.DJ ->
            "Gibuti"

        Cldr.DK ->
            "Danimarca"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Repubblica Dominicana"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egitto"

        Cldr.EH ->
            "Sahara occidentale"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spagna"

        Cldr.ET ->
            "Etiopia"

        Cldr.FI ->
            "Finlandia"

        Cldr.FJ ->
            "Figi"

        Cldr.FK ->
            "Isole Falkland"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Isole Fær Øer"

        Cldr.FR ->
            "Francia"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Regno Unito"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guyana Francese"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibilterra"

        Cldr.GL ->
            "Groenlandia"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadalupa"

        Cldr.GQ ->
            "Guinea Equatoriale"

        Cldr.GR ->
            "Grecia"

        Cldr.GS ->
            "Georgia del Sud e Sandwich Australi"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "RAS di Hong Kong"

        Cldr.HM ->
            "Isole Heard e McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croazia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungheria"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Irlanda"

        Cldr.IL ->
            "Israele"

        Cldr.IM ->
            "Isola di Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Territorio britannico dell’Oceano Indiano"

        Cldr.IQ ->
            "Iraq"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islanda"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Giamaica"

        Cldr.JO ->
            "Giordania"

        Cldr.JP ->
            "Giappone"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirghizistan"

        Cldr.KH ->
            "Cambogia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comore"

        Cldr.KN ->
            "Saint Kitts e Nevis"

        Cldr.KP ->
            "Corea del Nord"

        Cldr.KR ->
            "Corea del Sud"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Isole Cayman"

        Cldr.KZ ->
            "Kazakistan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libano"

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
            "Lituania"

        Cldr.LU ->
            "Lussemburgo"

        Cldr.LV ->
            "Lettonia"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Marocco"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldavia"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Isole Marshall"

        Cldr.MK ->
            "Macedonia del Nord"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birmania)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "RAS di Macao"

        Cldr.MP ->
            "Isole Marianne settentrionali"

        Cldr.MQ ->
            "Martinica"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldive"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Messico"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambico"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Nuova Caledonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Isola Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Paesi Bassi"

        Cldr.NO ->
            "Norvegia"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nuova Zelanda"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Perù"

        Cldr.PF ->
            "Polinesia francese"

        Cldr.PG ->
            "Papua Nuova Guinea"

        Cldr.PH ->
            "Filippine"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polonia"

        Cldr.PM ->
            "Saint-Pierre e Miquelon"

        Cldr.PN ->
            "Isole Pitcairn"

        Cldr.PR ->
            "Portorico"

        Cldr.PS ->
            "Territori palestinesi"

        Cldr.PT ->
            "Portogallo"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Riunione"

        Cldr.RO ->
            "Romania"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Russia"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Arabia Saudita"

        Cldr.SB ->
            "Isole Salomone"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Svezia"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "Sant’Elena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Svalbard e Jan Mayen"

        Cldr.SK ->
            "Slovacchia"

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
            "Sud Sudan"

        Cldr.ST ->
            "São Tomé e Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Siria"

        Cldr.SZ ->
            "eSwatini"

        Cldr.TC ->
            "Isole Turks e Caicos"

        Cldr.TD ->
            "Ciad"

        Cldr.TF ->
            "Terre australi francesi"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailandia"

        Cldr.TJ ->
            "Tagikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor Est"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turchia"

        Cldr.TT ->
            "Trinidad e Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ucraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Isole Minori Esterne degli Stati Uniti"

        Cldr.US ->
            "Stati Uniti"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Città del Vaticano"

        Cldr.VC ->
            "Saint Vincent e Grenadine"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Isole Vergini Britanniche"

        Cldr.VI ->
            "Isole Vergini Americane"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis e Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Sudafrica"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"