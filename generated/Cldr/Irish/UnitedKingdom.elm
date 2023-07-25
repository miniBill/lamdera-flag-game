module Cldr.Irish.UnitedKingdom exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Irish


{-| Name for `CountryCode` in Irish - United Kingdom.

This is identical to the Irish version.

    AD Andóra
    AE Aontas na nÉimíríochtaí Arabacha
    AF an Afganastáin
    AG Antigua agus Barbúda
    AI Angaíle
    AL an Albáin
    AM an Airméin
    AO Angóla
    AQ Antartaice
    AR an Airgintín
    AS Samó Mheiriceá
    AT an Ostair
    AU an Astráil
    AW Arúba
    AX Oileáin Åland
    AZ an Asarbaiseáin
    BA an Bhoisnia agus an Heirseagaivéin
    BB Barbadós
    BD an Bhanglaidéis
    BE an Bheilg
    BF Buircíne Fasó
    BG an Bhulgáir
    BH Bairéin
    BI an Bhurúin
    BJ Beinin
    BL Saint Barthélemy
    BM Beirmiúda
    BN Brúiné
    BO an Bholaiv
    BQ an Ísiltír Chairibeach
    BR an Bhrasaíl
    BS na Bahámaí
    BT an Bhútáin
    BV Oileán Bouvet
    BW an Bhotsuáin
    BY an Bhealarúis
    BZ an Bheilís
    CA Ceanada
    CC Oileáin Cocos (Keeling)
    CD Poblacht Dhaonlathach an Chongó
    CF Poblacht na hAfraice Láir
    CG Congó-Brazzaville
    CH an Eilvéis
    CI an Cósta Eabhair
    CK Oileáin Cook
    CL an tSile
    CM Camarún
    CN an tSín
    CO an Cholóim
    CR Cósta Ríce
    CU Cúba
    CV Rinn Verde
    CW Cúrasó
    CX Oileán na Nollag
    CY an Chipir
    CZ an tSeicia
    DE an Ghearmáin
    DJ Djibouti
    DK an Danmhairg
    DM Doiminice
    DO an Phoblacht Dhoiminiceach
    DZ an Ailgéir
    EC Eacuadór
    EE an Eastóin
    EG an Éigipt
    EH an Sahára Thiar
    ER an Eiritré
    ES an Spáinn
    ET an Aetóip
    FI an Fhionlainn
    FJ Fidsí
    FK Oileáin Fháclainne
    FM an Mhicrinéis
    FO Oileáin Fharó
    FR an Fhrainc
    GA an Ghabúin
    GB an Ríocht Aontaithe
    GD Greanáda
    GE an tSeoirsia
    GF Guáin na Fraince
    GG Geansaí
    GH Gána
    GI Giobráltar
    GL an Ghraonlainn
    GM an Ghaimbia
    GN an Ghuine
    GP Guadalúip
    GQ an Ghuine Mheánchiorclach
    GR an Ghréig
    GS an tSeoirsia Theas agus Oileáin Sandwich Theas
    GT Guatamala
    GU Guam
    GW Guine Bissau
    GY an Ghuáin
    HK Sainréigiún Riaracháin Hong Cong, Daonphoblacht na Síne
    HM Oileán Heard agus Oileáin McDonald
    HN Hondúras
    HR an Chróit
    HT Háítí
    HU an Ungáir
    ID an Indinéis
    IE Éire
    IL Iosrael
    IM Oileán Mhanann
    IN an India
    IO Críoch Aigéan Indiach na Breataine
    IQ an Iaráic
    IR an Iaráin
    IS an Íoslainn
    IT an Iodáil
    JE Geirsí
    JM Iamáice
    JO an Iordáin
    JP an tSeapáin
    KE an Chéinia
    KG an Chirgeastáin
    KH an Chambóid
    KI Ciribeas
    KM Oileáin Chomóra
    KN San Críostóir-Nimheas
    KP an Chóiré Thuaidh
    KR an Chóiré Theas
    KW Cuáit
    KY Oileáin Cayman
    KZ an Chasacstáin
    LA Laos
    LB an Liobáin
    LC Saint Lucia
    LI Lichtinstéin
    LK Srí Lanca
    LR an Libéir
    LS Leosóta
    LT an Liotuáin
    LU Lucsamburg
    LV an Laitvia
    LY an Libia
    MA Maracó
    MC Monacó
    MD an Mholdóiv
    ME Montainéagró
    MF Saint-Martin
    MG Madagascar
    MH Oileáin Marshall
    MK an Mhacadóin Thuaidh
    ML Mailí
    MM Maenmar (Burma)
    MN an Mhongóil
    MO Sainréigiún Riaracháin Macao, Daonphoblacht na Síne
    MP na hOileáin Mháirianacha Thuaidh
    MQ Martinique
    MR an Mháratáin
    MS Montsarat
    MT Málta
    MU Oileán Mhuirís
    MV Oileáin Mhaildíve
    MW an Mhaláiv
    MX Meicsiceo
    MY an Mhalaeisia
    MZ Mósaimbíc
    NA an Namaib
    NC an Nua-Chaladóin
    NE an Nígir
    NF Oileán Norfolk
    NG an Nigéir
    NI Nicearagua
    NL an Ísiltír
    NO an Iorua
    NP Neipeal
    NR Nárú
    NU Niue
    NZ an Nua-Shéalainn
    OM Óman
    PA Panama
    PE Peiriú
    PF Polainéis na Fraince
    PG Nua-Ghuine Phapua
    PH na hOileáin Fhilipíneacha
    PK an Phacastáin
    PL an Pholainn
    PM San Pierre agus Miquelon
    PN Oileáin Pitcairn
    PR Pórtó Ríce
    PS na Críocha Palaistíneacha
    PT an Phortaingéil
    PW Oileáin Palau
    PY Paragua
    QA Catar
    RE La Réunion
    RO an Rómáin
    RS an tSeirbia
    RU an Rúis
    RW Ruanda
    SA an Araib Shádach
    SB Oileáin Sholaimh
    SC na Séiséil
    SD an tSúdáin
    SE an tSualainn
    SG Singeapór
    SH San Héilin
    SI an tSlóivéin
    SJ Svalbard agus Jan Mayen
    SK an tSlóvaic
    SL Siarra Leon
    SM San Mairíne
    SN an tSeineagáil
    SO an tSomáil
    SR Suranam
    SS an tSúdáin Theas
    ST São Tomé agus Príncipe
    SV an tSalvadóir
    SX Sint Maarten
    SY an tSiria
    SZ eSuaitíní
    TC Oileáin na dTurcach agus Caicos
    TD Sead
    TF Críocha Francacha Dheisceart an Domhain
    TG Tóga
    TH an Téalainn
    TJ an Táidsíceastáin
    TK Tócalá
    TL Tíomór Thoir
    TM an Tuircméanastáin
    TN an Túinéis
    TO Tonga
    TR an Tuirc
    TT Oileán na Tríonóide agus Tobága
    TV Túvalú
    TW an Téaváin
    TZ an Tansáin
    UA an Úcráin
    UG Uganda
    UM Oileáin Imeallacha S.A.M.
    US Stáit Aontaithe Mheiriceá
    UY Uragua
    UZ an Úisbéiceastáin
    VA Cathair na Vatacáine
    VC San Uinseann agus na Greanáidíní
    VE Veiniséala
    VG Oileáin Bhriotanacha na Maighdean
    VI Oileáin Mheiriceánacha na Maighdean
    VN Vítneam
    VU Vanuatú
    WF Vailís agus Futúna
    WS Samó
    XK an Chosaiv
    YE Éimin
    YT Mayotte
    ZA an Afraic Theas
    ZM an tSaimbia
    ZW an tSiombáib
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName =
    Cldr.Irish.countryCodeToName