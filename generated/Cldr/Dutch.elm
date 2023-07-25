module Cldr.Dutch exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Dutch.

    AD Andorra
    AE Verenigde Arabische Emiraten
    AF Afghanistan
    AG Antigua en Barbuda
    AI Anguilla
    AL Albanië
    AM Armenië
    AO Angola
    AQ Antarctica
    AR Argentinië
    AS Amerikaans-Samoa
    AT Oostenrijk
    AU Australië
    AW Aruba
    AX Åland
    AZ Azerbeidzjan
    BA Bosnië en Herzegovina
    BB Barbados
    BD Bangladesh
    BE België
    BF Burkina Faso
    BG Bulgarije
    BH Bahrein
    BI Burundi
    BJ Benin
    BL Saint-Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Caribisch Nederland
    BR Brazilië
    BS Bahama’s
    BT Bhutan
    BV Bouveteiland
    BW Botswana
    BY Belarus
    BZ Belize
    CA Canada
    CC Cocoseilanden
    CD Congo-Kinshasa
    CF Centraal-Afrikaanse Republiek
    CG Congo-Brazzaville
    CH Zwitserland
    CI Ivoorkust
    CK Cookeilanden
    CL Chili
    CM Kameroen
    CN China
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Kaapverdië
    CW Curaçao
    CX Christmaseiland
    CY Cyprus
    CZ Tsjechië
    DE Duitsland
    DJ Djibouti
    DK Denemarken
    DM Dominica
    DO Dominicaanse Republiek
    DZ Algerije
    EC Ecuador
    EE Estland
    EG Egypte
    EH Westelijke Sahara
    ER Eritrea
    ES Spanje
    ET Ethiopië
    FI Finland
    FJ Fiji
    FK Falklandeilanden
    FM Micronesia
    FO Faeröer
    FR Frankrijk
    GA Gabon
    GB Verenigd Koninkrijk
    GD Grenada
    GE Georgië
    GF Frans-Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Groenland
    GM Gambia
    GN Guinee
    GP Guadeloupe
    GQ Equatoriaal-Guinea
    GR Griekenland
    GS Zuid-Georgia en Zuidelijke Sandwicheilanden
    GT Guatemala
    GU Guam
    GW Guinee-Bissau
    GY Guyana
    HK Hongkong SAR van China
    HM Heard en McDonaldeilanden
    HN Honduras
    HR Kroatië
    HT Haïti
    HU Hongarije
    ID Indonesië
    IE Ierland
    IL Israël
    IM Isle of Man
    IN India
    IO Brits Indische Oceaanterritorium
    IQ Irak
    IR Iran
    IS IJsland
    IT Italië
    JE Jersey
    JM Jamaica
    JO Jordanië
    JP Japan
    KE Kenia
    KG Kirgizië
    KH Cambodja
    KI Kiribati
    KM Comoren
    KN Saint Kitts en Nevis
    KP Noord-Korea
    KR Zuid-Korea
    KW Koeweit
    KY Kaaimaneilanden
    KZ Kazachstan
    LA Laos
    LB Libanon
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litouwen
    LU Luxemburg
    LV Letland
    LY Libië
    MA Marokko
    MC Monaco
    MD Moldavië
    ME Montenegro
    MF Saint-Martin
    MG Madagaskar
    MH Marshalleilanden
    MK Noord-Macedonië
    ML Mali
    MM Myanmar (Birma)
    MN Mongolië
    MO Macau SAR van China
    MP Noordelijke Marianen
    MQ Martinique
    MR Mauritanië
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldiven
    MW Malawi
    MX Mexico
    MY Maleisië
    MZ Mozambique
    NA Namibië
    NC Nieuw-Caledonië
    NE Niger
    NF Norfolk
    NG Nigeria
    NI Nicaragua
    NL Nederland
    NO Noorwegen
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nieuw-Zeeland
    OM Oman
    PA Panama
    PE Peru
    PF Frans-Polynesië
    PG Papoea-Nieuw-Guinea
    PH Filipijnen
    PK Pakistan
    PL Polen
    PM Saint-Pierre en Miquelon
    PN Pitcairneilanden
    PR Puerto Rico
    PS Palestijnse gebieden
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Roemenië
    RS Servië
    RU Rusland
    RW Rwanda
    SA Saoedi-Arabië
    SB Salomonseilanden
    SC Seychellen
    SD Soedan
    SE Zweden
    SG Singapore
    SH Sint-Helena
    SI Slovenië
    SJ Spitsbergen en Jan Mayen
    SK Slowakije
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalië
    SR Suriname
    SS Zuid-Soedan
    ST Sao Tomé en Principe
    SV El Salvador
    SX Sint-Maarten
    SY Syrië
    SZ Eswatini
    TC Turks- en Caicoseilanden
    TD Tsjaad
    TF Franse Gebieden in de zuidelijke Indische Oceaan
    TG Togo
    TH Thailand
    TJ Tadzjikistan
    TK Tokelau
    TL Oost-Timor
    TM Turkmenistan
    TN Tunesië
    TO Tonga
    TR Turkije
    TT Trinidad en Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Oekraïne
    UG Oeganda
    UM Kleine afgelegen eilanden van de Verenigde Staten
    US Verenigde Staten
    UY Uruguay
    UZ Oezbekistan
    VA Vaticaanstad
    VC Saint Vincent en de Grenadines
    VE Venezuela
    VG Britse Maagdeneilanden
    VI Amerikaanse Maagdeneilanden
    VN Vietnam
    VU Vanuatu
    WF Wallis en Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Mayotte
    ZA Zuid-Afrika
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Verenigde Arabische Emiraten"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua en Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albanië"

        Cldr.AM ->
            "Armenië"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarctica"

        Cldr.AR ->
            "Argentinië"

        Cldr.AS ->
            "Amerikaans-Samoa"

        Cldr.AT ->
            "Oostenrijk"

        Cldr.AU ->
            "Australië"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Åland"

        Cldr.AZ ->
            "Azerbeidzjan"

        Cldr.BA ->
            "Bosnië en Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "België"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgarije"

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
            "Caribisch Nederland"

        Cldr.BR ->
            "Brazilië"

        Cldr.BS ->
            "Bahama’s"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouveteiland"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Cocoseilanden"

        Cldr.CD ->
            "Congo-Kinshasa"

        Cldr.CF ->
            "Centraal-Afrikaanse Republiek"

        Cldr.CG ->
            "Congo-Brazzaville"

        Cldr.CH ->
            "Zwitserland"

        Cldr.CI ->
            "Ivoorkust"

        Cldr.CK ->
            "Cookeilanden"

        Cldr.CL ->
            "Chili"

        Cldr.CM ->
            "Kameroen"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Kaapverdië"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Christmaseiland"

        Cldr.CY ->
            "Cyprus"

        Cldr.CZ ->
            "Tsjechië"

        Cldr.DE ->
            "Duitsland"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Denemarken"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Dominicaanse Republiek"

        Cldr.DZ ->
            "Algerije"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estland"

        Cldr.EG ->
            "Egypte"

        Cldr.EH ->
            "Westelijke Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spanje"

        Cldr.ET ->
            "Ethiopië"

        Cldr.FI ->
            "Finland"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Falklandeilanden"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Faeröer"

        Cldr.FR ->
            "Frankrijk"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Verenigd Koninkrijk"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgië"

        Cldr.GF ->
            "Frans-Guyana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenland"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinee"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Equatoriaal-Guinea"

        Cldr.GR ->
            "Griekenland"

        Cldr.GS ->
            "Zuid-Georgia en Zuidelijke Sandwicheilanden"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinee-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkong SAR van China"

        Cldr.HM ->
            "Heard en McDonaldeilanden"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroatië"

        Cldr.HT ->
            "Haïti"

        Cldr.HU ->
            "Hongarije"

        Cldr.ID ->
            "Indonesië"

        Cldr.IE ->
            "Ierland"

        Cldr.IL ->
            "Israël"

        Cldr.IM ->
            "Isle of Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Brits Indische Oceaanterritorium"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "IJsland"

        Cldr.IT ->
            "Italië"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordanië"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenia"

        Cldr.KG ->
            "Kirgizië"

        Cldr.KH ->
            "Cambodja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comoren"

        Cldr.KN ->
            "Saint Kitts en Nevis"

        Cldr.KP ->
            "Noord-Korea"

        Cldr.KR ->
            "Zuid-Korea"

        Cldr.KW ->
            "Koeweit"

        Cldr.KY ->
            "Kaaimaneilanden"

        Cldr.KZ ->
            "Kazachstan"

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
            "Litouwen"

        Cldr.LU ->
            "Luxemburg"

        Cldr.LV ->
            "Letland"

        Cldr.LY ->
            "Libië"

        Cldr.MA ->
            "Marokko"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldavië"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint-Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshalleilanden"

        Cldr.MK ->
            "Noord-Macedonië"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birma)"

        Cldr.MN ->
            "Mongolië"

        Cldr.MO ->
            "Macau SAR van China"

        Cldr.MP ->
            "Noordelijke Marianen"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauritanië"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldiven"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexico"

        Cldr.MY ->
            "Maleisië"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibië"

        Cldr.NC ->
            "Nieuw-Caledonië"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Nederland"

        Cldr.NO ->
            "Noorwegen"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nieuw-Zeeland"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Frans-Polynesië"

        Cldr.PG ->
            "Papoea-Nieuw-Guinea"

        Cldr.PH ->
            "Filipijnen"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polen"

        Cldr.PM ->
            "Saint-Pierre en Miquelon"

        Cldr.PN ->
            "Pitcairneilanden"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestijnse gebieden"

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
            "Roemenië"

        Cldr.RS ->
            "Servië"

        Cldr.RU ->
            "Rusland"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saoedi-Arabië"

        Cldr.SB ->
            "Salomonseilanden"

        Cldr.SC ->
            "Seychellen"

        Cldr.SD ->
            "Soedan"

        Cldr.SE ->
            "Zweden"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "Sint-Helena"

        Cldr.SI ->
            "Slovenië"

        Cldr.SJ ->
            "Spitsbergen en Jan Mayen"

        Cldr.SK ->
            "Slowakije"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somalië"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Zuid-Soedan"

        Cldr.ST ->
            "Sao Tomé en Principe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint-Maarten"

        Cldr.SY ->
            "Syrië"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks- en Caicoseilanden"

        Cldr.TD ->
            "Tsjaad"

        Cldr.TF ->
            "Franse Gebieden in de zuidelijke Indische Oceaan"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailand"

        Cldr.TJ ->
            "Tadzjikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Oost-Timor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunesië"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkije"

        Cldr.TT ->
            "Trinidad en Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Oekraïne"

        Cldr.UG ->
            "Oeganda"

        Cldr.UM ->
            "Kleine afgelegen eilanden van de Verenigde Staten"

        Cldr.US ->
            "Verenigde Staten"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Oezbekistan"

        Cldr.VA ->
            "Vaticaanstad"

        Cldr.VC ->
            "Saint Vincent en de Grenadines"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Britse Maagdeneilanden"

        Cldr.VI ->
            "Amerikaanse Maagdeneilanden"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis en Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Zuid-Afrika"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"