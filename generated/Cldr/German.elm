module Cldr.German exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in German.

    AD Andorra
    AE Vereinigte Arabische Emirate
    AF Afghanistan
    AG Antigua und Barbuda
    AI Anguilla
    AL Albanien
    AM Armenien
    AO Angola
    AQ Antarktis
    AR Argentinien
    AS Amerikanisch-Samoa
    AT Österreich
    AU Australien
    AW Aruba
    AX Ålandinseln
    AZ Aserbaidschan
    BA Bosnien und Herzegowina
    BB Barbados
    BD Bangladesch
    BE Belgien
    BF Burkina Faso
    BG Bulgarien
    BH Bahrain
    BI Burundi
    BJ Benin
    BL St. Barthélemy
    BM Bermuda
    BN Brunei Darussalam
    BO Bolivien
    BQ Karibische Niederlande
    BR Brasilien
    BS Bahamas
    BT Bhutan
    BV Bouvetinsel
    BW Botsuana
    BY Belarus
    BZ Belize
    CA Kanada
    CC Kokosinseln
    CD Kongo (Demokratische Republik)
    CF Zentralafrikanische Republik
    CG Kongo (Republik)
    CH Schweiz
    CI Côte d’Ivoire
    CK Cookinseln
    CL Chile
    CM Kamerun
    CN China
    CO Kolumbien
    CR Costa Rica
    CU Kuba
    CV Cabo Verde
    CW Curaçao
    CX Weihnachtsinsel
    CY Zypern
    CZ Tschechische Republik
    DE Deutschland
    DJ Dschibuti
    DK Dänemark
    DM Dominica
    DO Dominikanische Republik
    DZ Algerien
    EC Ecuador
    EE Estland
    EG Ägypten
    EH Westsahara
    ER Eritrea
    ES Spanien
    ET Äthiopien
    FI Finnland
    FJ Fidschi
    FK Falklandinseln
    FM Mikronesien
    FO Färöer
    FR Frankreich
    GA Gabun
    GB Vereinigtes Königreich
    GD Grenada
    GE Georgien
    GF Französisch-Guayana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Grönland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Äquatorialguinea
    GR Griechenland
    GS Südgeorgien und die Südlichen Sandwichinseln
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hongkong
    HM Heard und McDonaldinseln
    HN Honduras
    HR Kroatien
    HT Haiti
    HU Ungarn
    ID Indonesien
    IE Irland
    IL Israel
    IM Isle of Man
    IN Indien
    IO Britisches Territorium im Indischen Ozean
    IQ Irak
    IR Iran
    IS Island
    IT Italien
    JE Jersey
    JM Jamaika
    JO Jordanien
    JP Japan
    KE Kenia
    KG Kirgisistan
    KH Kambodscha
    KI Kiribati
    KM Komoren
    KN St. Kitts und Nevis
    KP Nordkorea
    KR Südkorea
    KW Kuwait
    KY Kaimaninseln
    KZ Kasachstan
    LA Laos
    LB Libanon
    LC St. Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litauen
    LU Luxemburg
    LV Lettland
    LY Libyen
    MA Marokko
    MC Monaco
    MD Republik Moldau
    ME Montenegro
    MF St. Martin
    MG Madagaskar
    MH Marshallinseln
    MK Nordmazedonien
    ML Mali
    MM Myanmar
    MN Mongolei
    MO Macau
    MP Nördliche Marianen
    MQ Martinique
    MR Mauretanien
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Malediven
    MW Malawi
    MX Mexiko
    MY Malaysia
    MZ Mosambik
    NA Namibia
    NC Neukaledonien
    NE Niger
    NF Norfolkinsel
    NG Nigeria
    NI Nicaragua
    NL Niederlande
    NO Norwegen
    NP Nepal
    NR Nauru
    NU Niue
    NZ Neuseeland
    OM Oman
    PA Panama
    PE Peru
    PF Französisch-Polynesien
    PG Papua-Neuguinea
    PH Philippinen
    PK Pakistan
    PL Polen
    PM St. Pierre und Miquelon
    PN Pitcairninseln
    PR Puerto Rico
    PS Palästina
    PT Portugal
    PW Palau
    PY Paraguay
    QA Katar
    RE Réunion
    RO Rumänien
    RS Serbien
    RU Russland
    RW Ruanda
    SA Saudi-Arabien
    SB Salomonen
    SC Seychellen
    SD Sudan
    SE Schweden
    SG Singapur
    SH St. Helena
    SI Slowenien
    SJ Spitzbergen und Jan Mayen
    SK Slowakei
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Suriname
    SS Südsudan
    ST São Tomé und Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Syrien
    SZ Eswatini
    TC Turks- und Caicosinseln
    TD Tschad
    TF Französische Süd- und Antarktisgebiete
    TG Togo
    TH Thailand
    TJ Tadschikistan
    TK Tokelau
    TL Osttimor
    TM Turkmenistan
    TN Tunesien
    TO Tonga
    TR Türkei
    TT Trinidad und Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tansania
    UA Ukraine
    UG Uganda
    UM Amerikanische Überseeinseln
    US Vereinigte Staaten
    UY Uruguay
    UZ Usbekistan
    VA Vatikanstadt
    VC St. Vincent und die Grenadinen
    VE Venezuela
    VG Britische Jungferninseln
    VI Amerikanische Jungferninseln
    VN Vietnam
    VU Vanuatu
    WF Wallis und Futuna
    WS Samoa
    XK Kosovo
    YE Jemen
    YT Mayotte
    ZA Südafrika
    ZM Sambia
    ZW Simbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Vereinigte Arabische Emirate"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua und Barbuda"

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
            "Argentinien"

        Cldr.AS ->
            "Amerikanisch-Samoa"

        Cldr.AT ->
            "Österreich"

        Cldr.AU ->
            "Australien"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ålandinseln"

        Cldr.AZ ->
            "Aserbaidschan"

        Cldr.BA ->
            "Bosnien und Herzegowina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesch"

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
            "St. Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei Darussalam"

        Cldr.BO ->
            "Bolivien"

        Cldr.BQ ->
            "Karibische Niederlande"

        Cldr.BR ->
            "Brasilien"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvetinsel"

        Cldr.BW ->
            "Botsuana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosinseln"

        Cldr.CD ->
            "Kongo (Demokratische Republik)"

        Cldr.CF ->
            "Zentralafrikanische Republik"

        Cldr.CG ->
            "Kongo (Republik)"

        Cldr.CH ->
            "Schweiz"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Cookinseln"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Kolumbien"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Cabo Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Weihnachtsinsel"

        Cldr.CY ->
            "Zypern"

        Cldr.CZ ->
            "Tschechische Republik"

        Cldr.DE ->
            "Deutschland"

        Cldr.DJ ->
            "Dschibuti"

        Cldr.DK ->
            "Dänemark"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Dominikanische Republik"

        Cldr.DZ ->
            "Algerien"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estland"

        Cldr.EG ->
            "Ägypten"

        Cldr.EH ->
            "Westsahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spanien"

        Cldr.ET ->
            "Äthiopien"

        Cldr.FI ->
            "Finnland"

        Cldr.FJ ->
            "Fidschi"

        Cldr.FK ->
            "Falklandinseln"

        Cldr.FM ->
            "Mikronesien"

        Cldr.FO ->
            "Färöer"

        Cldr.FR ->
            "Frankreich"

        Cldr.GA ->
            "Gabun"

        Cldr.GB ->
            "Vereinigtes Königreich"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgien"

        Cldr.GF ->
            "Französisch-Guayana"

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
            "Äquatorialguinea"

        Cldr.GR ->
            "Griechenland"

        Cldr.GS ->
            "Südgeorgien und die Südlichen Sandwichinseln"

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
            "Heard und McDonaldinseln"

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
            "Britisches Territorium im Indischen Ozean"

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
            "Jamaika"

        Cldr.JO ->
            "Jordanien"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenia"

        Cldr.KG ->
            "Kirgisistan"

        Cldr.KH ->
            "Kambodscha"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komoren"

        Cldr.KN ->
            "St. Kitts und Nevis"

        Cldr.KP ->
            "Nordkorea"

        Cldr.KR ->
            "Südkorea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Kaimaninseln"

        Cldr.KZ ->
            "Kasachstan"

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
            "Lettland"

        Cldr.LY ->
            "Libyen"

        Cldr.MA ->
            "Marokko"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Republik Moldau"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "St. Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshallinseln"

        Cldr.MK ->
            "Nordmazedonien"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar"

        Cldr.MN ->
            "Mongolei"

        Cldr.MO ->
            "Macau"

        Cldr.MP ->
            "Nördliche Marianen"

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
            "Malediven"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexiko"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mosambik"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Neukaledonien"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolkinsel"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Niederlande"

        Cldr.NO ->
            "Norwegen"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Neuseeland"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Französisch-Polynesien"

        Cldr.PG ->
            "Papua-Neuguinea"

        Cldr.PH ->
            "Philippinen"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polen"

        Cldr.PM ->
            "St. Pierre und Miquelon"

        Cldr.PN ->
            "Pitcairninseln"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palästina"

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
            "Rumänien"

        Cldr.RS ->
            "Serbien"

        Cldr.RU ->
            "Russland"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saudi-Arabien"

        Cldr.SB ->
            "Salomonen"

        Cldr.SC ->
            "Seychellen"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Schweden"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "St. Helena"

        Cldr.SI ->
            "Slowenien"

        Cldr.SJ ->
            "Spitzbergen und Jan Mayen"

        Cldr.SK ->
            "Slowakei"

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
            "Südsudan"

        Cldr.ST ->
            "São Tomé und Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syrien"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks- und Caicosinseln"

        Cldr.TD ->
            "Tschad"

        Cldr.TF ->
            "Französische Süd- und Antarktisgebiete"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailand"

        Cldr.TJ ->
            "Tadschikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Osttimor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunesien"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Türkei"

        Cldr.TT ->
            "Trinidad und Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tansania"

        Cldr.UA ->
            "Ukraine"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Amerikanische Überseeinseln"

        Cldr.US ->
            "Vereinigte Staaten"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Usbekistan"

        Cldr.VA ->
            "Vatikanstadt"

        Cldr.VC ->
            "St. Vincent und die Grenadinen"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Britische Jungferninseln"

        Cldr.VI ->
            "Amerikanische Jungferninseln"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis und Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Südafrika"

        Cldr.ZM ->
            "Sambia"

        Cldr.ZW ->
            "Simbabwe"