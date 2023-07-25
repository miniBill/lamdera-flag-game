module Cldr.Estonian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Estonian.

    AD Andorra
    AE Araabia Ühendemiraadid
    AF Afganistan
    AG Antigua ja Barbuda
    AI Anguilla
    AL Albaania
    AM Armeenia
    AO Angola
    AQ Antarktika
    AR Argentina
    AS Ameerika Samoa
    AT Austria
    AU Austraalia
    AW Aruba
    AX Ahvenamaa
    AZ Aserbaidžaan
    BA Bosnia ja Hertsegoviina
    BB Barbados
    BD Bangladesh
    BE Belgia
    BF Burkina Faso
    BG Bulgaaria
    BH Bahrein
    BI Burundi
    BJ Benin
    BL Saint-Barthélemy
    BM Bermuda
    BN Brunei
    BO Boliivia
    BQ Hollandi Kariibi mere saared
    BR Brasiilia
    BS Bahama
    BT Bhutan
    BV Bouvet’ saar
    BW Botswana
    BY Valgevene
    BZ Belize
    CA Kanada
    CC Kookossaared
    CD Kongo DV
    CF Kesk-Aafrika Vabariik
    CG Kongo Vabariik
    CH Šveits
    CI Côte d’Ivoire
    CK Cooki saared
    CL Tšiili
    CM Kamerun
    CN Hiina
    CO Colombia
    CR Costa Rica
    CU Kuuba
    CV Roheneemesaared
    CW Curaçao
    CX Jõulusaar
    CY Küpros
    CZ Tšehhi
    DE Saksamaa
    DJ Djibouti
    DK Taani
    DM Dominica
    DO Dominikaani Vabariik
    DZ Alžeeria
    EC Ecuador
    EE Eesti
    EG Egiptus
    EH Lääne-Sahara
    ER Eritrea
    ES Hispaania
    ET Etioopia
    FI Soome
    FJ Fidži
    FK Falklandi saared
    FM Mikroneesia
    FO Fääri saared
    FR Prantsusmaa
    GA Gabon
    GB Ühendkuningriik
    GD Grenada
    GE Gruusia
    GF Prantsuse Guajaana
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Gröönimaa
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Ekvatoriaal-Guinea
    GR Kreeka
    GS Lõuna-Georgia ja Lõuna-Sandwichi saared
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Hongkongi erihalduspiirkond
    HM Heardi ja McDonaldi saared
    HN Honduras
    HR Horvaatia
    HT Haiti
    HU Ungari
    ID Indoneesia
    IE Iirimaa
    IL Iisrael
    IM Mani saar
    IN India
    IO Briti India ookeani ala
    IQ Iraak
    IR Iraan
    IS Island
    IT Itaalia
    JE Jersey
    JM Jamaica
    JO Jordaania
    JP Jaapan
    KE Keenia
    KG Kõrgõzstan
    KH Kambodža
    KI Kiribati
    KM Komoorid
    KN Saint Kitts ja Nevis
    KP Põhja-Korea
    KR Lõuna-Korea
    KW Kuveit
    KY Kaimanisaared
    KZ Kasahstan
    LA Laos
    LB Liibanon
    LC Saint Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Libeeria
    LS Lesotho
    LT Leedu
    LU Luksemburg
    LV Läti
    LY Liibüa
    MA Maroko
    MC Monaco
    MD Moldova
    ME Montenegro
    MF Saint-Martin
    MG Madagaskar
    MH Marshalli Saared
    MK Põhja-Makedoonia
    ML Mali
    MM Myanmar (Birma)
    MN Mongoolia
    MO Macau erihalduspiirkond
    MP Põhja-Mariaanid
    MQ Martinique
    MR Mauritaania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldiivid
    MW Malawi
    MX Mehhiko
    MY Malaisia
    MZ Mosambiik
    NA Namiibia
    NC Uus-Kaledoonia
    NE Niger
    NF Norfolk
    NG Nigeeria
    NI Nicaragua
    NL Holland
    NO Norra
    NP Nepal
    NR Nauru
    NU Niue
    NZ Uus-Meremaa
    OM Omaan
    PA Panama
    PE Peruu
    PF Prantsuse Polüneesia
    PG Paapua Uus-Guinea
    PH Filipiinid
    PK Pakistan
    PL Poola
    PM Saint-Pierre ja Miquelon
    PN Pitcairni saared
    PR Puerto Rico
    PS Palestiina alad
    PT Portugal
    PW Belau
    PY Paraguay
    QA Katar
    RE Réunion
    RO Rumeenia
    RS Serbia
    RU Venemaa
    RW Rwanda
    SA Saudi Araabia
    SB Saalomoni Saared
    SC Seišellid
    SD Sudaan
    SE Rootsi
    SG Singapur
    SH Saint Helena
    SI Sloveenia
    SJ Svalbard ja Jan Mayen
    SK Slovakkia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somaalia
    SR Suriname
    SS Lõuna-Sudaan
    ST São Tomé ja Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Süüria
    SZ Svaasimaa
    TC Turks ja Caicos
    TD Tšaad
    TF Prantsuse Lõunaalad
    TG Togo
    TH Tai
    TJ Tadžikistan
    TK Tokelau
    TL Ida-Timor
    TM Türkmenistan
    TN Tuneesia
    TO Tonga
    TR Türgi
    TT Trinidad ja Tobago
    TV Tuvalu
    TW Taiwan
    TZ Tansaania
    UA Ukraina
    UG Uganda
    UM Ühendriikide hajasaared
    US Ameerika Ühendriigid
    UY Uruguay
    UZ Usbekistan
    VA Vatikan
    VC Saint Vincent ja Grenadiinid
    VE Venezuela
    VG Briti Neitsisaared
    VI USA Neitsisaared
    VN Vietnam
    VU Vanuatu
    WF Wallis ja Futuna
    WS Samoa
    XK Kosovo
    YE Jeemen
    YT Mayotte
    ZA Lõuna-Aafrika Vabariik
    ZM Sambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Araabia Ühendemiraadid"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua ja Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albaania"

        Cldr.AM ->
            "Armeenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktika"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Ameerika Samoa"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Austraalia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ahvenamaa"

        Cldr.AZ ->
            "Aserbaidžaan"

        Cldr.BA ->
            "Bosnia ja Hertsegoviina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgia"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaaria"

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
            "Boliivia"

        Cldr.BQ ->
            "Hollandi Kariibi mere saared"

        Cldr.BR ->
            "Brasiilia"

        Cldr.BS ->
            "Bahama"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvet’ saar"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Valgevene"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kookossaared"

        Cldr.CD ->
            "Kongo DV"

        Cldr.CF ->
            "Kesk-Aafrika Vabariik"

        Cldr.CG ->
            "Kongo Vabariik"

        Cldr.CH ->
            "Šveits"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Cooki saared"

        Cldr.CL ->
            "Tšiili"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Hiina"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuuba"

        Cldr.CV ->
            "Roheneemesaared"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Jõulusaar"

        Cldr.CY ->
            "Küpros"

        Cldr.CZ ->
            "Tšehhi"

        Cldr.DE ->
            "Saksamaa"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Taani"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Dominikaani Vabariik"

        Cldr.DZ ->
            "Alžeeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Eesti"

        Cldr.EG ->
            "Egiptus"

        Cldr.EH ->
            "Lääne-Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Hispaania"

        Cldr.ET ->
            "Etioopia"

        Cldr.FI ->
            "Soome"

        Cldr.FJ ->
            "Fidži"

        Cldr.FK ->
            "Falklandi saared"

        Cldr.FM ->
            "Mikroneesia"

        Cldr.FO ->
            "Fääri saared"

        Cldr.FR ->
            "Prantsusmaa"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Ühendkuningriik"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruusia"

        Cldr.GF ->
            "Prantsuse Guajaana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Gröönimaa"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Ekvatoriaal-Guinea"

        Cldr.GR ->
            "Kreeka"

        Cldr.GS ->
            "Lõuna-Georgia ja Lõuna-Sandwichi saared"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkongi erihalduspiirkond"

        Cldr.HM ->
            "Heardi ja McDonaldi saared"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Horvaatia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungari"

        Cldr.ID ->
            "Indoneesia"

        Cldr.IE ->
            "Iirimaa"

        Cldr.IL ->
            "Iisrael"

        Cldr.IM ->
            "Mani saar"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Briti India ookeani ala"

        Cldr.IQ ->
            "Iraak"

        Cldr.IR ->
            "Iraan"

        Cldr.IS ->
            "Island"

        Cldr.IT ->
            "Itaalia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordaania"

        Cldr.JP ->
            "Jaapan"

        Cldr.KE ->
            "Keenia"

        Cldr.KG ->
            "Kõrgõzstan"

        Cldr.KH ->
            "Kambodža"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komoorid"

        Cldr.KN ->
            "Saint Kitts ja Nevis"

        Cldr.KP ->
            "Põhja-Korea"

        Cldr.KR ->
            "Lõuna-Korea"

        Cldr.KW ->
            "Kuveit"

        Cldr.KY ->
            "Kaimanisaared"

        Cldr.KZ ->
            "Kasahstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Liibanon"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Libeeria"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Leedu"

        Cldr.LU ->
            "Luksemburg"

        Cldr.LV ->
            "Läti"

        Cldr.LY ->
            "Liibüa"

        Cldr.MA ->
            "Maroko"

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
            "Marshalli Saared"

        Cldr.MK ->
            "Põhja-Makedoonia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birma)"

        Cldr.MN ->
            "Mongoolia"

        Cldr.MO ->
            "Macau erihalduspiirkond"

        Cldr.MP ->
            "Põhja-Mariaanid"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauritaania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldiivid"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mehhiko"

        Cldr.MY ->
            "Malaisia"

        Cldr.MZ ->
            "Mosambiik"

        Cldr.NA ->
            "Namiibia"

        Cldr.NC ->
            "Uus-Kaledoonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk"

        Cldr.NG ->
            "Nigeeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Holland"

        Cldr.NO ->
            "Norra"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Uus-Meremaa"

        Cldr.OM ->
            "Omaan"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peruu"

        Cldr.PF ->
            "Prantsuse Polüneesia"

        Cldr.PG ->
            "Paapua Uus-Guinea"

        Cldr.PH ->
            "Filipiinid"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Poola"

        Cldr.PM ->
            "Saint-Pierre ja Miquelon"

        Cldr.PN ->
            "Pitcairni saared"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestiina alad"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Belau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Rumeenia"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Venemaa"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudi Araabia"

        Cldr.SB ->
            "Saalomoni Saared"

        Cldr.SC ->
            "Seišellid"

        Cldr.SD ->
            "Sudaan"

        Cldr.SE ->
            "Rootsi"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Saint Helena"

        Cldr.SI ->
            "Sloveenia"

        Cldr.SJ ->
            "Svalbard ja Jan Mayen"

        Cldr.SK ->
            "Slovakkia"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somaalia"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Lõuna-Sudaan"

        Cldr.ST ->
            "São Tomé ja Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Süüria"

        Cldr.SZ ->
            "Svaasimaa"

        Cldr.TC ->
            "Turks ja Caicos"

        Cldr.TD ->
            "Tšaad"

        Cldr.TF ->
            "Prantsuse Lõunaalad"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tai"

        Cldr.TJ ->
            "Tadžikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Ida-Timor"

        Cldr.TM ->
            "Türkmenistan"

        Cldr.TN ->
            "Tuneesia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Türgi"

        Cldr.TT ->
            "Trinidad ja Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tansaania"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Ühendriikide hajasaared"

        Cldr.US ->
            "Ameerika Ühendriigid"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Usbekistan"

        Cldr.VA ->
            "Vatikan"

        Cldr.VC ->
            "Saint Vincent ja Grenadiinid"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Briti Neitsisaared"

        Cldr.VI ->
            "USA Neitsisaared"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis ja Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jeemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Lõuna-Aafrika Vabariik"

        Cldr.ZM ->
            "Sambia"

        Cldr.ZW ->
            "Zimbabwe"