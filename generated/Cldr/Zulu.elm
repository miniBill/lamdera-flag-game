module Cldr.Zulu exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Zulu.

    AD i-Andorra
    AE i-United Arab Emirates
    AF i-Afghanistan
    AG i-Antigua ne-Barbuda
    AI i-Anguilla
    AL i-Albania
    AM i-Armenia
    AO i-Angola
    AQ i-Antarctica
    AR i-Argentina
    AS i-American Samoa
    AT i-Austria
    AU i-Australia
    AW i-Aruba
    AX i-Åland Islands
    AZ i-Azerbaijan
    BA i-Bosnia ne-Herzegovina
    BB i-Barbados
    BD i-Bangladesh
    BE i-Belgium
    BF i-Burkina Faso
    BG i-Bulgaria
    BH i-Bahrain
    BI i-Burundi
    BJ i-Benin
    BL i-Saint Barthélemy
    BM i-Bermuda
    BN i-Brunei
    BO i-Bolivia
    BQ i-Caribbean Netherlands
    BR i-Brazil
    BS i-Bahamas
    BT i-Bhutan
    BV i-Bouvet Island
    BW iBotswana
    BY i-Belarus
    BZ i-Belize
    CA i-Canada
    CC i-Cocos (Keeling) Islands
    CD i-Congo (DRC)
    CF i-Central African Republic
    CG i-Congo (Republic)
    CH i-Switzerland
    CI i-Côte d’Ivoire
    CK i-Cook Islands
    CL i-Chile
    CM i-Cameroon
    CN i-China
    CO i-Colombia
    CR i-Costa Rica
    CU i-Cuba
    CV i-Cape Verde
    CW i-Curaçao
    CX i-Christmas Island
    CY i-Cyprus
    CZ i-Czech Republic
    DE i-Germany
    DJ i-Djibouti
    DK i-Denmark
    DM i-Dominica
    DO i-Dominican Republic
    DZ i-Algeria
    EC i-Ecuador
    EE i-Estonia
    EG i-Egypt
    EH i-Western Sahara
    ER i-Eritrea
    ES i-Spain
    ET i-Ethiopia
    FI i-Finland
    FJ i-Fiji
    FK i-Falkland Islands
    FM i-Micronesia
    FO i-Faroe Islands
    FR i-France
    GA i-Gabon
    GB i-United Kingdom
    GD i-Grenada
    GE i-Georgia
    GF i-French Guiana
    GG i-Guernsey
    GH i-Ghana
    GI i-Gibraltar
    GL i-Greenland
    GM i-Gambia
    GN i-Guinea
    GP i-Guadeloupe
    GQ i-Equatorial Guinea
    GR i-Greece
    GS i-South Georgia ne-South Sandwich Islands
    GT i-Guatemala
    GU i-Guam
    GW i-Guinea-Bissau
    GY i-Guyana
    HK i-Hong Kong
    HM I-Heard & McDonald Island
    HN i-Honduras
    HR i-Croatia
    HT i-Haiti
    HU i-Hungary
    ID i-Indonesia
    IE i-Ireland
    IL kwa-Israel
    IM i-Isle of Man
    IN i-India
    IO i-British Indian Ocean Territory
    IQ i-Iraq
    IR i-Iran
    IS i-Iceland
    IT i-Italy
    JE i-Jersey
    JM i-Jamaica
    JO i-Jordan
    JP i-Japan
    KE i-Kenya
    KG i-Kyrgyzstan
    KH i-Cambodia
    KI i-Kiribati
    KM i-Comoros
    KN i-Saint Kitts ne-Nevis
    KP i-North Korea
    KR i-South Korea
    KW i-Kuwait
    KY i-Cayman Islands
    KZ i-Kazakhstan
    LA i-Laos
    LB i-Lebanon
    LC i-Saint Lucia
    LI i-Liechtenstein
    LK i-Sri Lanka
    LR i-Liberia
    LS iLesotho
    LT i-Lithuania
    LU i-Luxembourg
    LV i-Latvia
    LY i-Libya
    MA i-Morocco
    MC i-Monaco
    MD i-Moldova
    ME i-Montenegro
    MF i-Saint Martin
    MG i-Madagascar
    MH i-Marshall Islands
    MK i-North Macedonia
    ML iMali
    MM i-Myanmar (Burma)
    MN i-Mongolia
    MO i-Macau
    MP i-Northern Mariana Islands
    MQ i-Martinique
    MR i-Mauritania
    MS i-Montserrat
    MT i-Malta
    MU i-Mauritius
    MV i-Maldives
    MW iMalawi
    MX i-Mexico
    MY i-Malaysia
    MZ i-Mozambique
    NA i-Namibia
    NC i-New Caledonia
    NE i-Niger
    NF i-Norfolk Island
    NG i-Nigeria
    NI i-Nicaragua
    NL i-Netherlands
    NO i-Norway
    NP i-Nepal
    NR i-Nauru
    NU i-Niue
    NZ i-New Zealand
    OM i-Oman
    PA i-Panama
    PE i-Peru
    PF i-French Polynesia
    PG i-Papua New Guinea
    PH i-Philippines
    PK i-Pakistan
    PL i-Poland
    PM i-Saint Pierre kanye ne-Miquelon
    PN i-Pitcairn Islands
    PR i-Puerto Rico
    PS i-Palestine
    PT i-Portugal
    PW i-Palau
    PY i-Paraguay
    QA i-Qatar
    RE i-Réunion
    RO i-Romania
    RS i-Serbia
    RU i-Russia
    RW i-Rwanda
    SA i-Saudi Arabia
    SB i-Solomon Islands
    SC i-Seychelles
    SD i-Sudan
    SE i-Sweden
    SG i-Singapore
    SH i-St. Helena
    SI i-Slovenia
    SJ i-Svalbard ne-Jan Mayen
    SK i-Slovakia
    SL i-Sierra Leone
    SM i-San Marino
    SN i-Senegal
    SO i-Somalia
    SR i-Suriname
    SS i-South Sudan
    ST i-São Tomé kanye ne-Príncipe
    SV i-El Salvador
    SX i-Sint Maarten
    SY i-Syria
    SZ i-Swaziland
    TC i-Turks ne-Caicos Islands
    TD i-Chad
    TF i-French Southern Territories
    TG i-Togo
    TH i-Thailand
    TJ i-Tajikistan
    TK i-Tokelau
    TL i-East Timor
    TM i-Turkmenistan
    TN i-Tunisia
    TO i-Tonga
    TR i-Turkey
    TT i-Trinidad ne-Tobago
    TV i-Tuvalu
    TW i-Taiwan
    TZ i-Tanzania
    UA i-Ukraine
    UG i-Uganda
    UM I-U.S. Outlying Islands
    US i-United States
    UY i-Uruguay
    UZ i-Uzbekistan
    VA i-Vatican City
    VC i-Saint Vincent ne-Grenadines
    VE i-Venezuela
    VG i-British Virgin Islands
    VI i-U.S. Virgin Islands
    VN i-Vietnam
    VU i-Vanuatu
    WF i-Wallis ne-Futuna
    WS i-Samoa
    XK i-Kosovo
    YE i-Yemen
    YT i-Mayotte
    ZA iNingizimu Afrika
    ZM i-Zambia
    ZW iZimbabwe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "i-Andorra"

        Cldr.AE ->
            "i-United Arab Emirates"

        Cldr.AF ->
            "i-Afghanistan"

        Cldr.AG ->
            "i-Antigua ne-Barbuda"

        Cldr.AI ->
            "i-Anguilla"

        Cldr.AL ->
            "i-Albania"

        Cldr.AM ->
            "i-Armenia"

        Cldr.AO ->
            "i-Angola"

        Cldr.AQ ->
            "i-Antarctica"

        Cldr.AR ->
            "i-Argentina"

        Cldr.AS ->
            "i-American Samoa"

        Cldr.AT ->
            "i-Austria"

        Cldr.AU ->
            "i-Australia"

        Cldr.AW ->
            "i-Aruba"

        Cldr.AX ->
            "i-Åland Islands"

        Cldr.AZ ->
            "i-Azerbaijan"

        Cldr.BA ->
            "i-Bosnia ne-Herzegovina"

        Cldr.BB ->
            "i-Barbados"

        Cldr.BD ->
            "i-Bangladesh"

        Cldr.BE ->
            "i-Belgium"

        Cldr.BF ->
            "i-Burkina Faso"

        Cldr.BG ->
            "i-Bulgaria"

        Cldr.BH ->
            "i-Bahrain"

        Cldr.BI ->
            "i-Burundi"

        Cldr.BJ ->
            "i-Benin"

        Cldr.BL ->
            "i-Saint Barthélemy"

        Cldr.BM ->
            "i-Bermuda"

        Cldr.BN ->
            "i-Brunei"

        Cldr.BO ->
            "i-Bolivia"

        Cldr.BQ ->
            "i-Caribbean Netherlands"

        Cldr.BR ->
            "i-Brazil"

        Cldr.BS ->
            "i-Bahamas"

        Cldr.BT ->
            "i-Bhutan"

        Cldr.BV ->
            "i-Bouvet Island"

        Cldr.BW ->
            "iBotswana"

        Cldr.BY ->
            "i-Belarus"

        Cldr.BZ ->
            "i-Belize"

        Cldr.CA ->
            "i-Canada"

        Cldr.CC ->
            "i-Cocos (Keeling) Islands"

        Cldr.CD ->
            "i-Congo (DRC)"

        Cldr.CF ->
            "i-Central African Republic"

        Cldr.CG ->
            "i-Congo (Republic)"

        Cldr.CH ->
            "i-Switzerland"

        Cldr.CI ->
            "i-Côte d’Ivoire"

        Cldr.CK ->
            "i-Cook Islands"

        Cldr.CL ->
            "i-Chile"

        Cldr.CM ->
            "i-Cameroon"

        Cldr.CN ->
            "i-China"

        Cldr.CO ->
            "i-Colombia"

        Cldr.CR ->
            "i-Costa Rica"

        Cldr.CU ->
            "i-Cuba"

        Cldr.CV ->
            "i-Cape Verde"

        Cldr.CW ->
            "i-Curaçao"

        Cldr.CX ->
            "i-Christmas Island"

        Cldr.CY ->
            "i-Cyprus"

        Cldr.CZ ->
            "i-Czech Republic"

        Cldr.DE ->
            "i-Germany"

        Cldr.DJ ->
            "i-Djibouti"

        Cldr.DK ->
            "i-Denmark"

        Cldr.DM ->
            "i-Dominica"

        Cldr.DO ->
            "i-Dominican Republic"

        Cldr.DZ ->
            "i-Algeria"

        Cldr.EC ->
            "i-Ecuador"

        Cldr.EE ->
            "i-Estonia"

        Cldr.EG ->
            "i-Egypt"

        Cldr.EH ->
            "i-Western Sahara"

        Cldr.ER ->
            "i-Eritrea"

        Cldr.ES ->
            "i-Spain"

        Cldr.ET ->
            "i-Ethiopia"

        Cldr.FI ->
            "i-Finland"

        Cldr.FJ ->
            "i-Fiji"

        Cldr.FK ->
            "i-Falkland Islands"

        Cldr.FM ->
            "i-Micronesia"

        Cldr.FO ->
            "i-Faroe Islands"

        Cldr.FR ->
            "i-France"

        Cldr.GA ->
            "i-Gabon"

        Cldr.GB ->
            "i-United Kingdom"

        Cldr.GD ->
            "i-Grenada"

        Cldr.GE ->
            "i-Georgia"

        Cldr.GF ->
            "i-French Guiana"

        Cldr.GG ->
            "i-Guernsey"

        Cldr.GH ->
            "i-Ghana"

        Cldr.GI ->
            "i-Gibraltar"

        Cldr.GL ->
            "i-Greenland"

        Cldr.GM ->
            "i-Gambia"

        Cldr.GN ->
            "i-Guinea"

        Cldr.GP ->
            "i-Guadeloupe"

        Cldr.GQ ->
            "i-Equatorial Guinea"

        Cldr.GR ->
            "i-Greece"

        Cldr.GS ->
            "i-South Georgia ne-South Sandwich Islands"

        Cldr.GT_ ->
            "i-Guatemala"

        Cldr.GU ->
            "i-Guam"

        Cldr.GW ->
            "i-Guinea-Bissau"

        Cldr.GY ->
            "i-Guyana"

        Cldr.HK ->
            "i-Hong Kong"

        Cldr.HM ->
            "I-Heard & McDonald Island"

        Cldr.HN ->
            "i-Honduras"

        Cldr.HR ->
            "i-Croatia"

        Cldr.HT ->
            "i-Haiti"

        Cldr.HU ->
            "i-Hungary"

        Cldr.ID ->
            "i-Indonesia"

        Cldr.IE ->
            "i-Ireland"

        Cldr.IL ->
            "kwa-Israel"

        Cldr.IM ->
            "i-Isle of Man"

        Cldr.IN ->
            "i-India"

        Cldr.IO ->
            "i-British Indian Ocean Territory"

        Cldr.IQ ->
            "i-Iraq"

        Cldr.IR ->
            "i-Iran"

        Cldr.IS ->
            "i-Iceland"

        Cldr.IT ->
            "i-Italy"

        Cldr.JE ->
            "i-Jersey"

        Cldr.JM ->
            "i-Jamaica"

        Cldr.JO ->
            "i-Jordan"

        Cldr.JP ->
            "i-Japan"

        Cldr.KE ->
            "i-Kenya"

        Cldr.KG ->
            "i-Kyrgyzstan"

        Cldr.KH ->
            "i-Cambodia"

        Cldr.KI ->
            "i-Kiribati"

        Cldr.KM ->
            "i-Comoros"

        Cldr.KN ->
            "i-Saint Kitts ne-Nevis"

        Cldr.KP ->
            "i-North Korea"

        Cldr.KR ->
            "i-South Korea"

        Cldr.KW ->
            "i-Kuwait"

        Cldr.KY ->
            "i-Cayman Islands"

        Cldr.KZ ->
            "i-Kazakhstan"

        Cldr.LA ->
            "i-Laos"

        Cldr.LB ->
            "i-Lebanon"

        Cldr.LC ->
            "i-Saint Lucia"

        Cldr.LI ->
            "i-Liechtenstein"

        Cldr.LK ->
            "i-Sri Lanka"

        Cldr.LR ->
            "i-Liberia"

        Cldr.LS ->
            "iLesotho"

        Cldr.LT_ ->
            "i-Lithuania"

        Cldr.LU ->
            "i-Luxembourg"

        Cldr.LV ->
            "i-Latvia"

        Cldr.LY ->
            "i-Libya"

        Cldr.MA ->
            "i-Morocco"

        Cldr.MC ->
            "i-Monaco"

        Cldr.MD ->
            "i-Moldova"

        Cldr.ME ->
            "i-Montenegro"

        Cldr.MF ->
            "i-Saint Martin"

        Cldr.MG ->
            "i-Madagascar"

        Cldr.MH ->
            "i-Marshall Islands"

        Cldr.MK ->
            "i-North Macedonia"

        Cldr.ML ->
            "iMali"

        Cldr.MM ->
            "i-Myanmar (Burma)"

        Cldr.MN ->
            "i-Mongolia"

        Cldr.MO ->
            "i-Macau"

        Cldr.MP ->
            "i-Northern Mariana Islands"

        Cldr.MQ ->
            "i-Martinique"

        Cldr.MR ->
            "i-Mauritania"

        Cldr.MS ->
            "i-Montserrat"

        Cldr.MT ->
            "i-Malta"

        Cldr.MU ->
            "i-Mauritius"

        Cldr.MV ->
            "i-Maldives"

        Cldr.MW ->
            "iMalawi"

        Cldr.MX ->
            "i-Mexico"

        Cldr.MY ->
            "i-Malaysia"

        Cldr.MZ ->
            "i-Mozambique"

        Cldr.NA ->
            "i-Namibia"

        Cldr.NC ->
            "i-New Caledonia"

        Cldr.NE ->
            "i-Niger"

        Cldr.NF ->
            "i-Norfolk Island"

        Cldr.NG ->
            "i-Nigeria"

        Cldr.NI ->
            "i-Nicaragua"

        Cldr.NL ->
            "i-Netherlands"

        Cldr.NO ->
            "i-Norway"

        Cldr.NP ->
            "i-Nepal"

        Cldr.NR ->
            "i-Nauru"

        Cldr.NU ->
            "i-Niue"

        Cldr.NZ ->
            "i-New Zealand"

        Cldr.OM ->
            "i-Oman"

        Cldr.PA ->
            "i-Panama"

        Cldr.PE ->
            "i-Peru"

        Cldr.PF ->
            "i-French Polynesia"

        Cldr.PG ->
            "i-Papua New Guinea"

        Cldr.PH ->
            "i-Philippines"

        Cldr.PK ->
            "i-Pakistan"

        Cldr.PL ->
            "i-Poland"

        Cldr.PM ->
            "i-Saint Pierre kanye ne-Miquelon"

        Cldr.PN ->
            "i-Pitcairn Islands"

        Cldr.PR ->
            "i-Puerto Rico"

        Cldr.PS ->
            "i-Palestine"

        Cldr.PT ->
            "i-Portugal"

        Cldr.PW ->
            "i-Palau"

        Cldr.PY ->
            "i-Paraguay"

        Cldr.QA ->
            "i-Qatar"

        Cldr.RE ->
            "i-Réunion"

        Cldr.RO ->
            "i-Romania"

        Cldr.RS ->
            "i-Serbia"

        Cldr.RU ->
            "i-Russia"

        Cldr.RW ->
            "i-Rwanda"

        Cldr.SA ->
            "i-Saudi Arabia"

        Cldr.SB ->
            "i-Solomon Islands"

        Cldr.SC ->
            "i-Seychelles"

        Cldr.SD ->
            "i-Sudan"

        Cldr.SE ->
            "i-Sweden"

        Cldr.SG ->
            "i-Singapore"

        Cldr.SH ->
            "i-St. Helena"

        Cldr.SI ->
            "i-Slovenia"

        Cldr.SJ ->
            "i-Svalbard ne-Jan Mayen"

        Cldr.SK ->
            "i-Slovakia"

        Cldr.SL ->
            "i-Sierra Leone"

        Cldr.SM ->
            "i-San Marino"

        Cldr.SN ->
            "i-Senegal"

        Cldr.SO ->
            "i-Somalia"

        Cldr.SR ->
            "i-Suriname"

        Cldr.SS ->
            "i-South Sudan"

        Cldr.ST ->
            "i-São Tomé kanye ne-Príncipe"

        Cldr.SV ->
            "i-El Salvador"

        Cldr.SX ->
            "i-Sint Maarten"

        Cldr.SY ->
            "i-Syria"

        Cldr.SZ ->
            "i-Swaziland"

        Cldr.TC ->
            "i-Turks ne-Caicos Islands"

        Cldr.TD ->
            "i-Chad"

        Cldr.TF ->
            "i-French Southern Territories"

        Cldr.TG ->
            "i-Togo"

        Cldr.TH ->
            "i-Thailand"

        Cldr.TJ ->
            "i-Tajikistan"

        Cldr.TK ->
            "i-Tokelau"

        Cldr.TL ->
            "i-East Timor"

        Cldr.TM ->
            "i-Turkmenistan"

        Cldr.TN ->
            "i-Tunisia"

        Cldr.TO ->
            "i-Tonga"

        Cldr.TR ->
            "i-Turkey"

        Cldr.TT ->
            "i-Trinidad ne-Tobago"

        Cldr.TV ->
            "i-Tuvalu"

        Cldr.TW ->
            "i-Taiwan"

        Cldr.TZ ->
            "i-Tanzania"

        Cldr.UA ->
            "i-Ukraine"

        Cldr.UG ->
            "i-Uganda"

        Cldr.UM ->
            "I-U.S. Outlying Islands"

        Cldr.US ->
            "i-United States"

        Cldr.UY ->
            "i-Uruguay"

        Cldr.UZ ->
            "i-Uzbekistan"

        Cldr.VA ->
            "i-Vatican City"

        Cldr.VC ->
            "i-Saint Vincent ne-Grenadines"

        Cldr.VE ->
            "i-Venezuela"

        Cldr.VG ->
            "i-British Virgin Islands"

        Cldr.VI ->
            "i-U.S. Virgin Islands"

        Cldr.VN ->
            "i-Vietnam"

        Cldr.VU ->
            "i-Vanuatu"

        Cldr.WF ->
            "i-Wallis ne-Futuna"

        Cldr.WS ->
            "i-Samoa"

        Cldr.XK ->
            "i-Kosovo"

        Cldr.YE ->
            "i-Yemen"

        Cldr.YT ->
            "i-Mayotte"

        Cldr.ZA ->
            "iNingizimu Afrika"

        Cldr.ZM ->
            "i-Zambia"

        Cldr.ZW ->
            "iZimbabwe"