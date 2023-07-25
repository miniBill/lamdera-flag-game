module Cldr.Swedish exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Swedish.

    AD Andorra
    AE Förenade Arabemiraten
    AF Afghanistan
    AG Antigua och Barbuda
    AI Anguilla
    AL Albanien
    AM Armenien
    AO Angola
    AQ Antarktis
    AR Argentina
    AS Amerikanska Samoa
    AT Österrike
    AU Australien
    AW Aruba
    AX Åland
    AZ Azerbajdzjan
    BA Bosnien och Hercegovina
    BB Barbados
    BD Bangladesh
    BE Belgien
    BF Burkina Faso
    BG Bulgarien
    BH Bahrain
    BI Burundi
    BJ Benin
    BL S:t Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Karibiska Nederländerna
    BR Brasilien
    BS Bahamas
    BT Bhutan
    BV Bouvetön
    BW Botswana
    BY Vitryssland
    BZ Belize
    CA Kanada
    CC Kokosöarna
    CD Kongo-Kinshasa
    CF Centralafrikanska republiken
    CG Kongo-Brazzaville
    CH Schweiz
    CI Côte d’Ivoire
    CK Cooköarna
    CL Chile
    CM Kamerun
    CN Kina
    CO Colombia
    CR Costa Rica
    CU Kuba
    CV Kap Verde
    CW Curaçao
    CX Julön
    CY Cypern
    CZ Tjeckien
    DE Tyskland
    DJ Djibouti
    DK Danmark
    DM Dominica
    DO Dominikanska republiken
    DZ Algeriet
    EC Ecuador
    EE Estland
    EG Egypten
    EH Västsahara
    ER Eritrea
    ES Spanien
    ET Etiopien
    FI Finland
    FJ Fiji
    FK Falklandsöarna
    FM Mikronesien
    FO Färöarna
    FR Frankrike
    GA Gabon
    GB Storbritannien
    GD Grenada
    GE Georgien
    GF Franska Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Grönland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Ekvatorialguinea
    GR Grekland
    GS Sydgeorgien och Sydsandwichöarna
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hongkong SAR
    HM Heardön och McDonaldöarna
    HN Honduras
    HR Kroatien
    HT Haiti
    HU Ungern
    ID Indonesien
    IE Irland
    IL Israel
    IM Isle of Man
    IN Indien
    IO Brittiska territoriet i Indiska oceanen
    IQ Irak
    IR Iran
    IS Island
    IT Italien
    JE Jersey
    JM Jamaica
    JO Jordanien
    JP Japan
    KE Kenya
    KG Kirgizistan
    KH Kambodja
    KI Kiribati
    KM Komorerna
    KN S:t Kitts och Nevis
    KP Nordkorea
    KR Sydkorea
    KW Kuwait
    KY Caymanöarna
    KZ Kazakstan
    LA Laos
    LB Libanon
    LC S:t Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litauen
    LU Luxemburg
    LV Lettland
    LY Libyen
    MA Marocko
    MC Monaco
    MD Moldavien
    ME Montenegro
    MF Saint-Martin
    MG Madagaskar
    MH Marshallöarna
    MK Nordmakedonien
    ML Mali
    MM Myanmar (Burma)
    MN Mongoliet
    MO Macao SAR
    MP Nordmarianerna
    MQ Martinique
    MR Mauretanien
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldiverna
    MW Malawi
    MX Mexiko
    MY Malaysia
    MZ Moçambique
    NA Namibia
    NC Nya Kaledonien
    NE Niger
    NF Norfolkön
    NG Nigeria
    NI Nicaragua
    NL Nederländerna
    NO Norge
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nya Zeeland
    OM Oman
    PA Panama
    PE Peru
    PF Franska Polynesien
    PG Papua Nya Guinea
    PH Filippinerna
    PK Pakistan
    PL Polen
    PM S:t Pierre och Miquelon
    PN Pitcairnöarna
    PR Puerto Rico
    PS Palestinska territorierna
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Rumänien
    RS Serbien
    RU Ryssland
    RW Rwanda
    SA Saudiarabien
    SB Salomonöarna
    SC Seychellerna
    SD Sudan
    SE Sverige
    SG Singapore
    SH S:t Helena
    SI Slovenien
    SJ Svalbard och Jan Mayen
    SK Slovakien
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Surinam
    SS Sydsudan
    ST São Tomé och Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Syrien
    SZ Eswatini
    TC Turks- och Caicosöarna
    TD Tchad
    TF Franska sydterritorierna
    TG Togo
    TH Thailand
    TJ Tadzjikistan
    TK Tokelauöarna
    TL Östtimor
    TM Turkmenistan
    TN Tunisien
    TO Tonga
    TR Turkiet
    TT Trinidad och Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraina
    UG Uganda
    UM USA:s yttre öar
    US USA
    UY Uruguay
    UZ Uzbekistan
    VA Vatikanstaten
    VC S:t Vincent och Grenadinerna
    VE Venezuela
    VG Brittiska Jungfruöarna
    VI Amerikanska Jungfruöarna
    VN Vietnam
    VU Vanuatu
    WF Wallis- och Futunaöarna
    WS Samoa
    XK Kosovo
    YE Jemen
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
            "Förenade Arabemiraten"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua och Barbuda"

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
            "Amerikanska Samoa"

        Cldr.AT ->
            "Österrike"

        Cldr.AU ->
            "Australien"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Åland"

        Cldr.AZ ->
            "Azerbajdzjan"

        Cldr.BA ->
            "Bosnien och Hercegovina"

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
            "S:t Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Karibiska Nederländerna"

        Cldr.BR ->
            "Brasilien"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvetön"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Vitryssland"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosöarna"

        Cldr.CD ->
            "Kongo-Kinshasa"

        Cldr.CF ->
            "Centralafrikanska republiken"

        Cldr.CG ->
            "Kongo-Brazzaville"

        Cldr.CH ->
            "Schweiz"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Cooköarna"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Kina"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kap Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Julön"

        Cldr.CY ->
            "Cypern"

        Cldr.CZ ->
            "Tjeckien"

        Cldr.DE ->
            "Tyskland"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Danmark"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Dominikanska republiken"

        Cldr.DZ ->
            "Algeriet"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estland"

        Cldr.EG ->
            "Egypten"

        Cldr.EH ->
            "Västsahara"

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
            "Falklandsöarna"

        Cldr.FM ->
            "Mikronesien"

        Cldr.FO ->
            "Färöarna"

        Cldr.FR ->
            "Frankrike"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Storbritannien"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgien"

        Cldr.GF ->
            "Franska Guyana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grönland"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Ekvatorialguinea"

        Cldr.GR ->
            "Grekland"

        Cldr.GS ->
            "Sydgeorgien och Sydsandwichöarna"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkong SAR"

        Cldr.HM ->
            "Heardön och McDonaldöarna"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroatien"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungern"

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
            "Brittiska territoriet i Indiska oceanen"

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
            "Jordanien"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirgizistan"

        Cldr.KH ->
            "Kambodja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komorerna"

        Cldr.KN ->
            "S:t Kitts och Nevis"

        Cldr.KP ->
            "Nordkorea"

        Cldr.KR ->
            "Sydkorea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Caymanöarna"

        Cldr.KZ ->
            "Kazakstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "S:t Lucia"

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
            "Luxemburg"

        Cldr.LV ->
            "Lettland"

        Cldr.LY ->
            "Libyen"

        Cldr.MA ->
            "Marocko"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldavien"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint-Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshallöarna"

        Cldr.MK ->
            "Nordmakedonien"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongoliet"

        Cldr.MO ->
            "Macao SAR"

        Cldr.MP ->
            "Nordmarianerna"

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
            "Maldiverna"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexiko"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Moçambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Nya Kaledonien"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolkön"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Nederländerna"

        Cldr.NO ->
            "Norge"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nya Zeeland"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Franska Polynesien"

        Cldr.PG ->
            "Papua Nya Guinea"

        Cldr.PH ->
            "Filippinerna"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polen"

        Cldr.PM ->
            "S:t Pierre och Miquelon"

        Cldr.PN ->
            "Pitcairnöarna"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestinska territorierna"

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
            "Rumänien"

        Cldr.RS ->
            "Serbien"

        Cldr.RU ->
            "Ryssland"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudiarabien"

        Cldr.SB ->
            "Salomonöarna"

        Cldr.SC ->
            "Seychellerna"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Sverige"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "S:t Helena"

        Cldr.SI ->
            "Slovenien"

        Cldr.SJ ->
            "Svalbard och Jan Mayen"

        Cldr.SK ->
            "Slovakien"

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
            "São Tomé och Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syrien"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks- och Caicosöarna"

        Cldr.TD ->
            "Tchad"

        Cldr.TF ->
            "Franska sydterritorierna"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailand"

        Cldr.TJ ->
            "Tadzjikistan"

        Cldr.TK ->
            "Tokelauöarna"

        Cldr.TL ->
            "Östtimor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisien"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkiet"

        Cldr.TT ->
            "Trinidad och Tobago"

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
            "USA:s yttre öar"

        Cldr.US ->
            "USA"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikanstaten"

        Cldr.VC ->
            "S:t Vincent och Grenadinerna"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Brittiska Jungfruöarna"

        Cldr.VI ->
            "Amerikanska Jungfruöarna"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis- och Futunaöarna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Sydafrika"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"