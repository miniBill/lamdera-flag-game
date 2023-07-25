module Cldr.Vietnamese exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Vietnamese.

    AD Andorra
    AE Các Tiểu Vương quốc Ả Rập Thống nhất
    AF Afghanistan
    AG Antigua và Barbuda
    AI Anguilla
    AL Albania
    AM Armenia
    AO Angola
    AQ Nam Cực
    AR Argentina
    AS Samoa thuộc Mỹ
    AT Áo
    AU Australia
    AW Aruba
    AX Quần đảo Åland
    AZ Azerbaijan
    BA Bosnia và Herzegovina
    BB Barbados
    BD Bangladesh
    BE Bỉ
    BF Burkina Faso
    BG Bulgaria
    BH Bahrain
    BI Burundi
    BJ Benin
    BL St. Barthélemy
    BM Bermuda
    BN Brunei
    BO Bolivia
    BQ Ca-ri-bê Hà Lan
    BR Brazil
    BS Bahamas
    BT Bhutan
    BV Đảo Bouvet
    BW Botswana
    BY Belarus
    BZ Belize
    CA Canada
    CC Quần đảo Cocos (Keeling)
    CD Congo - Kinshasa
    CF Cộng hòa Trung Phi
    CG Congo - Brazzaville
    CH Thụy Sĩ
    CI Côte d’Ivoire
    CK Quần đảo Cook
    CL Chile
    CM Cameroon
    CN Trung Quốc
    CO Colombia
    CR Costa Rica
    CU Cuba
    CV Cape Verde
    CW Curaçao
    CX Đảo Giáng Sinh
    CY Síp
    CZ Séc
    DE Đức
    DJ Djibouti
    DK Đan Mạch
    DM Dominica
    DO Cộng hòa Dominica
    DZ Algeria
    EC Ecuador
    EE Estonia
    EG Ai Cập
    EH Tây Sahara
    ER Eritrea
    ES Tây Ban Nha
    ET Ethiopia
    FI Phần Lan
    FJ Fiji
    FK Quần đảo Falkland
    FM Micronesia
    FO Quần đảo Faroe
    FR Pháp
    GA Gabon
    GB Vương quốc Anh
    GD Grenada
    GE Georgia
    GF Guiana thuộc Pháp
    GG Guernsey
    GH Ghana
    GI Gibraltar
    GL Greenland
    GM Gambia
    GN Guinea
    GP Guadeloupe
    GQ Guinea Xích Đạo
    GR Hy Lạp
    GS Nam Georgia & Quần đảo Nam Sandwich
    GT Guatemala
    GU Guam
    GW Guinea-Bissau
    GY Guyana
    HK Đặc khu Hành chính Hồng Kông, Trung Quốc
    HM Quần đảo Heard và McDonald
    HN Honduras
    HR Croatia
    HT Haiti
    HU Hungary
    ID Indonesia
    IE Ireland
    IL Israel
    IM Đảo Man
    IN Ấn Độ
    IO Lãnh thổ Ấn Độ Dương thuộc Anh
    IQ Iraq
    IR Iran
    IS Iceland
    IT Italy
    JE Jersey
    JM Jamaica
    JO Jordan
    JP Nhật Bản
    KE Kenya
    KG Kyrgyzstan
    KH Campuchia
    KI Kiribati
    KM Comoros
    KN St. Kitts và Nevis
    KP Triều Tiên
    KR Hàn Quốc
    KW Kuwait
    KY Quần đảo Cayman
    KZ Kazakhstan
    LA Lào
    LB Li-băng
    LC St. Lucia
    LI Liechtenstein
    LK Sri Lanka
    LR Liberia
    LS Lesotho
    LT Litva
    LU Luxembourg
    LV Latvia
    LY Libya
    MA Ma-rốc
    MC Monaco
    MD Moldova
    ME Montenegro
    MF St. Martin
    MG Madagascar
    MH Quần đảo Marshall
    MK Bắc Macedonia
    ML Mali
    MM Myanmar (Miến Điện)
    MN Mông Cổ
    MO Đặc khu Hành chính Macao, Trung Quốc
    MP Quần đảo Bắc Mariana
    MQ Martinique
    MR Mauritania
    MS Montserrat
    MT Malta
    MU Mauritius
    MV Maldives
    MW Malawi
    MX Mexico
    MY Malaysia
    MZ Mozambique
    NA Namibia
    NC New Caledonia
    NE Niger
    NF Đảo Norfolk
    NG Nigeria
    NI Nicaragua
    NL Hà Lan
    NO Na Uy
    NP Nepal
    NR Nauru
    NU Niue
    NZ New Zealand
    OM Oman
    PA Panama
    PE Peru
    PF Polynesia thuộc Pháp
    PG Papua New Guinea
    PH Philippines
    PK Pakistan
    PL Ba Lan
    PM Saint Pierre và Miquelon
    PN Quần đảo Pitcairn
    PR Puerto Rico
    PS Lãnh thổ Palestine
    PT Bồ Đào Nha
    PW Palau
    PY Paraguay
    QA Qatar
    RE Réunion
    RO Romania
    RS Serbia
    RU Nga
    RW Rwanda
    SA Ả Rập Xê-út
    SB Quần đảo Solomon
    SC Seychelles
    SD Sudan
    SE Thụy Điển
    SG Singapore
    SH St. Helena
    SI Slovenia
    SJ Svalbard và Jan Mayen
    SK Slovakia
    SL Sierra Leone
    SM San Marino
    SN Senegal
    SO Somalia
    SR Suriname
    SS Nam Sudan
    ST São Tomé và Príncipe
    SV El Salvador
    SX Sint Maarten
    SY Syria
    SZ Eswatini
    TC Quần đảo Turks và Caicos
    TD Chad
    TF Lãnh thổ phía Nam Thuộc Pháp
    TG Togo
    TH Thái Lan
    TJ Tajikistan
    TK Tokelau
    TL Timor-Leste
    TM Turkmenistan
    TN Tunisia
    TO Tonga
    TR Thổ Nhĩ Kỳ
    TT Trinidad và Tobago
    TV Tuvalu
    TW Đài Loan
    TZ Tanzania
    UA Ukraina
    UG Uganda
    UM Các tiểu đảo xa của Hoa Kỳ
    US Hoa Kỳ
    UY Uruguay
    UZ Uzbekistan
    VA Thành Vatican
    VC St. Vincent và Grenadines
    VE Venezuela
    VG Quần đảo Virgin thuộc Anh
    VI Quần đảo Virgin thuộc Hoa Kỳ
    VN Việt Nam
    VU Vanuatu
    WF Wallis và Futuna
    WS Samoa
    XK Kosovo
    YE Yemen
    YT Mayotte
    ZA Nam Phi
    ZM Zambia
    ZW Zimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Các Tiểu Vương quốc Ả Rập Thống nhất"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua và Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Nam Cực"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa thuộc Mỹ"

        Cldr.AT ->
            "Áo"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Quần đảo Åland"

        Cldr.AZ ->
            "Azerbaijan"

        Cldr.BA ->
            "Bosnia và Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Bỉ"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaria"

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
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Ca-ri-bê Hà Lan"

        Cldr.BR ->
            "Brazil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Đảo Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Quần đảo Cocos (Keeling)"

        Cldr.CD ->
            "Congo - Kinshasa"

        Cldr.CF ->
            "Cộng hòa Trung Phi"

        Cldr.CG ->
            "Congo - Brazzaville"

        Cldr.CH ->
            "Thụy Sĩ"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Quần đảo Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Cameroon"

        Cldr.CN ->
            "Trung Quốc"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cape Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Đảo Giáng Sinh"

        Cldr.CY ->
            "Síp"

        Cldr.CZ ->
            "Séc"

        Cldr.DE ->
            "Đức"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Đan Mạch"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Cộng hòa Dominica"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Ai Cập"

        Cldr.EH ->
            "Tây Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Tây Ban Nha"

        Cldr.ET ->
            "Ethiopia"

        Cldr.FI ->
            "Phần Lan"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Quần đảo Falkland"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Quần đảo Faroe"

        Cldr.FR ->
            "Pháp"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Vương quốc Anh"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guiana thuộc Pháp"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Greenland"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Guinea Xích Đạo"

        Cldr.GR ->
            "Hy Lạp"

        Cldr.GS ->
            "Nam Georgia & Quần đảo Nam Sandwich"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Đặc khu Hành chính Hồng Kông, Trung Quốc"

        Cldr.HM ->
            "Quần đảo Heard và McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croatia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hungary"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Ireland"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Đảo Man"

        Cldr.IN ->
            "Ấn Độ"

        Cldr.IO ->
            "Lãnh thổ Ấn Độ Dương thuộc Anh"

        Cldr.IQ ->
            "Iraq"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Iceland"

        Cldr.IT ->
            "Italy"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordan"

        Cldr.JP ->
            "Nhật Bản"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kyrgyzstan"

        Cldr.KH ->
            "Campuchia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comoros"

        Cldr.KN ->
            "St. Kitts và Nevis"

        Cldr.KP ->
            "Triều Tiên"

        Cldr.KR ->
            "Hàn Quốc"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Quần đảo Cayman"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Lào"

        Cldr.LB ->
            "Li-băng"

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
            "Litva"

        Cldr.LU ->
            "Luxembourg"

        Cldr.LV ->
            "Latvia"

        Cldr.LY ->
            "Libya"

        Cldr.MA ->
            "Ma-rốc"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "St. Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Quần đảo Marshall"

        Cldr.MK ->
            "Bắc Macedonia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Miến Điện)"

        Cldr.MN ->
            "Mông Cổ"

        Cldr.MO ->
            "Đặc khu Hành chính Macao, Trung Quốc"

        Cldr.MP ->
            "Quần đảo Bắc Mariana"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldives"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexico"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "New Caledonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Đảo Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Hà Lan"

        Cldr.NO ->
            "Na Uy"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "New Zealand"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polynesia thuộc Pháp"

        Cldr.PG ->
            "Papua New Guinea"

        Cldr.PH ->
            "Philippines"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Ba Lan"

        Cldr.PM ->
            "Saint Pierre và Miquelon"

        Cldr.PN ->
            "Quần đảo Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Lãnh thổ Palestine"

        Cldr.PT ->
            "Bồ Đào Nha"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Romania"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Nga"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Ả Rập Xê-út"

        Cldr.SB ->
            "Quần đảo Solomon"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Thụy Điển"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "St. Helena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Svalbard và Jan Mayen"

        Cldr.SK ->
            "Slovakia"

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
            "Nam Sudan"

        Cldr.ST ->
            "São Tomé và Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Quần đảo Turks và Caicos"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Lãnh thổ phía Nam Thuộc Pháp"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thái Lan"

        Cldr.TJ ->
            "Tajikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Thổ Nhĩ Kỳ"

        Cldr.TT ->
            "Trinidad và Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Đài Loan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Các tiểu đảo xa của Hoa Kỳ"

        Cldr.US ->
            "Hoa Kỳ"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Thành Vatican"

        Cldr.VC ->
            "St. Vincent và Grenadines"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Quần đảo Virgin thuộc Anh"

        Cldr.VI ->
            "Quần đảo Virgin thuộc Hoa Kỳ"

        Cldr.VN ->
            "Việt Nam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis và Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Nam Phi"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"