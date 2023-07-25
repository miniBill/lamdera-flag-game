module Cldr.Danish exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Danish.

    AD Andorra
    AE De Forenede Arabiske Emirater
    AF Afghanistan
    AG Antigua og Barbuda
    AI Anguilla
    AL Albanien
    AM Armenien
    AO Angola
    AQ Antarktis
    AR Argentina
    AS Amerikansk Samoa
    AT Østrig
    AU Australien
    AW Aruba
    AX Åland
    AZ Aserbajdsjan
    BA Bosnien-Hercegovina
    BB Barbados
    BD Bangladesh
    BE Belgien
    BF Burkina Faso
    BG Bulgarien
    BH Bahrain
    BI Burundi
    BJ Benin
    BL Saint Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ De tidligere Nederlandske Antiller
    BR Brasilien
    BS Bahamas
    BT Bhutan
    BV Bouvetøen
    BW Botswana
    BY Belarus
    BZ Belize
    CA Canada
    CC Cocosøerne
    CD Congo-Kinshasa
    CF Den Centralafrikanske Republik
    CG Congo-Brazzaville
    CH Schweiz
    CI Elfenbenskysten
    CK Cookøerne
    CL Chile
    CM Cameroun
    CN Kina
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Kap Verde
    CW Curaçao
    CX Juleøen
    CY Cypern
    CZ Tjekkiet
    DE Tyskland
    DJ Djibouti
    DK Danmark
    DM Dominica
    DO Den Dominikanske Republik
    DZ Algeriet
    EC Ecuador
    EE Estland
    EG Egypten
    EH Vestsahara
    ER Eritrea
    ES Spanien
    ET Etiopien
    FI Finland
    FJ Fiji
    FK Falklandsøerne
    FM Mikronesien
    FO Færøerne
    FR Frankrig
    GA Gabon
    GB Storbritannien
    GD Grenada
    GE Georgien
    GF Fransk Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Grønland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Ækvatorialguinea
    GR Grækenland
    GS South Georgia og De Sydlige Sandwichøer
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK SAR Hongkong
    HM Heard Island og McDonald Islands
    HN Honduras
    HR Kroatien
    HT Haiti
    HU Ungarn
    ID Indonesien
    IE Irland
    IL Israel
    IM Isle of Man
    IN Indien
    IO Det Britiske Territorium i Det Indiske Ocean
    IQ Irak
    IR Iran
    IS Island
    IT Italien
    JE Jersey
    JM Jamaica
    JO Jordan
    JP Japan
    KE Kenya
    KG Kirgisistan
    KH Cambodja
    KI Kiribati
    KM Comorerne
    KN Saint Kitts og Nevis
    KP Nordkorea
    KR Sydkorea
    KW Kuwait
    KY Caymanøerne
    KZ Kasakhstan
    LA Laos
    LB Libanon
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litauen
    LU Luxembourg
    LV Letland
    LY Libyen
    MA Marokko
    MC Monaco
    MD Moldova
    ME Montenegro
    MF Saint Martin
    MG Madagaskar
    MH Marshalløerne
    MK Nordmakedonien
    ML Mali
    MM Myanmar (Burma)
    MN Mongoliet
    MO SAR Macao
    MP Nordmarianerne
    MQ Martinique
    MR Mauretanien
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldiverne
    MW Malawi
    MX Mexico
    MY Malaysia
    MZ Mozambique
    NA Namibia
    NC Ny Kaledonien
    NE Niger
    NF Norfolk Island
    NG Nigeria
    NI Nicaragua
    NL Nederlandene
    NO Norge
    NP Nepal
    NR Nauru
    NU Niue
    NZ New Zealand
    OM Oman
    PA Panama
    PE Peru
    PF Fransk Polynesien
    PG Papua Ny Guinea
    PH Filippinerne
    PK Pakistan
    PL Polen
    PM Saint Pierre og Miquelon
    PN Pitcairn
    PR Puerto Rico
    PS De palæstinensiske områder
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Rumænien
    RS Serbien
    RU Rusland
    RW Rwanda
    SA Saudi-Arabien
    SB Salomonøerne
    SC Seychellerne
    SD Sudan
    SE Sverige
    SG Singapore
    SH St. Helena
    SI Slovenien
    SJ Svalbard og Jan Mayen
    SK Slovakiet
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Surinam
    SS Sydsudan
    ST São Tomé og Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Syrien
    SZ Eswatini
    TC Turks- og Caicosøerne
    TD Tchad
    TF De Franske Besiddelser i Det Sydlige Indiske Ocean og Antarktis
    TG Togo
    TH Thailand
    TJ Tadsjikistan
    TK Tokelau
    TL Timor-Leste
    TM Turkmenistan
    TN Tunesien
    TO Tonga
    TR Tyrkiet
    TT Trinidad og Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraine
    UG Uganda
    UM Amerikanske oversøiske øer
    US USA
    UY Uruguay
    UZ Usbekistan
    VA Vatikanstaten
    VC Saint Vincent og Grenadinerne
    VE Venezuela
    VG De Britiske Jomfruøer
    VI De Amerikanske Jomfruøer
    VN Vietnam
    VU Vanuatu
    WF Wallis og Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA Sydafrika
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "De Forenede Arabiske Emirater"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua og Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albanien"

        Cldr.AM ->
            "Armenien"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktis"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Amerikansk Samoa"

        Cldr.AT ->
            "Østrig"

        Cldr.AU ->
            "Australien"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Åland"

        Cldr.AZ ->
            "Aserbajdsjan"

        Cldr.BA ->
            "Bosnien-Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgien"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgarien"

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
            "De tidligere Nederlandske Antiller"

        Cldr.BR ->
            "Brasilien"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvetøen"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Cocosøerne"

        Cldr.CD ->
            "Congo-Kinshasa"

        Cldr.CF ->
            "Den Centralafrikanske Republik"

        Cldr.CG ->
            "Congo-Brazzaville"

        Cldr.CH ->
            "Schweiz"

        Cldr.CI ->
            "Elfenbenskysten"

        Cldr.CK ->
            "Cookøerne"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Cameroun"

        Cldr.CN ->
            "Kina"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Kap Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Juleøen"

        Cldr.CY ->
            "Cypern"

        Cldr.CZ ->
            "Tjekkiet"

        Cldr.DE ->
            "Tyskland"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Danmark"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Den Dominikanske Republik"

        Cldr.DZ ->
            "Algeriet"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estland"

        Cldr.EG ->
            "Egypten"

        Cldr.EH ->
            "Vestsahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spanien"

        Cldr.ET ->
            "Etiopien"

        Cldr.FI ->
            "Finland"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Falklandsøerne"

        Cldr.FM ->
            "Mikronesien"

        Cldr.FO ->
            "Færøerne"

        Cldr.FR ->
            "Frankrig"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Storbritannien"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgien"

        Cldr.GF ->
            "Fransk Guyana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grønland"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Ækvatorialguinea"

        Cldr.GR ->
            "Grækenland"

        Cldr.GS ->
            "South Georgia og De Sydlige Sandwichøer"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "SAR Hongkong"

        Cldr.HM ->
            "Heard Island og McDonald Islands"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroatien"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungarn"

        Cldr.ID ->
            "Indonesien"

        Cldr.IE ->
            "Irland"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Isle of Man"

        Cldr.IN ->
            "Indien"

        Cldr.IO ->
            "Det Britiske Territorium i Det Indiske Ocean"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Island"

        Cldr.IT ->
            "Italien"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordan"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirgisistan"

        Cldr.KH ->
            "Cambodja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comorerne"

        Cldr.KN ->
            "Saint Kitts og Nevis"

        Cldr.KP ->
            "Nordkorea"

        Cldr.KR ->
            "Sydkorea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Caymanøerne"

        Cldr.KZ ->
            "Kasakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

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
            "Litauen"

        Cldr.LU ->
            "Luxembourg"

        Cldr.LV ->
            "Letland"

        Cldr.LY ->
            "Libyen"

        Cldr.MA ->
            "Marokko"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshalløerne"

        Cldr.MK ->
            "Nordmakedonien"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongoliet"

        Cldr.MO ->
            "SAR Macao"

        Cldr.MP ->
            "Nordmarianerne"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauretanien"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldiverne"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexico"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Ny Kaledonien"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk Island"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Nederlandene"

        Cldr.NO ->
            "Norge"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "New Zealand"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Fransk Polynesien"

        Cldr.PG ->
            "Papua Ny Guinea"

        Cldr.PH ->
            "Filippinerne"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polen"

        Cldr.PM ->
            "Saint Pierre og Miquelon"

        Cldr.PN ->
            "Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "De palæstinensiske områder"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Rumænien"

        Cldr.RS ->
            "Serbien"

        Cldr.RU ->
            "Rusland"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudi-Arabien"

        Cldr.SB ->
            "Salomonøerne"

        Cldr.SC ->
            "Seychellerne"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Sverige"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "St. Helena"

        Cldr.SI ->
            "Slovenien"

        Cldr.SJ ->
            "Svalbard og Jan Mayen"

        Cldr.SK ->
            "Slovakiet"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Sydsudan"

        Cldr.ST ->
            "São Tomé og Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syrien"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks- og Caicosøerne"

        Cldr.TD ->
            "Tchad"

        Cldr.TF ->
            "De Franske Besiddelser i Det Sydlige Indiske Ocean og Antarktis"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailand"

        Cldr.TJ ->
            "Tadsjikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunesien"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Tyrkiet"

        Cldr.TT ->
            "Trinidad og Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ukraine"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Amerikanske oversøiske øer"

        Cldr.US ->
            "USA"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Usbekistan"

        Cldr.VA ->
            "Vatikanstaten"

        Cldr.VC ->
            "Saint Vincent og Grenadinerne"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "De Britiske Jomfruøer"

        Cldr.VI ->
            "De Amerikanske Jomfruøer"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis og Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Sydafrika"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"