module Cldr.Finnish exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andorra"

        Cldr.AE ->
            "Arabiemiirikunnat"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua ja Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktis"

        Cldr.AR ->
            "Argentiina"

        Cldr.AS ->
            "Amerikan Samoa"

        Cldr.AT ->
            "Itävalta"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ahvenanmaa"

        Cldr.AZ ->
            "Azerbaidžan"

        Cldr.BA ->
            "Bosnia ja Hertsegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgia"

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
            "Saint-Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Karibian Alankomaat"

        Cldr.BR ->
            "Brasilia"

        Cldr.BS ->
            "Bahama"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvet’nsaari"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Valko-Venäjä"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kookossaaret (Keelingsaaret)"

        Cldr.CD ->
            "Kongon demokraattinen tasavalta"

        Cldr.CF ->
            "Keski-Afrikan tasavalta"

        Cldr.CG ->
            "Kongon tasavalta"

        Cldr.CH ->
            "Sveitsi"

        Cldr.CI ->
            "Norsunluurannikko"

        Cldr.CK ->
            "Cookinsaaret"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Kiina"

        Cldr.CO ->
            "Kolumbia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuuba"

        Cldr.CV ->
            "Kap Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Joulusaari"

        Cldr.CY ->
            "Kypros"

        Cldr.CZ ->
            "Tšekki"

        Cldr.DE ->
            "Saksa"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Tanska"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Dominikaaninen tasavalta"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Viro"

        Cldr.EG ->
            "Egypti"

        Cldr.EH ->
            "Länsi-Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Espanja"

        Cldr.ET ->
            "Etiopia"

        Cldr.FI ->
            "Suomi"

        Cldr.FJ ->
            "Fidži"

        Cldr.FK ->
            "Falklandinsaaret"

        Cldr.FM ->
            "Mikronesia"

        Cldr.FO ->
            "Färsaaret"

        Cldr.FR ->
            "Ranska"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Iso-Britannia"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Ranskan Guayana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grönlanti"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Päiväntasaajan Guinea"

        Cldr.GR ->
            "Kreikka"

        Cldr.GS ->
            "Etelä-Georgia ja Eteläiset Sandwichinsaaret"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkong – Kiinan erityishallintoalue"

        Cldr.HM ->
            "Heard ja McDonaldinsaaret"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroatia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Unkari"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Irlanti"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Mansaari"

        Cldr.IN ->
            "Intia"

        Cldr.IO ->
            "Brittiläinen Intian valtameren alue"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islanti"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jordania"

        Cldr.JP ->
            "Japani"

        Cldr.KE ->
            "Kenia"

        Cldr.KG ->
            "Kirgisia"

        Cldr.KH ->
            "Kambodža"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komorit"

        Cldr.KN ->
            "Saint Kitts ja Nevis"

        Cldr.KP ->
            "Pohjois-Korea"

        Cldr.KR ->
            "Etelä-Korea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Caymansaaret"

        Cldr.KZ ->
            "Kazakstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

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
            "Liettua"

        Cldr.LU ->
            "Luxemburg"

        Cldr.LV ->
            "Latvia"

        Cldr.LY ->
            "Libya"

        Cldr.MA ->
            "Marokko"

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
            "Marshallinsaaret"

        Cldr.MK ->
            "Pohjois-Makedonia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macao – Kiinan erityishallintoalue"

        Cldr.MP ->
            "Pohjois-Mariaanit"

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
            "Malediivit"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Meksiko"

        Cldr.MY ->
            "Malesia"

        Cldr.MZ ->
            "Mosambik"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Uusi-Kaledonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolkinsaari"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Alankomaat"

        Cldr.NO ->
            "Norja"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Uusi-Seelanti"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Ranskan Polynesia"

        Cldr.PG ->
            "Papua-Uusi-Guinea"

        Cldr.PH ->
            "Filippiinit"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Puola"

        Cldr.PM ->
            "Saint-Pierre ja Miquelon"

        Cldr.PN ->
            "Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestiinalaisalue"

        Cldr.PT ->
            "Portugali"

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
            "Venäjä"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saudi-Arabia"

        Cldr.SB ->
            "Salomonsaaret"

        Cldr.SC ->
            "Seychellit"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Ruotsi"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "Saint Helena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Svalbard ja Jan Mayen"

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
            "Etelä-Sudan"

        Cldr.ST ->
            "São Tomé ja Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syyria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks- ja Caicossaaret"

        Cldr.TD ->
            "Tšad"

        Cldr.TF ->
            "Ranskan eteläiset ja antarktiset alueet"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thaimaa"

        Cldr.TJ ->
            "Tadžikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Itä-Timor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkki"

        Cldr.TT ->
            "Trinidad ja Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tansania"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Yhdysvaltain erillissaaret"

        Cldr.US ->
            "Yhdysvallat"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikaani"

        Cldr.VC ->
            "Saint Vincent ja Grenadiinit"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Brittiläiset Neitsytsaaret"

        Cldr.VI ->
            "Yhdysvaltain Neitsytsaaret"

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
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Etelä-Afrikka"

        Cldr.ZM ->
            "Sambia"

        Cldr.ZW ->
            "Zimbabwe"