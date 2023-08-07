module Cldr.Albanian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Albanian.

    AD Andorrë
    AE Emiratet e Bashkuara Arabe
    AF Afganistan
    AG Antigua e Barbuda
    AI Anguilë
    AL Shqipëri
    AM Armeni
    AO Angolë
    AQ Antarktikë
    AR Argjentinë
    AS Samoa Amerikane
    AT Austri
    AU Australi
    AW Arubë
    AX Ishujt Alandë
    AZ Azerbajxhan
    BA Bosnjë-Hercegovinë
    BB Barbados
    BD Bangladesh
    BE Belgjikë
    BF Burkina-Faso
    BG Bullgari
    BH Bahrejn
    BI Burundi
    BJ Benin
    BL Sen-Bartelemi
    BM Bermude
    BN Brunei
    BO Bolivi
    BQ Karaibet holandeze
    BR Brazil
    BS Bahama
    BT Butan
    BV Ishulli Bove
    BW Botsvanë
    BY Bjellorusi
    BZ Belizë
    CA Kanada
    CC Ishujt Kokos
    CD Kongo (RDK)
    CF Republika e Afrikës Qendrore
    CG Kongo (Republika)
    CH Zvicër
    CI Côte d’Ivoire
    CK Ishujt Kuk
    CL Kili
    CM Kamerun
    CN Kinë
    CO Kolumbi
    CR Kosta-Rikë
    CU Kubë
    CV Kepi i Gjelbër
    CW Kurasao
    CX Ishulli i Krishtlindjes
    CY Qipro
    CZ Republika Çeke
    DE Gjermani
    DJ Xhibuti
    DK Danimarkë
    DM Dominikë
    DO Republika Dominikane
    DZ Algjeri
    EC Ekuador
    EE Estoni
    EG Egjipt
    EH Saharaja Perëndimore
    ER Eritre
    ES Spanjë
    ET Etiopi
    FI Finlandë
    FJ Fixhi
    FK Ishujt Falkland
    FM Mikronezi
    FO Ishujt Faroe
    FR Francë
    GA Gabon
    GB Mbretëria e Bashkuar
    GD Granadë
    GE Gjeorgji
    GF Guajana Franceze
    GG Gernsej
    GH Ganë
    GI Gjibraltar
    GL Grënlandë
    GM Gambi
    GN Guine
    GP Guadelupë
    GQ Guineja Ekuatoriale
    GR Greqi
    GS Xhorxha Jugore dhe Ishujt Senduiçë të Jugut
    GT Guatemalë
    GU Guam
    GW Guine-Bisau
    GY Guajanë
    HK Hong-Kong
    HM Ishujt Hërd e Mekdonald
    HN Honduras
    HR Kroaci
    HT Haiti
    HU Hungari
    ID Indonezi
    IE Irlandë
    IL Izrael
    IM Ishulli i Manit
    IN Indi
    IO Territori Britanik i Oqeanit Indian
    IQ Irak
    IR Iran
    IS Islandë
    IT Itali
    JE Xhersej
    JM Xhamajkë
    JO Jordani
    JP Japoni
    KE Kenia
    KG Kirgizi
    KH Kamboxhia
    KI Kiribati
    KM Komore
    KN Shën-Kits dhe Nevis
    KP Kore e Veriut
    KR Kore e Jugut
    KW Kuvajt
    KY Ishujt Kajman
    KZ Kazakistan
    LA Laos
    LB Liban
    LC Shën-Luçia
    LI Lihtenshtajn
    LK Sri-Lankë
    LR Liberi
    LS Lesoto
    LT Lituani
    LU Luksemburg
    LV Letoni
    LY Libi
    MA Marok
    MC Monako
    MD Moldavi
    ME Mal i Zi
    MF Sen-Marten
    MG Madagaskar
    MH Ishujt Marshall
    MK Maqedonia e Veriut
    ML Mali
    MM Mianmar (Burmë)
    MN Mongoli
    MO Makao
    MP Ishujt e Marianës Veriore
    MQ Martinikë
    MR Mauritani
    MS Montserat
    MT Maltë
    MU Mauritius
    MV Maldive
    MW Malavi
    MX Meksikë
    MY Malajzi
    MZ Mozambik
    NA Namibi
    NC Kaledoni e Re
    NE Niger
    NF Ishulli Norfolk
    NG Nigeri
    NI Nikaragua
    NL Holandë
    NO Norvegji
    NP Nepal
    NR Nauru
    NU Niue
    NZ Zelandë e Re
    OM Oman
    PA Panama
    PE Peru
    PF Polinezia Franceze
    PG Guineja e Re-Papua
    PH Filipine
    PK Pakistan
    PL Poloni
    PM Shën-Pier dhe Mikelon
    PN Ishujt Pitkern
    PR Porto-Riko
    PS Palestinë
    PT Portugali
    PW Palau
    PY Paraguai
    QA Katar
    RE Reunion
    RO Rumani
    RS Serbi
    RU Rusi
    RW Ruandë
    SA Arabi Saudite
    SB Ishujt Solomon
    SC Sejshelle
    SD Sudan
    SE Suedi
    SG Singapor
    SH Shën-Elenë
    SI Slloveni
    SJ Svalbard e Jan-Majen
    SK Sllovaki
    SL Sierra-Leone
    SM San-Marino
    SN Senegal
    SO Somali
    SR Surinami
    SS Sudani i Jugut
    ST Sao-Tome e Principe
    SV Salvador
    SX Sint-Marten
    SY Siri
    SZ Esvatini
    TC Ishujt Turks dhe Kaikos
    TD Çad
    TF Territoret Jugore Franceze
    TG Togo
    TH Tajlandë
    TJ Taxhikistan
    TK Tokelau
    TL Timori Lindor
    TM Turkmenistan
    TN Tunizi
    TO Tonga
    TR Turqi
    TT Trinidad e Tobago
    TV Tuvalu
    TW Tajvan
    TZ Tanzani
    UA Ukrainë
    UG Ugandë
    UM Ishujt Periferikë të SHBA-së
    US SHBA
    UY Uruguai
    UZ Uzbekistan
    VA Vatikan
    VC Shën-Vincent dhe Grenadine
    VE Venezuelë
    VG Ishujt e Virgjër Britanikë
    VI Ishujt e Virgjër të SHBA-së
    VN Vietnam
    VU Vanuatu
    WF Uollis e Futuna
    WS Samoa
    XK Kosovë
    YE Jemen
    YT Majotë
    ZA Afrika e Jugut
    ZM Zambi
    ZW Zimbabve
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorrë"

        Cldr.AE ->
            "Emiratet e Bashkuara Arabe"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua e Barbuda"

        Cldr.AI ->
            "Anguilë"

        Cldr.AL ->
            "Shqipëri"

        Cldr.AM ->
            "Armeni"

        Cldr.AO ->
            "Angolë"

        Cldr.AQ ->
            "Antarktikë"

        Cldr.AR ->
            "Argjentinë"

        Cldr.AS ->
            "Samoa Amerikane"

        Cldr.AT ->
            "Austri"

        Cldr.AU ->
            "Australi"

        Cldr.AW ->
            "Arubë"

        Cldr.AX ->
            "Ishujt Alandë"

        Cldr.AZ ->
            "Azerbajxhan"

        Cldr.BA ->
            "Bosnjë-Hercegovinë"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgjikë"

        Cldr.BF ->
            "Burkina-Faso"

        Cldr.BG ->
            "Bullgari"

        Cldr.BH ->
            "Bahrejn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Sen-Bartelemi"

        Cldr.BM ->
            "Bermude"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivi"

        Cldr.BQ ->
            "Karaibet holandeze"

        Cldr.BR ->
            "Brazil"

        Cldr.BS ->
            "Bahama"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Ishulli Bove"

        Cldr.BW ->
            "Botsvanë"

        Cldr.BY ->
            "Bjellorusi"

        Cldr.BZ ->
            "Belizë"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Ishujt Kokos"

        Cldr.CD ->
            "Kongo (RDK)"

        Cldr.CF ->
            "Republika e Afrikës Qendrore"

        Cldr.CG ->
            "Kongo (Republika)"

        Cldr.CH ->
            "Zvicër"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Ishujt Kuk"

        Cldr.CL ->
            "Kili"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Kinë"

        Cldr.CO ->
            "Kolumbi"

        Cldr.CR ->
            "Kosta-Rikë"

        Cldr.CU ->
            "Kubë"

        Cldr.CV ->
            "Kepi i Gjelbër"

        Cldr.CW ->
            "Kurasao"

        Cldr.CX ->
            "Ishulli i Krishtlindjes"

        Cldr.CY ->
            "Qipro"

        Cldr.CZ ->
            "Republika Çeke"

        Cldr.DE ->
            "Gjermani"

        Cldr.DJ ->
            "Xhibuti"

        Cldr.DK ->
            "Danimarkë"

        Cldr.DM ->
            "Dominikë"

        Cldr.DO ->
            "Republika Dominikane"

        Cldr.DZ ->
            "Algjeri"

        Cldr.EC ->
            "Ekuador"

        Cldr.EE ->
            "Estoni"

        Cldr.EG ->
            "Egjipt"

        Cldr.EH ->
            "Saharaja Perëndimore"

        Cldr.ER ->
            "Eritre"

        Cldr.ES ->
            "Spanjë"

        Cldr.ET ->
            "Etiopi"

        Cldr.FI ->
            "Finlandë"

        Cldr.FJ ->
            "Fixhi"

        Cldr.FK ->
            "Ishujt Falkland"

        Cldr.FM ->
            "Mikronezi"

        Cldr.FO ->
            "Ishujt Faroe"

        Cldr.FR ->
            "Francë"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Mbretëria e Bashkuar"

        Cldr.GD ->
            "Granadë"

        Cldr.GE ->
            "Gjeorgji"

        Cldr.GF ->
            "Guajana Franceze"

        Cldr.GG ->
            "Gernsej"

        Cldr.GH ->
            "Ganë"

        Cldr.GI ->
            "Gjibraltar"

        Cldr.GL ->
            "Grënlandë"

        Cldr.GM ->
            "Gambi"

        Cldr.GN ->
            "Guine"

        Cldr.GP ->
            "Guadelupë"

        Cldr.GQ ->
            "Guineja Ekuatoriale"

        Cldr.GR ->
            "Greqi"

        Cldr.GS ->
            "Xhorxha Jugore dhe Ishujt Senduiçë të Jugut"

        Cldr.GT_ ->
            "Guatemalë"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guine-Bisau"

        Cldr.GY ->
            "Guajanë"

        Cldr.HK ->
            "Hong-Kong"

        Cldr.HM ->
            "Ishujt Hërd e Mekdonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroaci"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hungari"

        Cldr.ID ->
            "Indonezi"

        Cldr.IE ->
            "Irlandë"

        Cldr.IL ->
            "Izrael"

        Cldr.IM ->
            "Ishulli i Manit"

        Cldr.IN ->
            "Indi"

        Cldr.IO ->
            "Territori Britanik i Oqeanit Indian"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islandë"

        Cldr.IT ->
            "Itali"

        Cldr.JE ->
            "Xhersej"

        Cldr.JM ->
            "Xhamajkë"

        Cldr.JO ->
            "Jordani"

        Cldr.JP ->
            "Japoni"

        Cldr.KE ->
            "Kenia"

        Cldr.KG ->
            "Kirgizi"

        Cldr.KH ->
            "Kamboxhia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komore"

        Cldr.KN ->
            "Shën-Kits dhe Nevis"

        Cldr.KP ->
            "Kore e Veriut"

        Cldr.KR ->
            "Kore e Jugut"

        Cldr.KW ->
            "Kuvajt"

        Cldr.KY ->
            "Ishujt Kajman"

        Cldr.KZ ->
            "Kazakistan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Liban"

        Cldr.LC ->
            "Shën-Luçia"

        Cldr.LI ->
            "Lihtenshtajn"

        Cldr.LK ->
            "Sri-Lankë"

        Cldr.LR ->
            "Liberi"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Lituani"

        Cldr.LU ->
            "Luksemburg"

        Cldr.LV ->
            "Letoni"

        Cldr.LY ->
            "Libi"

        Cldr.MA ->
            "Marok"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldavi"

        Cldr.ME ->
            "Mal i Zi"

        Cldr.MF ->
            "Sen-Marten"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Ishujt Marshall"

        Cldr.MK ->
            "Maqedonia e Veriut"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mianmar (Burmë)"

        Cldr.MN ->
            "Mongoli"

        Cldr.MO ->
            "Makao"

        Cldr.MP ->
            "Ishujt e Marianës Veriore"

        Cldr.MQ ->
            "Martinikë"

        Cldr.MR ->
            "Mauritani"

        Cldr.MS ->
            "Montserat"

        Cldr.MT ->
            "Maltë"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldive"

        Cldr.MW ->
            "Malavi"

        Cldr.MX ->
            "Meksikë"

        Cldr.MY ->
            "Malajzi"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibi"

        Cldr.NC ->
            "Kaledoni e Re"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Ishulli Norfolk"

        Cldr.NG ->
            "Nigeri"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Holandë"

        Cldr.NO ->
            "Norvegji"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Zelandë e Re"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polinezia Franceze"

        Cldr.PG ->
            "Guineja e Re-Papua"

        Cldr.PH ->
            "Filipine"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Poloni"

        Cldr.PM ->
            "Shën-Pier dhe Mikelon"

        Cldr.PN ->
            "Ishujt Pitkern"

        Cldr.PR ->
            "Porto-Riko"

        Cldr.PS ->
            "Palestinë"

        Cldr.PT ->
            "Portugali"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguai"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Reunion"

        Cldr.RO ->
            "Rumani"

        Cldr.RS ->
            "Serbi"

        Cldr.RU ->
            "Rusi"

        Cldr.RW ->
            "Ruandë"

        Cldr.SA ->
            "Arabi Saudite"

        Cldr.SB ->
            "Ishujt Solomon"

        Cldr.SC ->
            "Sejshelle"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Suedi"

        Cldr.SG ->
            "Singapor"

        Cldr.SH ->
            "Shën-Elenë"

        Cldr.SI ->
            "Slloveni"

        Cldr.SJ ->
            "Svalbard e Jan-Majen"

        Cldr.SK ->
            "Sllovaki"

        Cldr.SL ->
            "Sierra-Leone"

        Cldr.SM ->
            "San-Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somali"

        Cldr.SR ->
            "Surinami"

        Cldr.SS ->
            "Sudani i Jugut"

        Cldr.ST ->
            "Sao-Tome e Principe"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Sint-Marten"

        Cldr.SY ->
            "Siri"

        Cldr.SZ ->
            "Esvatini"

        Cldr.TC ->
            "Ishujt Turks dhe Kaikos"

        Cldr.TD ->
            "Çad"

        Cldr.TF ->
            "Territoret Jugore Franceze"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tajlandë"

        Cldr.TJ ->
            "Taxhikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timori Lindor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunizi"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turqi"

        Cldr.TT ->
            "Trinidad e Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Tajvan"

        Cldr.TZ ->
            "Tanzani"

        Cldr.UA ->
            "Ukrainë"

        Cldr.UG ->
            "Ugandë"

        Cldr.UM ->
            "Ishujt Periferikë të SHBA-së"

        Cldr.US ->
            "SHBA"

        Cldr.UY ->
            "Uruguai"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikan"

        Cldr.VC ->
            "Shën-Vincent dhe Grenadine"

        Cldr.VE ->
            "Venezuelë"

        Cldr.VG ->
            "Ishujt e Virgjër Britanikë"

        Cldr.VI ->
            "Ishujt e Virgjër të SHBA-së"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Uollis e Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovë"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Majotë"

        Cldr.ZA ->
            "Afrika e Jugut"

        Cldr.ZM ->
            "Zambi"

        Cldr.ZW ->
            "Zimbabve"