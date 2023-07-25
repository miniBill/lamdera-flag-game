module Cldr.Albanian.NorthMacedonia exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Albanian


{-| Name for `CountryCode` in Albanian - North Macedonia.

This is identical to the Albanian version.

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
    CD Kongo-Kinshasa
    CF Republika e Afrikës Qendrore
    CG Kongo-Brazavilë
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
    CZ Çeki
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
    HK RPA i Hong-Kongut
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
    MO RPA i Makaos
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
    PS Territoret Palestineze
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
    TL Timor-Leste
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
countryCodeToName =
    Cldr.Albanian.countryCodeToName