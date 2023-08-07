module Cldr.Romanian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Romanian.

    AD Andorra
    AE Emiratele Arabe Unite
    AF Afganistan
    AG Antigua și Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antarctica
    AR Argentina
    AS Samoa Americană
    AT Austria
    AU Australia
    AW Aruba
    AX Insulele Åland
    AZ Azerbaidjan
    BA Bosnia și Herțegovina
    BB Barbados
    BD Bangladesh
    BE Belgia
    BF Burkina Faso
    BG Bulgaria
    BH Bahrain
    BI Burundi
    BJ Benin
    BL Saint-Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Insulele Caraibe Olandeze
    BR Brazilia
    BS Bahamas
    BT Bhutan
    BV Insula Bouvet
    BW Botswana
    BY Belarus
    BZ Belize
    CA Canada
    CC Insulele Cocos (Keeling)
    CD Congo (Republica Democrată Congo)
    CF Republica Centrafricană
    CG Congo (Republica)
    CH Elveția
    CI Côte d’Ivoire
    CK Insulele Cook
    CL Chile
    CM Camerun
    CN China
    CO Columbia
    CR Costa Rica
    CU Cuba
    CV Capul Verde
    CW Curaçao
    CX Insula Christmas
    CY Cipru
    CZ Republica Cehă
    DE Germania
    DJ Djibouti
    DK Danemarca
    DM Dominica
    DO Republica Dominicană
    DZ Algeria
    EC Ecuador
    EE Estonia
    EG Egipt
    EH Sahara Occidentală
    ER Eritreea
    ES Spania
    ET Etiopia
    FI Finlanda
    FJ Fiji
    FK Insulele Falkland
    FM Micronezia
    FO Insulele Feroe
    FR Franța
    GA Gabon
    GB Regatul Unit
    GD Grenada
    GE Georgia
    GF Guyana Franceză
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Groenlanda
    GM Gambia
    GN Guineea
    GP Guadelupa
    GQ Guineea Ecuatorială
    GR Grecia
    GS Georgia de Sud și Insulele Sandwich de Sud
    GT Guatemala
    GU Guam
    GW Guineea-Bissau
    GY Guyana
    HK Hong Kong
    HM Insula Heard și Insulele McDonald
    HN Honduras
    HR Croația
    HT Haiti
    HU Ungaria
    ID Indonezia
    IE Irlanda
    IL Israel
    IM Insula Man
    IN India
    IO Teritoriul Britanic din Oceanul Indian
    IQ Irak
    IR Iran
    IS Islanda
    IT Italia
    JE Jersey
    JM Jamaica
    JO Iordania
    JP Japonia
    KE Kenya
    KG Kârgâzstan
    KH Cambodgia
    KI Kiribati
    KM Comore
    KN Saint Kitts și Nevis
    KP Coreea de Nord
    KR Coreea de Sud
    KW Kuweit
    KY Insulele Cayman
    KZ Kazahstan
    LA Laos
    LB Liban
    LC Sfânta Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Lituania
    LU Luxemburg
    LV Letonia
    LY Libia
    MA Maroc
    MC Monaco
    MD Republica Moldova
    ME Muntenegru
    MF Sfântul Martin
    MG Madagascar
    MH Insulele Marshall
    MK Macedonia de Nord
    ML Mali
    MM Myanmar (Birmania)
    MN Mongolia
    MO Macao
    MP Insulele Mariane de Nord
    MQ Martinica
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldive
    MW Malawi
    MX Mexic
    MY Malaysia
    MZ Mozambic
    NA Namibia
    NC Noua Caledonie
    NE Niger
    NF Insula Norfolk
    NG Nigeria
    NI Nicaragua
    NL Țările de Jos
    NO Norvegia
    NP Nepal
    NR Nauru
    NU Niue
    NZ Noua Zeelandă
    OM Oman
    PA Panama
    PE Peru
    PF Polinezia Franceză
    PG Papua-Noua Guinee
    PH Filipine
    PK Pakistan
    PL Polonia
    PM Saint-Pierre și Miquelon
    PN Insulele Pitcairn
    PR Puerto Rico
    PS Palestina
    PT Portugalia
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO România
    RS Serbia
    RU Rusia
    RW Rwanda
    SA Arabia Saudită
    SB Insulele Solomon
    SC Seychelles
    SD Sudan
    SE Suedia
    SG Singapore
    SH Sfânta Elena
    SI Slovenia
    SJ Svalbard și Jan Mayen
    SK Slovacia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Suriname
    SS Sudanul de Sud
    ST São Tomé și Príncipe
    SV El Salvador
    SX Sint-Maarten
    SY Siria
    SZ Eswatini
    TC Insulele Turks și Caicos
    TD Ciad
    TF Teritoriile Australe și Antarctice Franceze
    TG Togo
    TH Thailanda
    TJ Tadjikistan
    TK Tokelau
    TL Timorul de Est
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Turcia
    TT Trinidad și Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ucraina
    UG Uganda
    UM Insulele Îndepărtate ale S.U.A.
    US Statele Unite ale Americii
    UY Uruguay
    UZ Uzbekistan
    VA Statul Cetății Vaticanului
    VC Saint Vincent și Grenadinele
    VE Venezuela
    VG Insulele Virgine Britanice
    VI Insulele Virgine Americane
    VN Vietnam
    VU Vanuatu
    WF Wallis și Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA Africa de Sud
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Emiratele Arabe Unite"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua și Barbuda"

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
            "Argentina"

        Cldr.AS ->
            "Samoa Americană"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Insulele Åland"

        Cldr.AZ ->
            "Azerbaidjan"

        Cldr.BA ->
            "Bosnia și Herțegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgia"

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
            "Saint-Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Insulele Caraibe Olandeze"

        Cldr.BR ->
            "Brazilia"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Insula Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Insulele Cocos (Keeling)"

        Cldr.CD ->
            "Congo (Republica Democrată Congo)"

        Cldr.CF ->
            "Republica Centrafricană"

        Cldr.CG ->
            "Congo (Republica)"

        Cldr.CH ->
            "Elveția"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Insulele Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Camerun"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Columbia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Capul Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Insula Christmas"

        Cldr.CY ->
            "Cipru"

        Cldr.CZ ->
            "Republica Cehă"

        Cldr.DE ->
            "Germania"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Danemarca"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Republica Dominicană"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egipt"

        Cldr.EH ->
            "Sahara Occidentală"

        Cldr.ER ->
            "Eritreea"

        Cldr.ES ->
            "Spania"

        Cldr.ET ->
            "Etiopia"

        Cldr.FI ->
            "Finlanda"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Insulele Falkland"

        Cldr.FM ->
            "Micronezia"

        Cldr.FO ->
            "Insulele Feroe"

        Cldr.FR ->
            "Franța"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Regatul Unit"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guyana Franceză"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenlanda"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guineea"

        Cldr.GP ->
            "Guadelupa"

        Cldr.GQ ->
            "Guineea Ecuatorială"

        Cldr.GR ->
            "Grecia"

        Cldr.GS ->
            "Georgia de Sud și Insulele Sandwich de Sud"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guineea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Insula Heard și Insulele McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croația"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungaria"

        Cldr.ID ->
            "Indonezia"

        Cldr.IE ->
            "Irlanda"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Insula Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Teritoriul Britanic din Oceanul Indian"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islanda"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Iordania"

        Cldr.JP ->
            "Japonia"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kârgâzstan"

        Cldr.KH ->
            "Cambodgia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comore"

        Cldr.KN ->
            "Saint Kitts și Nevis"

        Cldr.KP ->
            "Coreea de Nord"

        Cldr.KR ->
            "Coreea de Sud"

        Cldr.KW ->
            "Kuweit"

        Cldr.KY ->
            "Insulele Cayman"

        Cldr.KZ ->
            "Kazahstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Liban"

        Cldr.LC ->
            "Sfânta Lucia"

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
            "Luxemburg"

        Cldr.LV ->
            "Letonia"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Maroc"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Republica Moldova"

        Cldr.ME ->
            "Muntenegru"

        Cldr.MF ->
            "Sfântul Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Insulele Marshall"

        Cldr.MK ->
            "Macedonia de Nord"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birmania)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macao"

        Cldr.MP ->
            "Insulele Mariane de Nord"

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
            "Mexic"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambic"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Noua Caledonie"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Insula Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Țările de Jos"

        Cldr.NO ->
            "Norvegia"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Noua Zeelandă"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polinezia Franceză"

        Cldr.PG ->
            "Papua-Noua Guinee"

        Cldr.PH ->
            "Filipine"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polonia"

        Cldr.PM ->
            "Saint-Pierre și Miquelon"

        Cldr.PN ->
            "Insulele Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestina"

        Cldr.PT ->
            "Portugalia"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "România"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rusia"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Arabia Saudită"

        Cldr.SB ->
            "Insulele Solomon"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Suedia"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "Sfânta Elena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Svalbard și Jan Mayen"

        Cldr.SK ->
            "Slovacia"

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
            "Sudanul de Sud"

        Cldr.ST ->
            "São Tomé și Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint-Maarten"

        Cldr.SY ->
            "Siria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Insulele Turks și Caicos"

        Cldr.TD ->
            "Ciad"

        Cldr.TF ->
            "Teritoriile Australe și Antarctice Franceze"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailanda"

        Cldr.TJ ->
            "Tadjikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timorul de Est"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turcia"

        Cldr.TT ->
            "Trinidad și Tobago"

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
            "Insulele Îndepărtate ale S.U.A."

        Cldr.US ->
            "Statele Unite ale Americii"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Statul Cetății Vaticanului"

        Cldr.VC ->
            "Saint Vincent și Grenadinele"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Insulele Virgine Britanice"

        Cldr.VI ->
            "Insulele Virgine Americane"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis și Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Africa de Sud"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"