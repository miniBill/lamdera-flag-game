module Cldr.Icelandic exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Icelandic.

    AD Andorra
    AE Sameinuðu arabísku furstadæmin
    AF Afganistan
    AG Antígva og Barbúda
    AI Angvilla
    AL Albanía
    AM Armenía
    AO Angóla
    AQ Suðurskautslandið
    AR Argentína
    AS Bandaríska Samóa
    AT Austurríki
    AU Ástralía
    AW Arúba
    AX Álandseyjar
    AZ Aserbaídsjan
    BA Bosnía og Hersegóvína
    BB Barbados
    BD Bangladess
    BE Belgía
    BF Búrkína Fasó
    BG Búlgaría
    BH Barein
    BI Búrúndí
    BJ Benín
    BL Sankti Bartólómeusareyjar
    BM Bermúdaeyjar
    BN Brúnei
    BO Bólivía
    BQ Karíbahafshluti Hollands
    BR Brasilía
    BS Bahamaeyjar
    BT Bútan
    BV Bouveteyja
    BW Botsvana
    BY Hvíta-Rússland
    BZ Belís
    CA Kanada
    CC Kókoseyjar (Keeling)
    CD Kongó (Lýðstjórnarlýðveldið)
    CF Mið-Afríkulýðveldið
    CG Kongó (Lýðveldið)
    CH Sviss
    CI Fílabeinsströndin
    CK Cooks-eyjar
    CL Síle
    CM Kamerún
    CN Kína
    CO Kólumbía
    CR Kostaríka
    CU Kúba
    CV Grænhöfðaeyjar
    CW Curacao
    CX Jólaey
    CY Kýpur
    CZ Tékkland
    DE Þýskaland
    DJ Djíbútí
    DK Danmörk
    DM Dóminíka
    DO Dóminíska lýðveldið
    DZ Alsír
    EC Ekvador
    EE Eistland
    EG Egyptaland
    EH Vestur-Sahara
    ER Erítrea
    ES Spánn
    ET Eþíópía
    FI Finnland
    FJ Fídjíeyjar
    FK Falklandseyjar
    FM Míkrónesía
    FO Færeyjar
    FR Frakkland
    GA Gabon
    GB Bretland
    GD Grenada
    GE Georgía
    GF Franska Gvæjana
    GG Guernsey
    GH Gana
    GI Gíbraltar
    GL Grænland
    GM Gambía
    GN Gínea
    GP Gvadelúpeyjar
    GQ Miðbaugs-Gínea
    GR Grikkland
    GS Suður-Georgía og Suður-Sandvíkureyjar
    GT Gvatemala
    GU Gvam
    GW Gínea-Bissá
    GY Gvæjana
    HK Hong Kong
    HM Heard og McDonaldseyjar
    HN Hondúras
    HR Króatía
    HT Haítí
    HU Ungverjaland
    ID Indónesía
    IE Írland
    IL Ísrael
    IM Mön
    IN Indland
    IO Bresku Indlandshafseyjar
    IQ Írak
    IR Íran
    IS Ísland
    IT Ítalía
    JE Jersey
    JM Jamaíka
    JO Jórdanía
    JP Japan
    KE Kenía
    KG Kirgistan
    KH Kambódía
    KI Kíribatí
    KM Kómoreyjar
    KN Sankti Kitts og Nevis
    KP Norður-Kórea
    KR Suður-Kórea
    KW Kúveit
    KY Caymaneyjar
    KZ Kasakstan
    LA Laos
    LB Líbanon
    LC Sankti Lúsía
    LI Liechtenstein
    LK Srí Lanka
    LR Líbería
    LS Lesótó
    LT Litháen
    LU Lúxemborg
    LV Lettland
    LY Líbía
    MA Marokkó
    MC Mónakó
    MD Moldóva
    ME Svartfjallaland
    MF Saint-Martin
    MG Madagaskar
    MH Marshalleyjar
    MK Norður-Makedónía
    ML Malí
    MM Mjanmar (Búrma)
    MN Mongólía
    MO Makaó
    MP Norður-Maríanaeyjar
    MQ Martiník
    MR Máritanía
    MS Montserrat
    MT Malta
    MU Máritíus
    MV Maldíveyjar
    MW Malaví
    MX Mexíkó
    MY Malasía
    MZ Mósambík
    NA Namibía
    NC Nýja-Kaledónía
    NE Níger
    NF Norfolkeyja
    NG Nígería
    NI Níkaragva
    NL Holland
    NO Noregur
    NP Nepal
    NR Nárú
    NU Niue
    NZ Nýja-Sjáland
    OM Óman
    PA Panama
    PE Perú
    PF Franska Pólýnesía
    PG Papúa Nýja-Gínea
    PH Filippseyjar
    PK Pakistan
    PL Pólland
    PM Sankti Pierre og Miquelon
    PN Pitcairn-eyjar
    PR Púertó Ríkó
    PS Palestína
    PT Portúgal
    PW Palá
    PY Paragvæ
    QA Katar
    RE Réunion
    RO Rúmenía
    RS Serbía
    RU Rússland
    RW Rúanda
    SA Sádi-Arabía
    SB Salómonseyjar
    SC Seychelles-eyjar
    SD Súdan
    SE Svíþjóð
    SG Singapúr
    SH Sankti Helena
    SI Slóvenía
    SJ Svalbarði og Jan Mayen
    SK Slóvakía
    SL Síerra Leóne
    SM San Marínó
    SN Senegal
    SO Sómalía
    SR Súrínam
    SS Suður-Súdan
    ST Saó Tóme og Prinsípe
    SV El Salvador
    SX Sint Maarten
    SY Sýrland
    SZ Svasíland
    TC Turks- og Caicoseyjar
    TD Tsjad
    TF Frönsku suðlægu landsvæðin
    TG Tógó
    TH Taíland
    TJ Tadsíkistan
    TK Tókelá
    TL Austur-Tímor
    TM Túrkmenistan
    TN Túnis
    TO Tonga
    TR Tyrkland
    TT Trínidad og Tóbagó
    TV Túvalú
    TW Taívan
    TZ Tansanía
    UA Úkraína
    UG Úganda
    UM Smáeyjar Bandaríkjanna
    US Bandaríkin
    UY Úrúgvæ
    UZ Úsbekistan
    VA Vatíkanið
    VC Sankti Vinsent og Grenadíneyjar
    VE Venesúela
    VG Bresku Jómfrúaeyjar
    VI Bandarísku Jómfrúaeyjar
    VN Víetnam
    VU Vanúatú
    WF Wallis- og Fútúnaeyjar
    WS Samóa
    XK Kósóvó
    YE Jemen
    YT Mayotte
    ZA Suður-Afríka
    ZM Sambía
    ZW Simbabve
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Sameinuðu arabísku furstadæmin"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antígva og Barbúda"

        Cldr.AI ->
            "Angvilla"

        Cldr.AL ->
            "Albanía"

        Cldr.AM ->
            "Armenía"

        Cldr.AO ->
            "Angóla"

        Cldr.AQ ->
            "Suðurskautslandið"

        Cldr.AR ->
            "Argentína"

        Cldr.AS ->
            "Bandaríska Samóa"

        Cldr.AT ->
            "Austurríki"

        Cldr.AU ->
            "Ástralía"

        Cldr.AW ->
            "Arúba"

        Cldr.AX ->
            "Álandseyjar"

        Cldr.AZ ->
            "Aserbaídsjan"

        Cldr.BA ->
            "Bosnía og Hersegóvína"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladess"

        Cldr.BE ->
            "Belgía"

        Cldr.BF ->
            "Búrkína Fasó"

        Cldr.BG ->
            "Búlgaría"

        Cldr.BH ->
            "Barein"

        Cldr.BI ->
            "Búrúndí"

        Cldr.BJ ->
            "Benín"

        Cldr.BL ->
            "Sankti Bartólómeusareyjar"

        Cldr.BM ->
            "Bermúdaeyjar"

        Cldr.BN ->
            "Brúnei"

        Cldr.BO ->
            "Bólivía"

        Cldr.BQ ->
            "Karíbahafshluti Hollands"

        Cldr.BR ->
            "Brasilía"

        Cldr.BS ->
            "Bahamaeyjar"

        Cldr.BT ->
            "Bútan"

        Cldr.BV ->
            "Bouveteyja"

        Cldr.BW ->
            "Botsvana"

        Cldr.BY ->
            "Hvíta-Rússland"

        Cldr.BZ ->
            "Belís"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kókoseyjar (Keeling)"

        Cldr.CD ->
            "Kongó (Lýðstjórnarlýðveldið)"

        Cldr.CF ->
            "Mið-Afríkulýðveldið"

        Cldr.CG ->
            "Kongó (Lýðveldið)"

        Cldr.CH ->
            "Sviss"

        Cldr.CI ->
            "Fílabeinsströndin"

        Cldr.CK ->
            "Cooks-eyjar"

        Cldr.CL ->
            "Síle"

        Cldr.CM ->
            "Kamerún"

        Cldr.CN ->
            "Kína"

        Cldr.CO ->
            "Kólumbía"

        Cldr.CR ->
            "Kostaríka"

        Cldr.CU ->
            "Kúba"

        Cldr.CV ->
            "Grænhöfðaeyjar"

        Cldr.CW ->
            "Curacao"

        Cldr.CX ->
            "Jólaey"

        Cldr.CY ->
            "Kýpur"

        Cldr.CZ ->
            "Tékkland"

        Cldr.DE ->
            "Þýskaland"

        Cldr.DJ ->
            "Djíbútí"

        Cldr.DK ->
            "Danmörk"

        Cldr.DM ->
            "Dóminíka"

        Cldr.DO ->
            "Dóminíska lýðveldið"

        Cldr.DZ ->
            "Alsír"

        Cldr.EC ->
            "Ekvador"

        Cldr.EE ->
            "Eistland"

        Cldr.EG ->
            "Egyptaland"

        Cldr.EH ->
            "Vestur-Sahara"

        Cldr.ER ->
            "Erítrea"

        Cldr.ES ->
            "Spánn"

        Cldr.ET ->
            "Eþíópía"

        Cldr.FI ->
            "Finnland"

        Cldr.FJ ->
            "Fídjíeyjar"

        Cldr.FK ->
            "Falklandseyjar"

        Cldr.FM ->
            "Míkrónesía"

        Cldr.FO ->
            "Færeyjar"

        Cldr.FR ->
            "Frakkland"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Bretland"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgía"

        Cldr.GF ->
            "Franska Gvæjana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gíbraltar"

        Cldr.GL ->
            "Grænland"

        Cldr.GM ->
            "Gambía"

        Cldr.GN ->
            "Gínea"

        Cldr.GP ->
            "Gvadelúpeyjar"

        Cldr.GQ ->
            "Miðbaugs-Gínea"

        Cldr.GR ->
            "Grikkland"

        Cldr.GS ->
            "Suður-Georgía og Suður-Sandvíkureyjar"

        Cldr.GT_ ->
            "Gvatemala"

        Cldr.GU ->
            "Gvam"

        Cldr.GW ->
            "Gínea-Bissá"

        Cldr.GY ->
            "Gvæjana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Heard og McDonaldseyjar"

        Cldr.HN ->
            "Hondúras"

        Cldr.HR ->
            "Króatía"

        Cldr.HT ->
            "Haítí"

        Cldr.HU ->
            "Ungverjaland"

        Cldr.ID ->
            "Indónesía"

        Cldr.IE ->
            "Írland"

        Cldr.IL ->
            "Ísrael"

        Cldr.IM ->
            "Mön"

        Cldr.IN ->
            "Indland"

        Cldr.IO ->
            "Bresku Indlandshafseyjar"

        Cldr.IQ ->
            "Írak"

        Cldr.IR ->
            "Íran"

        Cldr.IS ->
            "Ísland"

        Cldr.IT ->
            "Ítalía"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaíka"

        Cldr.JO ->
            "Jórdanía"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenía"

        Cldr.KG ->
            "Kirgistan"

        Cldr.KH ->
            "Kambódía"

        Cldr.KI ->
            "Kíribatí"

        Cldr.KM ->
            "Kómoreyjar"

        Cldr.KN ->
            "Sankti Kitts og Nevis"

        Cldr.KP ->
            "Norður-Kórea"

        Cldr.KR ->
            "Suður-Kórea"

        Cldr.KW ->
            "Kúveit"

        Cldr.KY ->
            "Caymaneyjar"

        Cldr.KZ ->
            "Kasakstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Líbanon"

        Cldr.LC ->
            "Sankti Lúsía"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Srí Lanka"

        Cldr.LR ->
            "Líbería"

        Cldr.LS ->
            "Lesótó"

        Cldr.LT_ ->
            "Litháen"

        Cldr.LU ->
            "Lúxemborg"

        Cldr.LV ->
            "Lettland"

        Cldr.LY ->
            "Líbía"

        Cldr.MA ->
            "Marokkó"

        Cldr.MC ->
            "Mónakó"

        Cldr.MD ->
            "Moldóva"

        Cldr.ME ->
            "Svartfjallaland"

        Cldr.MF ->
            "Saint-Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshalleyjar"

        Cldr.MK ->
            "Norður-Makedónía"

        Cldr.ML ->
            "Malí"

        Cldr.MM ->
            "Mjanmar (Búrma)"

        Cldr.MN ->
            "Mongólía"

        Cldr.MO ->
            "Makaó"

        Cldr.MP ->
            "Norður-Maríanaeyjar"

        Cldr.MQ ->
            "Martiník"

        Cldr.MR ->
            "Máritanía"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Máritíus"

        Cldr.MV ->
            "Maldíveyjar"

        Cldr.MW ->
            "Malaví"

        Cldr.MX ->
            "Mexíkó"

        Cldr.MY ->
            "Malasía"

        Cldr.MZ ->
            "Mósambík"

        Cldr.NA ->
            "Namibía"

        Cldr.NC ->
            "Nýja-Kaledónía"

        Cldr.NE ->
            "Níger"

        Cldr.NF ->
            "Norfolkeyja"

        Cldr.NG ->
            "Nígería"

        Cldr.NI ->
            "Níkaragva"

        Cldr.NL ->
            "Holland"

        Cldr.NO ->
            "Noregur"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nárú"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nýja-Sjáland"

        Cldr.OM ->
            "Óman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Perú"

        Cldr.PF ->
            "Franska Pólýnesía"

        Cldr.PG ->
            "Papúa Nýja-Gínea"

        Cldr.PH ->
            "Filippseyjar"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Pólland"

        Cldr.PM ->
            "Sankti Pierre og Miquelon"

        Cldr.PN ->
            "Pitcairn-eyjar"

        Cldr.PR ->
            "Púertó Ríkó"

        Cldr.PS ->
            "Palestína"

        Cldr.PT ->
            "Portúgal"

        Cldr.PW ->
            "Palá"

        Cldr.PY ->
            "Paragvæ"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Rúmenía"

        Cldr.RS ->
            "Serbía"

        Cldr.RU ->
            "Rússland"

        Cldr.RW ->
            "Rúanda"

        Cldr.SA ->
            "Sádi-Arabía"

        Cldr.SB ->
            "Salómonseyjar"

        Cldr.SC ->
            "Seychelles-eyjar"

        Cldr.SD ->
            "Súdan"

        Cldr.SE ->
            "Svíþjóð"

        Cldr.SG ->
            "Singapúr"

        Cldr.SH ->
            "Sankti Helena"

        Cldr.SI ->
            "Slóvenía"

        Cldr.SJ ->
            "Svalbarði og Jan Mayen"

        Cldr.SK ->
            "Slóvakía"

        Cldr.SL ->
            "Síerra Leóne"

        Cldr.SM ->
            "San Marínó"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Sómalía"

        Cldr.SR ->
            "Súrínam"

        Cldr.SS ->
            "Suður-Súdan"

        Cldr.ST ->
            "Saó Tóme og Prinsípe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Sýrland"

        Cldr.SZ ->
            "Svasíland"

        Cldr.TC ->
            "Turks- og Caicoseyjar"

        Cldr.TD ->
            "Tsjad"

        Cldr.TF ->
            "Frönsku suðlægu landsvæðin"

        Cldr.TG ->
            "Tógó"

        Cldr.TH ->
            "Taíland"

        Cldr.TJ ->
            "Tadsíkistan"

        Cldr.TK ->
            "Tókelá"

        Cldr.TL ->
            "Austur-Tímor"

        Cldr.TM ->
            "Túrkmenistan"

        Cldr.TN ->
            "Túnis"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Tyrkland"

        Cldr.TT ->
            "Trínidad og Tóbagó"

        Cldr.TV ->
            "Túvalú"

        Cldr.TW ->
            "Taívan"

        Cldr.TZ ->
            "Tansanía"

        Cldr.UA ->
            "Úkraína"

        Cldr.UG ->
            "Úganda"

        Cldr.UM ->
            "Smáeyjar Bandaríkjanna"

        Cldr.US ->
            "Bandaríkin"

        Cldr.UY ->
            "Úrúgvæ"

        Cldr.UZ ->
            "Úsbekistan"

        Cldr.VA ->
            "Vatíkanið"

        Cldr.VC ->
            "Sankti Vinsent og Grenadíneyjar"

        Cldr.VE ->
            "Venesúela"

        Cldr.VG ->
            "Bresku Jómfrúaeyjar"

        Cldr.VI ->
            "Bandarísku Jómfrúaeyjar"

        Cldr.VN ->
            "Víetnam"

        Cldr.VU ->
            "Vanúatú"

        Cldr.WF ->
            "Wallis- og Fútúnaeyjar"

        Cldr.WS ->
            "Samóa"

        Cldr.XK ->
            "Kósóvó"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Suður-Afríka"

        Cldr.ZM ->
            "Sambía"

        Cldr.ZW ->
            "Simbabve"