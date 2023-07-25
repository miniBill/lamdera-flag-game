module Cldr.Polish exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Polish.

    AD Andora
    AE Zjednoczone Emiraty Arabskie
    AF Afganistan
    AG Antigua i Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Antarktyda
    AR Argentyna
    AS Samoa Amerykańskie
    AT Austria
    AU Australia
    AW Aruba
    AX Wyspy Alandzkie
    AZ Azerbejdżan
    BA Bośnia i Hercegowina
    BB Barbados
    BD Bangladesz
    BE Belgia
    BF Burkina Faso
    BG Bułgaria
    BH Bahrajn
    BI Burundi
    BJ Benin
    BL Saint-Barthélemy
    BM Bermudy
    BN Brunei
    BO Boliwia
    BQ Niderlandy Karaibskie
    BR Brazylia
    BS Bahamy
    BT Bhutan
    BV Wyspa Bouveta
    BW Botswana
    BY Białoruś
    BZ Belize
    CA Kanada
    CC Wyspy Kokosowe
    CD Demokratyczna Republika Konga
    CF Republika Środkowoafrykańska
    CG Kongo
    CH Szwajcaria
    CI Côte d’Ivoire
    CK Wyspy Cooka
    CL Chile
    CM Kamerun
    CN Chiny
    CO Kolumbia
    CR Kostaryka
    CU Kuba
    CV Republika Zielonego Przylądka
    CW Curaçao
    CX Wyspa Bożego Narodzenia
    CY Cypr
    CZ Czechy
    DE Niemcy
    DJ Dżibuti
    DK Dania
    DM Dominika
    DO Dominikana
    DZ Algieria
    EC Ekwador
    EE Estonia
    EG Egipt
    EH Sahara Zachodnia
    ER Erytrea
    ES Hiszpania
    ET Etiopia
    FI Finlandia
    FJ Fidżi
    FK Falklandy
    FM Mikronezja
    FO Wyspy Owcze
    FR Francja
    GA Gabon
    GB Wielka Brytania
    GD Grenada
    GE Gruzja
    GF Gujana Francuska
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Grenlandia
    GM Gambia
    GN Gwinea
    GP Gwadelupa
    GQ Gwinea Równikowa
    GR Grecja
    GS Georgia Południowa i Sandwich Południowy
    GT Gwatemala
    GU Guam
    GW Gwinea Bissau
    GY Gujana
    HK SRA Hongkong (Chiny)
    HM Wyspy Heard i McDonalda
    HN Honduras
    HR Chorwacja
    HT Haiti
    HU Węgry
    ID Indonezja
    IE Irlandia
    IL Izrael
    IM Wyspa Man
    IN Indie
    IO Brytyjskie Terytorium Oceanu Indyjskiego
    IQ Irak
    IR Iran
    IS Islandia
    IT Włochy
    JE Jersey
    JM Jamajka
    JO Jordania
    JP Japonia
    KE Kenia
    KG Kirgistan
    KH Kambodża
    KI Kiribati
    KM Komory
    KN Saint Kitts i Nevis
    KP Korea Północna
    KR Korea Południowa
    KW Kuwejt
    KY Kajmany
    KZ Kazachstan
    LA Laos
    LB Liban
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litwa
    LU Luksemburg
    LV Łotwa
    LY Libia
    MA Maroko
    MC Monako
    MD Mołdawia
    ME Czarnogóra
    MF Saint-Martin
    MG Madagaskar
    MH Wyspy Marshalla
    MK Macedonia Północna
    ML Mali
    MM Mjanma (Birma)
    MN Mongolia
    MO SRA Makau (Chiny)
    MP Mariany Północne
    MQ Martynika
    MR Mauretania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Malediwy
    MW Malawi
    MX Meksyk
    MY Malezja
    MZ Mozambik
    NA Namibia
    NC Nowa Kaledonia
    NE Niger
    NF Norfolk
    NG Nigeria
    NI Nikaragua
    NL Holandia
    NO Norwegia
    NP Nepal
    NR Nauru
    NU Niue
    NZ Nowa Zelandia
    OM Oman
    PA Panama
    PE Peru
    PF Polinezja Francuska
    PG Papua-Nowa Gwinea
    PH Filipiny
    PK Pakistan
    PL Polska
    PM Saint-Pierre i Miquelon
    PN Pitcairn
    PR Portoryko
    PS Terytoria Palestyńskie
    PT Portugalia
    PW Palau
    PY Paragwaj
    QA Katar
    RE Reunion
    RO Rumunia
    RS Serbia
    RU Rosja
    RW Rwanda
    SA Arabia Saudyjska
    SB Wyspy Salomona
    SC Seszele
    SD Sudan
    SE Szwecja
    SG Singapur
    SH Wyspa Świętej Heleny
    SI Słowenia
    SJ Svalbard i Jan Mayen
    SK Słowacja
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Surinam
    SS Sudan Południowy
    ST Wyspy Świętego Tomasza i Książęca
    SV Salwador
    SX Sint Maarten
    SY Syria
    SZ Eswatini
    TC Turks i Caicos
    TD Czad
    TF Francuskie Terytoria Południowe i Antarktyczne
    TG Togo
    TH Tajlandia
    TJ Tadżykistan
    TK Tokelau
    TL Timor Wschodni
    TM Turkmenistan
    TN Tunezja
    TO Tonga
    TR Turcja
    TT Trynidad i Tobago
    TV Tuvalu
    TW Tajwan
    TZ Tanzania
    UA Ukraina
    UG Uganda
    UM Dalekie Wyspy Mniejsze Stanów Zjednoczonych
    US Stany Zjednoczone
    UY Urugwaj
    UZ Uzbekistan
    VA Watykan
    VC Saint Vincent i Grenadyny
    VE Wenezuela
    VG Brytyjskie Wyspy Dziewicze
    VI Wyspy Dziewicze Stanów Zjednoczonych
    VN Wietnam
    VU Vanuatu
    WF Wallis i Futuna
    WS Samoa
    XK Kosowo
    YE Jemen
    YT Majotta
    ZA Republika Południowej Afryki
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andora"

        Cldr.AE ->
            "Zjednoczone Emiraty Arabskie"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua i Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktyda"

        Cldr.AR ->
            "Argentyna"

        Cldr.AS ->
            "Samoa Amerykańskie"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Wyspy Alandzkie"

        Cldr.AZ ->
            "Azerbejdżan"

        Cldr.BA ->
            "Bośnia i Hercegowina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesz"

        Cldr.BE ->
            "Belgia"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bułgaria"

        Cldr.BH ->
            "Bahrajn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Saint-Barthélemy"

        Cldr.BM ->
            "Bermudy"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Boliwia"

        Cldr.BQ ->
            "Niderlandy Karaibskie"

        Cldr.BR ->
            "Brazylia"

        Cldr.BS ->
            "Bahamy"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Wyspa Bouveta"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Białoruś"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Wyspy Kokosowe"

        Cldr.CD ->
            "Demokratyczna Republika Konga"

        Cldr.CF ->
            "Republika Środkowoafrykańska"

        Cldr.CG ->
            "Kongo"

        Cldr.CH ->
            "Szwajcaria"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Wyspy Cooka"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Chiny"

        Cldr.CO ->
            "Kolumbia"

        Cldr.CR ->
            "Kostaryka"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Republika Zielonego Przylądka"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Wyspa Bożego Narodzenia"

        Cldr.CY ->
            "Cypr"

        Cldr.CZ ->
            "Czechy"

        Cldr.DE ->
            "Niemcy"

        Cldr.DJ ->
            "Dżibuti"

        Cldr.DK ->
            "Dania"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikana"

        Cldr.DZ ->
            "Algieria"

        Cldr.EC ->
            "Ekwador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egipt"

        Cldr.EH ->
            "Sahara Zachodnia"

        Cldr.ER ->
            "Erytrea"

        Cldr.ES ->
            "Hiszpania"

        Cldr.ET ->
            "Etiopia"

        Cldr.FI ->
            "Finlandia"

        Cldr.FJ ->
            "Fidżi"

        Cldr.FK ->
            "Falklandy"

        Cldr.FM ->
            "Mikronezja"

        Cldr.FO ->
            "Wyspy Owcze"

        Cldr.FR ->
            "Francja"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Wielka Brytania"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruzja"

        Cldr.GF ->
            "Gujana Francuska"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grenlandia"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Gwinea"

        Cldr.GP ->
            "Gwadelupa"

        Cldr.GQ ->
            "Gwinea Równikowa"

        Cldr.GR ->
            "Grecja"

        Cldr.GS ->
            "Georgia Południowa i Sandwich Południowy"

        Cldr.GT_ ->
            "Gwatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gwinea Bissau"

        Cldr.GY ->
            "Gujana"

        Cldr.HK ->
            "SRA Hongkong (Chiny)"

        Cldr.HM ->
            "Wyspy Heard i McDonalda"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Chorwacja"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Węgry"

        Cldr.ID ->
            "Indonezja"

        Cldr.IE ->
            "Irlandia"

        Cldr.IL ->
            "Izrael"

        Cldr.IM ->
            "Wyspa Man"

        Cldr.IN ->
            "Indie"

        Cldr.IO ->
            "Brytyjskie Terytorium Oceanu Indyjskiego"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islandia"

        Cldr.IT ->
            "Włochy"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamajka"

        Cldr.JO ->
            "Jordania"

        Cldr.JP ->
            "Japonia"

        Cldr.KE ->
            "Kenia"

        Cldr.KG ->
            "Kirgistan"

        Cldr.KH ->
            "Kambodża"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komory"

        Cldr.KN ->
            "Saint Kitts i Nevis"

        Cldr.KP ->
            "Korea Północna"

        Cldr.KR ->
            "Korea Południowa"

        Cldr.KW ->
            "Kuwejt"

        Cldr.KY ->
            "Kajmany"

        Cldr.KZ ->
            "Kazachstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Liban"

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
            "Litwa"

        Cldr.LU ->
            "Luksemburg"

        Cldr.LV ->
            "Łotwa"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Maroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Mołdawia"

        Cldr.ME ->
            "Czarnogóra"

        Cldr.MF ->
            "Saint-Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Wyspy Marshalla"

        Cldr.MK ->
            "Macedonia Północna"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mjanma (Birma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "SRA Makau (Chiny)"

        Cldr.MP ->
            "Mariany Północne"

        Cldr.MQ ->
            "Martynika"

        Cldr.MR ->
            "Mauretania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Malediwy"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Meksyk"

        Cldr.MY ->
            "Malezja"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Nowa Kaledonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Holandia"

        Cldr.NO ->
            "Norwegia"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nowa Zelandia"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polinezja Francuska"

        Cldr.PG ->
            "Papua-Nowa Gwinea"

        Cldr.PH ->
            "Filipiny"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polska"

        Cldr.PM ->
            "Saint-Pierre i Miquelon"

        Cldr.PN ->
            "Pitcairn"

        Cldr.PR ->
            "Portoryko"

        Cldr.PS ->
            "Terytoria Palestyńskie"

        Cldr.PT ->
            "Portugalia"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragwaj"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Reunion"

        Cldr.RO ->
            "Rumunia"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rosja"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Arabia Saudyjska"

        Cldr.SB ->
            "Wyspy Salomona"

        Cldr.SC ->
            "Seszele"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Szwecja"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Wyspa Świętej Heleny"

        Cldr.SI ->
            "Słowenia"

        Cldr.SJ ->
            "Svalbard i Jan Mayen"

        Cldr.SK ->
            "Słowacja"

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
            "Sudan Południowy"

        Cldr.ST ->
            "Wyspy Świętego Tomasza i Książęca"

        Cldr.SV ->
            "Salwador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks i Caicos"

        Cldr.TD ->
            "Czad"

        Cldr.TF ->
            "Francuskie Terytoria Południowe i Antarktyczne"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tajlandia"

        Cldr.TJ ->
            "Tadżykistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor Wschodni"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunezja"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turcja"

        Cldr.TT ->
            "Trynidad i Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Tajwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Dalekie Wyspy Mniejsze Stanów Zjednoczonych"

        Cldr.US ->
            "Stany Zjednoczone"

        Cldr.UY ->
            "Urugwaj"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Watykan"

        Cldr.VC ->
            "Saint Vincent i Grenadyny"

        Cldr.VE ->
            "Wenezuela"

        Cldr.VG ->
            "Brytyjskie Wyspy Dziewicze"

        Cldr.VI ->
            "Wyspy Dziewicze Stanów Zjednoczonych"

        Cldr.VN ->
            "Wietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis i Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosowo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Majotta"

        Cldr.ZA ->
            "Republika Południowej Afryki"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"