module Cldr.Norwegian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Norwegian.

    AD Andorra
    AE De forente arabiske emirater
    AF Afghanistan
    AG Antigua og Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antarktis
    AR Argentina
    AS Amerikansk Samoa
    AT Østerrike
    AU Australia
    AW Aruba
    AX Åland
    AZ Aserbajdsjan
    BA Bosnia-Hercegovina
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
    BQ Karibisk Nederland
    BR Brasil
    BS Bahamas
    BT Bhutan
    BV Bouvetøya
    BW Botswana
    BY Hviterussland
    BZ Belize
    CA Canada
    CC Kokosøyene
    CD Den demokratiske republikken Kongo
    CF Den sentralafrikanske republikk
    CG Republikken Kongo
    CH Sveits
    CI Elfenbenskysten
    CK Cookøyene
    CL Chile
    CM Kamerun
    CN Kina
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Kapp Verde
    CW Curaçao
    CX Christmasøya
    CY Kypros
    CZ Den tsjekkiske republikk
    DE Tyskland
    DJ Djibouti
    DK Danmark
    DM Dominica
    DO Den dominikanske republikk
    DZ Algerie
    EC Ecuador
    EE Estland
    EG Egypt
    EH Vest-Sahara
    ER Eritrea
    ES Spania
    ET Etiopia
    FI Finland
    FJ Fiji
    FK Falklandsøyene
    FM Mikronesiaføderasjonen
    FO Færøyene
    FR Frankrike
    GA Gabon
    GB Storbritannia
    GD Grenada
    GE Georgia
    GF Fransk Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Grønland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Ekvatorial-Guinea
    GR Hellas
    GS Sør-Georgia og Sør-Sandwichøyene
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hongkong
    HM Heard- og McDonaldøyene
    HN Honduras
    HR Kroatia
    HT Haiti
    HU Ungarn
    ID Indonesia
    IE Irland
    IL Israel
    IM Man
    IN India
    IO Det britiske territoriet i Indiahavet
    IQ Irak
    IR Iran
    IS Island
    IT Italia
    JE Jersey
    JM Jamaica
    JO Jordan
    JP Japan
    KE Kenya
    KG Kirgisistan
    KH Kambodsja
    KI Kiribati
    KM Komorene
    KN Saint Kitts og Nevis
    KP Nord-Korea
    KR Sør-Korea
    KW Kuwait
    KY Caymanøyene
    KZ Kasakhstan
    LA Laos
    LB Libanon
    LC St. Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litauen
    LU Luxemburg
    LV Latvia
    LY Libya
    MA Marokko
    MC Monaco
    MD Moldova
    ME Montenegro
    MF Saint-Martin
    MG Madagaskar
    MH Marshalløyene
    MK Nord-Makedonia
    ML Mali
    MM Myanmar (Burma)
    MN Mongolia
    MO Macao
    MP Nord-Marianene
    MQ Martinique
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldivene
    MW Malawi
    MX Mexico
    MY Malaysia
    MZ Mosambik
    NA Namibia
    NC Ny-Caledonia
    NE Niger
    NF Norfolkøya
    NG Nigeria
    NI Nicaragua
    NL Nederland
    NO Norge
    NP Nepal
    NR Nauru
    NU Niue
    NZ New Zealand
    OM Oman
    PA Panama
    PE Peru
    PF Fransk Polynesia
    PG Papua Ny-Guinea
    PH Filippinene
    PK Pakistan
    PL Polen
    PM Saint-Pierre-et-Miquelon
    PN Pitcairnøyene
    PR Puerto Rico
    PS Palestina
    PT Portugal
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Romania
    RS Serbia
    RU Russland
    RW Rwanda
    SA Saudi-Arabia
    SB Salomonøyene
    SC Seychellene
    SD Sudan
    SE Sverige
    SG Singapore
    SH St. Helena
    SI Slovenia
    SJ Svalbard og Jan Mayen
    SK Slovakia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Surinam
    SS Sør-Sudan
    ST São Tomé og Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Syria
    SZ Eswatini
    TC Turks- og Caicosøyene
    TD Tsjad
    TF De franske sørterritorier
    TG Togo
    TH Thailand
    TJ Tadsjikistan
    TK Tokelau
    TL Timor-Leste
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Tyrkia
    TT Trinidad og Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzania
    UA Ukraina
    UG Uganda
    UM USAs ytre øyer
    US USA
    UY Uruguay
    UZ Usbekistan
    VA Vatikanstaten
    VC St. Vincent og Grenadinene
    VE Venezuela
    VG De britiske jomfruøyene
    VI De amerikanske jomfruøyene
    VN Vietnam
    VU Vanuatu
    WF Wallis og Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Mayotte
    ZA Sør-Afrika
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "De forente arabiske emirater"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua og Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktis"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Amerikansk Samoa"

        Cldr.AT ->
            "Østerrike"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Åland"

        Cldr.AZ ->
            "Aserbajdsjan"

        Cldr.BA ->
            "Bosnia-Hercegovina"

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
            "Karibisk Nederland"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvetøya"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Hviterussland"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Kokosøyene"

        Cldr.CD ->
            "Den demokratiske republikken Kongo"

        Cldr.CF ->
            "Den sentralafrikanske republikk"

        Cldr.CG ->
            "Republikken Kongo"

        Cldr.CH ->
            "Sveits"

        Cldr.CI ->
            "Elfenbenskysten"

        Cldr.CK ->
            "Cookøyene"

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
            "Cuba"

        Cldr.CV ->
            "Kapp Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Christmasøya"

        Cldr.CY ->
            "Kypros"

        Cldr.CZ ->
            "Den tsjekkiske republikk"

        Cldr.DE ->
            "Tyskland"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Danmark"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Den dominikanske republikk"

        Cldr.DZ ->
            "Algerie"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estland"

        Cldr.EG ->
            "Egypt"

        Cldr.EH ->
            "Vest-Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spania"

        Cldr.ET ->
            "Etiopia"

        Cldr.FI ->
            "Finland"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Falklandsøyene"

        Cldr.FM ->
            "Mikronesiaføderasjonen"

        Cldr.FO ->
            "Færøyene"

        Cldr.FR ->
            "Frankrike"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Storbritannia"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

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
            "Ekvatorial-Guinea"

        Cldr.GR ->
            "Hellas"

        Cldr.GS ->
            "Sør-Georgia og Sør-Sandwichøyene"

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
            "Heard- og McDonaldøyene"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroatia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungarn"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Irland"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Det britiske territoriet i Indiahavet"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Island"

        Cldr.IT ->
            "Italia"

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
            "Kambodsja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komorene"

        Cldr.KN ->
            "Saint Kitts og Nevis"

        Cldr.KP ->
            "Nord-Korea"

        Cldr.KR ->
            "Sør-Korea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Caymanøyene"

        Cldr.KZ ->
            "Kasakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "St. Lucia"

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
            "Latvia"

        Cldr.LY ->
            "Libya"

        Cldr.MA ->
            "Marokko"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint-Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshalløyene"

        Cldr.MK ->
            "Nord-Makedonia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macao"

        Cldr.MP ->
            "Nord-Marianene"

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
            "Maldivene"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexico"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mosambik"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Ny-Caledonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolkøya"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Nederland"

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
            "Fransk Polynesia"

        Cldr.PG ->
            "Papua Ny-Guinea"

        Cldr.PH ->
            "Filippinene"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polen"

        Cldr.PM ->
            "Saint-Pierre-et-Miquelon"

        Cldr.PN ->
            "Pitcairnøyene"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestina"

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
            "Romania"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Russland"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudi-Arabia"

        Cldr.SB ->
            "Salomonøyene"

        Cldr.SC ->
            "Seychellene"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Sverige"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "St. Helena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Svalbard og Jan Mayen"

        Cldr.SK ->
            "Slovakia"

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
            "Sør-Sudan"

        Cldr.ST ->
            "São Tomé og Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks- og Caicosøyene"

        Cldr.TD ->
            "Tsjad"

        Cldr.TF ->
            "De franske sørterritorier"

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
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Tyrkia"

        Cldr.TT ->
            "Trinidad og Tobago"

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
            "USAs ytre øyer"

        Cldr.US ->
            "USA"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Usbekistan"

        Cldr.VA ->
            "Vatikanstaten"

        Cldr.VC ->
            "St. Vincent og Grenadinene"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "De britiske jomfruøyene"

        Cldr.VI ->
            "De amerikanske jomfruøyene"

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
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Sør-Afrika"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"