module Cldr.Norwegian.Nynorsk exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Norwegian


{-| Name for `CountryCode` in Norwegian Nynorsk.

    AD Andorra
    AE Dei sameinte arabiske emirata
    AF Afghanistan
    AG Antigua og Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antarktis
    AR Argentina
    AS Amerikansk Samoa
    AT Austerrike
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
    BY Kviterussland
    BZ Belize
    CA Canada
    CC Kokosøyane
    CD Den demokratiske republikken Kongo
    CF Den sentralafrikanske republikken
    CG Republikken Kongo
    CH Sveits
    CI Elfenbeinskysten
    CK Cookøyane
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
    DO Den dominikanske republikken
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
    FK Falklandsøyane
    FM Mikronesiaføderasjonen
    FO Færøyane
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
    GS Sør-Georgia og Sør-Sandwichøyane
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hongkong
    HM Heardøya og McDonaldøyane
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
    KM Komorane
    KN Saint Kitts og Nevis
    KP Nord-Korea
    KR Sør-Korea
    KW Kuwait
    KY Caymanøyane
    KZ Kasakhstan
    LA Laos
    LB Libanon
    LC St. Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litauen
    LU Luxembourg
    LV Latvia
    LY Libya
    MA Marokko
    MC Monaco
    MD Moldova
    ME Montenegro
    MF Saint-Martin
    MG Madagaskar
    MH Marshalløyane
    MK Nord-Makedonia
    ML Mali
    MM Myanmar (Burma)
    MN Mongolia
    MO Macao
    MP Nord-Marianane
    MQ Martinique
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldivane
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
    NO Noreg
    NP Nepal
    NR Nauru
    NU Niue
    NZ New Zealand
    OM Oman
    PA Panama
    PE Peru
    PF Fransk Polynesia
    PG Papua Ny-Guinea
    PH Filippinane
    PK Pakistan
    PL Polen
    PM Saint-Pierre-et-Miquelon
    PN Pitcairn
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
    SB Salomonøyane
    SC Seychellane
    SD Sudan
    SE Sverige
    SG Singapore
    SH Saint Helena
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
    TC Turks- og Caicosøyane
    TD Tsjad
    TF Dei franske sørterritoria
    TG Togo
    TH Thailand
    TJ Tadsjikistan
    TK Tokelau
    TL Aust-Timor
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
    UM USAs ytre småøyar
    US USA
    UY Uruguay
    UZ Usbekistan
    VA Vatikanstaten
    VC St. Vincent og Grenadinane
    VE Venezuela
    VG Dei britiske Jomfruøyane
    VI Dei amerikanske Jomfruøyane
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
        Cldr.AE ->
            "Dei sameinte arabiske emirata"

        Cldr.AT ->
            "Austerrike"

        Cldr.BY ->
            "Kviterussland"

        Cldr.CC ->
            "Kokosøyane"

        Cldr.CF ->
            "Den sentralafrikanske republikken"

        Cldr.CI ->
            "Elfenbeinskysten"

        Cldr.CK ->
            "Cookøyane"

        Cldr.DO ->
            "Den dominikanske republikken"

        Cldr.FK ->
            "Falklandsøyane"

        Cldr.FO ->
            "Færøyane"

        Cldr.GS ->
            "Sør-Georgia og Sør-Sandwichøyane"

        Cldr.HM ->
            "Heardøya og McDonaldøyane"

        Cldr.KM ->
            "Komorane"

        Cldr.KY ->
            "Caymanøyane"

        Cldr.LU ->
            "Luxembourg"

        Cldr.MH ->
            "Marshalløyane"

        Cldr.MP ->
            "Nord-Marianane"

        Cldr.MV ->
            "Maldivane"

        Cldr.NO ->
            "Noreg"

        Cldr.PH ->
            "Filippinane"

        Cldr.PN ->
            "Pitcairn"

        Cldr.SB ->
            "Salomonøyane"

        Cldr.SC ->
            "Seychellane"

        Cldr.SH ->
            "Saint Helena"

        Cldr.TC ->
            "Turks- og Caicosøyane"

        Cldr.TF ->
            "Dei franske sørterritoria"

        Cldr.TL ->
            "Aust-Timor"

        Cldr.UM ->
            "USAs ytre småøyar"

        Cldr.VC ->
            "St. Vincent og Grenadinane"

        Cldr.VG ->
            "Dei britiske Jomfruøyane"

        Cldr.VI ->
            "Dei amerikanske Jomfruøyane"

        _ ->
            Cldr.Norwegian.countryCodeToName countryCode