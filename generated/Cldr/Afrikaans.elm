module Cldr.Afrikaans exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Afrikaans.

    AD Andorra
    AE Verenigde Arabiese Emirate
    AF Afganistan
    AG Antigua en Barbuda
    AI Anguilla
    AL Albanië
    AM Armenië
    AO Angola
    AQ Antarktika
    AR Argentinië
    AS Amerikaanse Samoa
    AT Oostenryk
    AU Australië
    AW Aruba
    AX Ålandeilande
    AZ Azerbeidjan
    BA Bosnië en Herzegowina
    BB Barbados
    BD Bangladesj
    BE België
    BF Burkina Faso
    BG Bulgarye
    BH Bahrein
    BI Burundi
    BJ Benin
    BL Sint Barthélemy
    BM Bermuda
    BN Broenei
    BO Bolivië
    BQ Karibiese Nederland
    BR Brasilië
    BS Bahamas
    BT Bhoetan
    BV Bouvet-eiland
    BW Botswana
    BY Belarus
    BZ Belize
    CA Kanada
    CC Kokoseilande
    CD Kongo (DRK)
    CF Sentraal-Afrikaanse Republiek
    CG Kongo (Republiek die)
    CH Switserland
    CI Ivoorkus
    CK Cookeilande
    CL Chili
    CM Kameroen
    CN China
    CO Colombië
    CR Costa Rica
    CU Kuba
    CV Kaap Verde
    CW Curaçao
    CX Kerseiland
    CY Siprus
    CZ Tsjeggiese Republiek
    DE Duitsland
    DJ Djiboeti
    DK Denemarke
    DM Dominica
    DO Dominikaanse Republiek
    DZ Algerië
    EC Ecuador
    EE Estland
    EG Egipte
    EH Wes-Sahara
    ER Eritrea
    ES Spanje
    ET Ethiopië
    FI Finland
    FJ Fidji
    FK Falklandeilande
    FM Mikronesië
    FO Faroëreilande
    FR Frankryk
    GA Gaboen
    GB Verenigde Koninkryk
    GD Grenada
    GE Georgië
    GF Frans-Guyana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Groenland
    GM Gambië
    GN Guinee
    GP Guadeloupe
    GQ Ekwatoriaal-Guinee
    GR Griekeland
    GS Suid-Georgië en die Suidelike Sandwicheilande
    GT Guatemala
    GU Guam
    GW Guinee-Bissau
    GY Guyana
    HK Hongkong
    HM Heardeiland en McDonaldeilande
    HN Honduras
    HR Kroasië
    HT Haïti
    HU Hongarye
    ID Indonesië
    IE Ierland
    IL Israel
    IM Eiland Man
    IN Indië
    IO Brits-Indiese Oseaangebied
    IQ Irak
    IR Iran
    IS Ysland
    IT Italië
    JE Jersey
    JM Jamaika
    JO Jordanië
    JP Japan
    KE Kenia
    KG Kirgistan
    KH Kambodja
    KI Kiribati
    KM Comore
    KN Sint Kitts en Nevis
    KP Noord-Korea
    KR Suid-Korea
    KW Koeweit
    KY Kaaimanseilande
    KZ Kazakstan
    LA Laos
    LB Libanon
    LC Sint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberië
    LS Lesotho
    LT Litaue
    LU Luxemburg
    LV Letland
    LY Libië
    MA Marokko
    MC Monaco
    MD Moldowa
    ME Montenegro
    MF Sint Martin
    MG Madagaskar
    MH Marshalleilande
    MK Noord-Macedonië
    ML Mali
    MM Mianmar (Birma)
    MN Mongolië
    MO Macau
    MP Noord-Mariane-eilande
    MQ Martinique
    MR Mauritanië
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maledive
    MW Malawi
    MX Meksiko
    MY Maleisië
    MZ Mosambiek
    NA Namibië
    NC Nieu-Kaledonië
    NE Niger
    NF Norfolkeiland
    NG Nigerië
    NI Nicaragua
    NL Nederland
    NO Noorweë
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nieu-Seeland
    OM Oman
    PA Panama
    PE Peru
    PF Frans-Polinesië
    PG Papoea-Nieu-Guinee
    PH Filippyne
    PK Pakistan
    PL Pole
    PM Sint Pierre en Miquelon
    PN Pitcairneilande
    PR Puerto Rico
    PS Palestina
    PT Portugal
    PW Palau
    PY Paraguay
    QA Katar
    RE Réunion
    RO Roemenië
    RS Serwië
    RU Rusland
    RW Rwanda
    SA Saoedi-Arabië
    SB Salomonseilande
    SC Seychelle
    SD Soedan
    SE Swede
    SG Singapoer
    SH Sint Helena
    SI Slowenië
    SJ Spitsbergen en Jan Mayen
    SK Slowakye
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalië
    SR Suriname
    SS Suid-Soedan
    ST São Tomé en Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Sirië
    SZ Eswatini
    TC Turks- en Caicoseilande
    TD Tsjad
    TF Franse Suidelike Gebiede
    TG Togo
    TH Thailand
    TJ Tadjikistan
    TK Tokelau
    TL Oos-Timor
    TM Turkmenistan
    TN Tunisië
    TO Tonga
    TR Turkye
    TT Trinidad en Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tanzanië
    UA Oekraïne
    UG Uganda
    UM Klein afgeleë eilande van die VSA
    US Verenigde State van Amerika
    UY Uruguay
    UZ Oesbekistan
    VA Vatikaanstad
    VC Sint Vincent en die Grenadine
    VE Venezuela
    VG Britse Maagde-eilande
    VI VSA se Maagde-eilande
    VN Viëtnam
    VU Vanuatu
    WF Wallis en Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Mayotte
    ZA Suid-Afrika
    ZM Zambië
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Verenigde Arabiese Emirate"

        Cldr.AF ->
            "Afganistan"

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
            "Antarktika"

        Cldr.AR ->
            "Argentinië"

        Cldr.AS ->
            "Amerikaanse Samoa"

        Cldr.AT ->
            "Oostenryk"

        Cldr.AU ->
            "Australië"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ålandeilande"

        Cldr.AZ ->
            "Azerbeidjan"

        Cldr.BA ->
            "Bosnië en Herzegowina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesj"

        Cldr.BE ->
            "België"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgarye"

        Cldr.BH ->
            "Bahrein"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Sint Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Broenei"

        Cldr.BO ->
            "Bolivië"

        Cldr.BQ ->
            "Karibiese Nederland"

        Cldr.BR ->
            "Brasilië"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhoetan"

        Cldr.BV ->
            "Bouvet-eiland"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokoseilande"

        Cldr.CD ->
            "Kongo (DRK)"

        Cldr.CF ->
            "Sentraal-Afrikaanse Republiek"

        Cldr.CG ->
            "Kongo (Republiek die)"

        Cldr.CH ->
            "Switserland"

        Cldr.CI ->
            "Ivoorkus"

        Cldr.CK ->
            "Cookeilande"

        Cldr.CL ->
            "Chili"

        Cldr.CM ->
            "Kameroen"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Colombië"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kaap Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Kerseiland"

        Cldr.CY ->
            "Siprus"

        Cldr.CZ ->
            "Tsjeggiese Republiek"

        Cldr.DE ->
            "Duitsland"

        Cldr.DJ ->
            "Djiboeti"

        Cldr.DK ->
            "Denemarke"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Dominikaanse Republiek"

        Cldr.DZ ->
            "Algerië"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estland"

        Cldr.EG ->
            "Egipte"

        Cldr.EH ->
            "Wes-Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spanje"

        Cldr.ET ->
            "Ethiopië"

        Cldr.FI ->
            "Finland"

        Cldr.FJ ->
            "Fidji"

        Cldr.FK ->
            "Falklandeilande"

        Cldr.FM ->
            "Mikronesië"

        Cldr.FO ->
            "Faroëreilande"

        Cldr.FR ->
            "Frankryk"

        Cldr.GA ->
            "Gaboen"

        Cldr.GB ->
            "Verenigde Koninkryk"

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
            "Gambië"

        Cldr.GN ->
            "Guinee"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Ekwatoriaal-Guinee"

        Cldr.GR ->
            "Griekeland"

        Cldr.GS ->
            "Suid-Georgië en die Suidelike Sandwicheilande"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinee-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkong"

        Cldr.HM ->
            "Heardeiland en McDonaldeilande"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroasië"

        Cldr.HT ->
            "Haïti"

        Cldr.HU ->
            "Hongarye"

        Cldr.ID ->
            "Indonesië"

        Cldr.IE ->
            "Ierland"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Eiland Man"

        Cldr.IN ->
            "Indië"

        Cldr.IO ->
            "Brits-Indiese Oseaangebied"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Ysland"

        Cldr.IT ->
            "Italië"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jordanië"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenia"

        Cldr.KG ->
            "Kirgistan"

        Cldr.KH ->
            "Kambodja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comore"

        Cldr.KN ->
            "Sint Kitts en Nevis"

        Cldr.KP ->
            "Noord-Korea"

        Cldr.KR ->
            "Suid-Korea"

        Cldr.KW ->
            "Koeweit"

        Cldr.KY ->
            "Kaaimanseilande"

        Cldr.KZ ->
            "Kazakstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "Sint Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberië"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Litaue"

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
            "Moldowa"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Sint Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshalleilande"

        Cldr.MK ->
            "Noord-Macedonië"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mianmar (Birma)"

        Cldr.MN ->
            "Mongolië"

        Cldr.MO ->
            "Macau"

        Cldr.MP ->
            "Noord-Mariane-eilande"

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
            "Maledive"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Meksiko"

        Cldr.MY ->
            "Maleisië"

        Cldr.MZ ->
            "Mosambiek"

        Cldr.NA ->
            "Namibië"

        Cldr.NC ->
            "Nieu-Kaledonië"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolkeiland"

        Cldr.NG ->
            "Nigerië"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Nederland"

        Cldr.NO ->
            "Noorweë"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nieu-Seeland"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Frans-Polinesië"

        Cldr.PG ->
            "Papoea-Nieu-Guinee"

        Cldr.PH ->
            "Filippyne"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Pole"

        Cldr.PM ->
            "Sint Pierre en Miquelon"

        Cldr.PN ->
            "Pitcairneilande"

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
            "Katar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Roemenië"

        Cldr.RS ->
            "Serwië"

        Cldr.RU ->
            "Rusland"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saoedi-Arabië"

        Cldr.SB ->
            "Salomonseilande"

        Cldr.SC ->
            "Seychelle"

        Cldr.SD ->
            "Soedan"

        Cldr.SE ->
            "Swede"

        Cldr.SG ->
            "Singapoer"

        Cldr.SH ->
            "Sint Helena"

        Cldr.SI ->
            "Slowenië"

        Cldr.SJ ->
            "Spitsbergen en Jan Mayen"

        Cldr.SK ->
            "Slowakye"

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
            "Suid-Soedan"

        Cldr.ST ->
            "São Tomé en Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Sirië"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks- en Caicoseilande"

        Cldr.TD ->
            "Tsjad"

        Cldr.TF ->
            "Franse Suidelike Gebiede"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailand"

        Cldr.TJ ->
            "Tadjikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Oos-Timor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisië"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkye"

        Cldr.TT ->
            "Trinidad en Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzanië"

        Cldr.UA ->
            "Oekraïne"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Klein afgeleë eilande van die VSA"

        Cldr.US ->
            "Verenigde State van Amerika"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Oesbekistan"

        Cldr.VA ->
            "Vatikaanstad"

        Cldr.VC ->
            "Sint Vincent en die Grenadine"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Britse Maagde-eilande"

        Cldr.VI ->
            "VSA se Maagde-eilande"

        Cldr.VN ->
            "Viëtnam"

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
            "Suid-Afrika"

        Cldr.ZM ->
            "Zambië"

        Cldr.ZW ->
            "Zimbabwe"