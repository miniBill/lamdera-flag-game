module Cldr.Turkmen exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Turkmen.

    AD Andorra
    AE Birleşen Arap Emirlikleri
    AF Owganystan
    AG Antigua we Barbuda
    AI Angilýa
    AL Albaniýa
    AM Ermenistan
    AO Angola
    AQ Antarktika
    AR Argentina
    AS Amerikan Samoasy
    AT Awstriýa
    AU Awstraliýa
    AW Aruba
    AX Aland adalary
    AZ Azerbaýjan
    BA Bosniýa we Gersegowina
    BB Barbados
    BD Bangladeş
    BE Belgiýa
    BF Burkina-Faso
    BG Bolgariýa
    BH Bahreýn
    BI Burundi
    BJ Benin
    BL Sen-Bartelemi
    BM Bermuda
    BN Bruneý
    BO Boliwiýa
    BQ Karib Niderlandlary
    BR Braziliýa
    BS Bagama adalary
    BT Butan
    BV Buwe adasy
    BW Botswana
    BY Belarus
    BZ Beliz
    CA Kanada
    CC Kokos (Kiling) adalary
    CD Kongo (KDR)
    CF Merkezi Afrika Respublikasy
    CG Kongo (Respublika)
    CH Şweýsariýa
    CI Kot-d’Iwuar
    CK Kuk adalary
    CL Çili
    CM Kamerun
    CN Hytaý
    CO Kolumbiýa
    CR Kosta-Rika
    CU Kuba
    CV Kabo-Werde
    CW Kýurasao
    CX Roždestwo adasy
    CY Kipr
    CZ Çeh Respublikasy
    DE Germaniýa
    DJ Jibuti
    DK Daniýa
    DM Dominika
    DO Dominikan Respublikasy
    DZ Alžir
    EC Ekwador
    EE Estoniýa
    EG Müsür
    EH Günbatar Sahara
    ER Eritreýa
    ES Ispaniýa
    ET Efiopiýa
    FI Finlýandiýa
    FJ Fiji
    FK Folklend adalary
    FM Mikroneziýa
    FO Farer adalary
    FR Fransiýa
    GA Gabon
    GB Birleşen Patyşalyk
    GD Grenada
    GE Gruziýa
    GF Fransuz Gwianasy
    GG Gernsi
    GH Gana
    GI Gibraltar
    GL Grenlandiýa
    GM Gambiýa
    GN Gwineýa
    GP Gwadelupa
    GQ Ekwatorial Gwineýa
    GR Gresiýa
    GS Günorta Georgiýa we Günorta Sendwiç adasy
    GT Gwatemala
    GU Guam
    GW Gwineýa-Bisau
    GY Gaýana
    HK Gonkong
    HM Herd we Makdonald adalary
    HN Gonduras
    HR Horwatiýa
    HT Gaiti
    HU Wengriýa
    ID Indoneziýa
    IE Irlandiýa
    IL Ysraýyl
    IM Men adasy
    IN Hindistan
    IO Britaniýanyň Hindi okeanyndaky territoriýalary
    IQ Yrak
    IR Eýran
    IS Islandiýa
    IT Italiýa
    JE Jersi
    JM Ýamaýka
    JO Iordaniýa
    JP Ýaponiýa
    KE Keniýa
    KG Gyrgyzystan
    KH Kamboja
    KI Kiribati
    KM Komor adalary
    KN Sent-Kits we Newis
    KP Demirgazyk Koreýa
    KR Günorta Koreýa
    KW Kuweýt
    KY Kaýman adalary
    KZ Gazagystan
    LA Laos
    LB Liwan
    LC Sent-Lýusiýa
    LI Lihtenşteýn
    LK Şri-Lanka
    LR Liberiýa
    LS Lesoto
    LT Litwa
    LU Lýuksemburg
    LV Latwiýa
    LY Liwiýa
    MA Marokko
    MC Monako
    MD Moldowa
    ME Çernogoriýa
    MF Sen-Marten
    MG Madagaskar
    MH Marşall adalary
    MK Demirgazyk Makedoniýa
    ML Mali
    MM Mýanma (Birma)
    MN Mongoliýa
    MO Makao
    MP Demirgazyk Mariana adalary
    MQ Martinika
    MR Mawritaniýa
    MS Monserrat
    MT Malta
    MU Mawrikiý
    MV Maldiwler
    MW Malawi
    MX Meksika
    MY Malaýziýa
    MZ Mozambik
    NA Namibiýa
    NC Täze Kaledoniýa
    NE Niger
    NF Norfolk adasy
    NG Nigeriýa
    NI Nikaragua
    NL Niderlandlar
    NO Norwegiýa
    NP Nepal
    NR Nauru
    NU Niue
    NZ Täze Zelandiýa
    OM Oman
    PA Panama
    PE Peru
    PF Fransuz Polineziýasy
    PG Papua - Täze Gwineýa
    PH Filippinler
    PK Pakistan
    PL Polşa
    PM Sen-Pýer we Mikelon
    PN Pitkern adalary
    PR Puerto-Riko
    PS Palestina
    PT Portugaliýa
    PW Palau
    PY Paragwaý
    QA Katar
    RE Reýunýon
    RO Rumyniýa
    RS Serbiýa
    RU Russiýa
    RW Ruanda
    SA Saud Arabystany
    SB Solomon adalary
    SC Seýşel adalary
    SD Sudan
    SE Şwesiýa
    SG Singapur
    SH Keramatly Ýelena adasy
    SI Sloweniýa
    SJ Şpisbergen we Ýan-Maýen
    SK Slowakiýa
    SL Sýerra-Leone
    SM San-Marino
    SN Senegal
    SO Somali
    SR Surinam
    SS Günorta Sudan
    ST San-Tome we Prinsipi
    SV Salwador
    SX Sint-Marten
    SY Siriýa
    SZ Eswatini
    TC Terks we Kaýkos adalary
    TD Çad
    TF Fransuz günorta territoriýalary
    TG Togo
    TH Taýland
    TJ Täjigistan
    TK Tokelau
    TL Gündogar Timor
    TM Türkmenistan
    TN Tunis
    TO Tonga
    TR Türkiýe
    TT Trinidad we Tobago
    TV Tuwalu
    TW Taýwan
    TZ Tanzaniýa
    UA Ukraina
    UG Uganda
    UM ABŞ-nyň daşarky adalary
    US Amerikanyň Birleşen Ştatlary
    UY Urugwaý
    UZ Özbegistan
    VA Watikan
    VC Sent-Winsent we Grenadinler
    VE Wenesuela
    VG Britan Wirgin adalary
    VI ABŞ-nyň Wirgin adalary
    VN Wýetnam
    VU Wanuatu
    WF Uollis we Futuna
    WS Samoa
    XK Kosowo
    YE Ýemen
    YT Maýotta
    ZA Günorta Afrika
    ZM Zambiýa
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Birleşen Arap Emirlikleri"

        Cldr.AF ->
            "Owganystan"

        Cldr.AG ->
            "Antigua we Barbuda"

        Cldr.AI ->
            "Angilýa"

        Cldr.AL ->
            "Albaniýa"

        Cldr.AM ->
            "Ermenistan"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktika"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Amerikan Samoasy"

        Cldr.AT ->
            "Awstriýa"

        Cldr.AU ->
            "Awstraliýa"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Aland adalary"

        Cldr.AZ ->
            "Azerbaýjan"

        Cldr.BA ->
            "Bosniýa we Gersegowina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladeş"

        Cldr.BE ->
            "Belgiýa"

        Cldr.BF ->
            "Burkina-Faso"

        Cldr.BG ->
            "Bolgariýa"

        Cldr.BH ->
            "Bahreýn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Sen-Bartelemi"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Bruneý"

        Cldr.BO ->
            "Boliwiýa"

        Cldr.BQ ->
            "Karib Niderlandlary"

        Cldr.BR ->
            "Braziliýa"

        Cldr.BS ->
            "Bagama adalary"

        Cldr.BT ->
            "Butan"

        Cldr.BV ->
            "Buwe adasy"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Beliz"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokos (Kiling) adalary"

        Cldr.CD ->
            "Kongo (KDR)"

        Cldr.CF ->
            "Merkezi Afrika Respublikasy"

        Cldr.CG ->
            "Kongo (Respublika)"

        Cldr.CH ->
            "Şweýsariýa"

        Cldr.CI ->
            "Kot-d’Iwuar"

        Cldr.CK ->
            "Kuk adalary"

        Cldr.CL ->
            "Çili"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Hytaý"

        Cldr.CO ->
            "Kolumbiýa"

        Cldr.CR ->
            "Kosta-Rika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kabo-Werde"

        Cldr.CW ->
            "Kýurasao"

        Cldr.CX ->
            "Roždestwo adasy"

        Cldr.CY ->
            "Kipr"

        Cldr.CZ ->
            "Çeh Respublikasy"

        Cldr.DE ->
            "Germaniýa"

        Cldr.DJ ->
            "Jibuti"

        Cldr.DK ->
            "Daniýa"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikan Respublikasy"

        Cldr.DZ ->
            "Alžir"

        Cldr.EC ->
            "Ekwador"

        Cldr.EE ->
            "Estoniýa"

        Cldr.EG ->
            "Müsür"

        Cldr.EH ->
            "Günbatar Sahara"

        Cldr.ER ->
            "Eritreýa"

        Cldr.ES ->
            "Ispaniýa"

        Cldr.ET ->
            "Efiopiýa"

        Cldr.FI ->
            "Finlýandiýa"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Folklend adalary"

        Cldr.FM ->
            "Mikroneziýa"

        Cldr.FO ->
            "Farer adalary"

        Cldr.FR ->
            "Fransiýa"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Birleşen Patyşalyk"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruziýa"

        Cldr.GF ->
            "Fransuz Gwianasy"

        Cldr.GG ->
            "Gernsi"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grenlandiýa"

        Cldr.GM ->
            "Gambiýa"

        Cldr.GN ->
            "Gwineýa"

        Cldr.GP ->
            "Gwadelupa"

        Cldr.GQ ->
            "Ekwatorial Gwineýa"

        Cldr.GR ->
            "Gresiýa"

        Cldr.GS ->
            "Günorta Georgiýa we Günorta Sendwiç adasy"

        Cldr.GT_ ->
            "Gwatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gwineýa-Bisau"

        Cldr.GY ->
            "Gaýana"

        Cldr.HK ->
            "Gonkong"

        Cldr.HM ->
            "Herd we Makdonald adalary"

        Cldr.HN ->
            "Gonduras"

        Cldr.HR ->
            "Horwatiýa"

        Cldr.HT ->
            "Gaiti"

        Cldr.HU ->
            "Wengriýa"

        Cldr.ID ->
            "Indoneziýa"

        Cldr.IE ->
            "Irlandiýa"

        Cldr.IL ->
            "Ysraýyl"

        Cldr.IM ->
            "Men adasy"

        Cldr.IN ->
            "Hindistan"

        Cldr.IO ->
            "Britaniýanyň Hindi okeanyndaky territoriýalary"

        Cldr.IQ ->
            "Yrak"

        Cldr.IR ->
            "Eýran"

        Cldr.IS ->
            "Islandiýa"

        Cldr.IT ->
            "Italiýa"

        Cldr.JE ->
            "Jersi"

        Cldr.JM ->
            "Ýamaýka"

        Cldr.JO ->
            "Iordaniýa"

        Cldr.JP ->
            "Ýaponiýa"

        Cldr.KE ->
            "Keniýa"

        Cldr.KG ->
            "Gyrgyzystan"

        Cldr.KH ->
            "Kamboja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komor adalary"

        Cldr.KN ->
            "Sent-Kits we Newis"

        Cldr.KP ->
            "Demirgazyk Koreýa"

        Cldr.KR ->
            "Günorta Koreýa"

        Cldr.KW ->
            "Kuweýt"

        Cldr.KY ->
            "Kaýman adalary"

        Cldr.KZ ->
            "Gazagystan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Liwan"

        Cldr.LC ->
            "Sent-Lýusiýa"

        Cldr.LI ->
            "Lihtenşteýn"

        Cldr.LK ->
            "Şri-Lanka"

        Cldr.LR ->
            "Liberiýa"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Litwa"

        Cldr.LU ->
            "Lýuksemburg"

        Cldr.LV ->
            "Latwiýa"

        Cldr.LY ->
            "Liwiýa"

        Cldr.MA ->
            "Marokko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldowa"

        Cldr.ME ->
            "Çernogoriýa"

        Cldr.MF ->
            "Sen-Marten"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marşall adalary"

        Cldr.MK ->
            "Demirgazyk Makedoniýa"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mýanma (Birma)"

        Cldr.MN ->
            "Mongoliýa"

        Cldr.MO ->
            "Makao"

        Cldr.MP ->
            "Demirgazyk Mariana adalary"

        Cldr.MQ ->
            "Martinika"

        Cldr.MR ->
            "Mawritaniýa"

        Cldr.MS ->
            "Monserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mawrikiý"

        Cldr.MV ->
            "Maldiwler"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Meksika"

        Cldr.MY ->
            "Malaýziýa"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibiýa"

        Cldr.NC ->
            "Täze Kaledoniýa"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk adasy"

        Cldr.NG ->
            "Nigeriýa"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Niderlandlar"

        Cldr.NO ->
            "Norwegiýa"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Täze Zelandiýa"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Fransuz Polineziýasy"

        Cldr.PG ->
            "Papua - Täze Gwineýa"

        Cldr.PH ->
            "Filippinler"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polşa"

        Cldr.PM ->
            "Sen-Pýer we Mikelon"

        Cldr.PN ->
            "Pitkern adalary"

        Cldr.PR ->
            "Puerto-Riko"

        Cldr.PS ->
            "Palestina"

        Cldr.PT ->
            "Portugaliýa"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragwaý"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Reýunýon"

        Cldr.RO ->
            "Rumyniýa"

        Cldr.RS ->
            "Serbiýa"

        Cldr.RU ->
            "Russiýa"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saud Arabystany"

        Cldr.SB ->
            "Solomon adalary"

        Cldr.SC ->
            "Seýşel adalary"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Şwesiýa"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Keramatly Ýelena adasy"

        Cldr.SI ->
            "Sloweniýa"

        Cldr.SJ ->
            "Şpisbergen we Ýan-Maýen"

        Cldr.SK ->
            "Slowakiýa"

        Cldr.SL ->
            "Sýerra-Leone"

        Cldr.SM ->
            "San-Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somali"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Günorta Sudan"

        Cldr.ST ->
            "San-Tome we Prinsipi"

        Cldr.SV ->
            "Salwador"

        Cldr.SX ->
            "Sint-Marten"

        Cldr.SY ->
            "Siriýa"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Terks we Kaýkos adalary"

        Cldr.TD ->
            "Çad"

        Cldr.TF ->
            "Fransuz günorta territoriýalary"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Taýland"

        Cldr.TJ ->
            "Täjigistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Gündogar Timor"

        Cldr.TM ->
            "Türkmenistan"

        Cldr.TN ->
            "Tunis"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Türkiýe"

        Cldr.TT ->
            "Trinidad we Tobago"

        Cldr.TV ->
            "Tuwalu"

        Cldr.TW ->
            "Taýwan"

        Cldr.TZ ->
            "Tanzaniýa"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "ABŞ-nyň daşarky adalary"

        Cldr.US ->
            "Amerikanyň Birleşen Ştatlary"

        Cldr.UY ->
            "Urugwaý"

        Cldr.UZ ->
            "Özbegistan"

        Cldr.VA ->
            "Watikan"

        Cldr.VC ->
            "Sent-Winsent we Grenadinler"

        Cldr.VE ->
            "Wenesuela"

        Cldr.VG ->
            "Britan Wirgin adalary"

        Cldr.VI ->
            "ABŞ-nyň Wirgin adalary"

        Cldr.VN ->
            "Wýetnam"

        Cldr.VU ->
            "Wanuatu"

        Cldr.WF ->
            "Uollis we Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosowo"

        Cldr.YE ->
            "Ýemen"

        Cldr.YT ->
            "Maýotta"

        Cldr.ZA ->
            "Günorta Afrika"

        Cldr.ZM ->
            "Zambiýa"

        Cldr.ZW ->
            "Zimbabwe"