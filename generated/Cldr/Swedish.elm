module Cldr.Swedish exposing (countryCodeToName)

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
            "Förenade Arabemiraten"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua och Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albanien"

        Cldr.AM ->
            "Armenien"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktis"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Amerikanska Samoa"

        Cldr.AT ->
            "Österrike"

        Cldr.AU ->
            "Australien"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Åland"

        Cldr.AZ ->
            "Azerbajdzjan"

        Cldr.BA ->
            "Bosnien och Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Belgien"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgarien"

        Cldr.BH ->
            "Bahrain"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "S:t Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Karibiska Nederländerna"

        Cldr.BR ->
            "Brasilien"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvetön"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Vitryssland"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosöarna"

        Cldr.CD ->
            "Kongo-Kinshasa"

        Cldr.CF ->
            "Centralafrikanska republiken"

        Cldr.CG ->
            "Kongo-Brazzaville"

        Cldr.CH ->
            "Schweiz"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Cooköarna"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Kina"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kap Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Julön"

        Cldr.CY ->
            "Cypern"

        Cldr.CZ ->
            "Tjeckien"

        Cldr.DE ->
            "Tyskland"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Danmark"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Dominikanska republiken"

        Cldr.DZ ->
            "Algeriet"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estland"

        Cldr.EG ->
            "Egypten"

        Cldr.EH ->
            "Västsahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spanien"

        Cldr.ET ->
            "Etiopien"

        Cldr.FI ->
            "Finland"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Falklandsöarna"

        Cldr.FM ->
            "Mikronesien"

        Cldr.FO ->
            "Färöarna"

        Cldr.FR ->
            "Frankrike"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Storbritannien"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgien"

        Cldr.GF ->
            "Franska Guyana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grönland"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Ekvatorialguinea"

        Cldr.GR ->
            "Grekland"

        Cldr.GS ->
            "Sydgeorgien och Sydsandwichöarna"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkong SAR"

        Cldr.HM ->
            "Heardön och McDonaldöarna"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Kroatien"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungern"

        Cldr.ID ->
            "Indonesien"

        Cldr.IE ->
            "Irland"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Isle of Man"

        Cldr.IN ->
            "Indien"

        Cldr.IO ->
            "Brittiska territoriet i Indiska oceanen"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Island"

        Cldr.IT ->
            "Italien"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordanien"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirgizistan"

        Cldr.KH ->
            "Kambodja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komorerna"

        Cldr.KN ->
            "S:t Kitts och Nevis"

        Cldr.KP ->
            "Nordkorea"

        Cldr.KR ->
            "Sydkorea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Caymanöarna"

        Cldr.KZ ->
            "Kazakstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "S:t Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Litauen"

        Cldr.LU ->
            "Luxemburg"

        Cldr.LV ->
            "Lettland"

        Cldr.LY ->
            "Libyen"

        Cldr.MA ->
            "Marocko"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldavien"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint-Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Marshallöarna"

        Cldr.MK ->
            "Nordmakedonien"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongoliet"

        Cldr.MO ->
            "Macao SAR"

        Cldr.MP ->
            "Nordmarianerna"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauretanien"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldiverna"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexiko"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Moçambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Nya Kaledonien"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolkön"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Nederländerna"

        Cldr.NO ->
            "Norge"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nya Zeeland"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Franska Polynesien"

        Cldr.PG ->
            "Papua Nya Guinea"

        Cldr.PH ->
            "Filippinerna"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polen"

        Cldr.PM ->
            "S:t Pierre och Miquelon"

        Cldr.PN ->
            "Pitcairnöarna"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palestinska territorierna"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Rumänien"

        Cldr.RS ->
            "Serbien"

        Cldr.RU ->
            "Ryssland"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudiarabien"

        Cldr.SB ->
            "Salomonöarna"

        Cldr.SC ->
            "Seychellerna"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Sverige"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "S:t Helena"

        Cldr.SI ->
            "Slovenien"

        Cldr.SJ ->
            "Svalbard och Jan Mayen"

        Cldr.SK ->
            "Slovakien"

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
            "Sydsudan"

        Cldr.ST ->
            "São Tomé och Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syrien"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks- och Caicosöarna"

        Cldr.TD ->
            "Tchad"

        Cldr.TF ->
            "Franska sydterritorierna"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailand"

        Cldr.TJ ->
            "Tadzjikistan"

        Cldr.TK ->
            "Tokelauöarna"

        Cldr.TL ->
            "Östtimor"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunisien"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkiet"

        Cldr.TT ->
            "Trinidad och Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "USA:s yttre öar"

        Cldr.US ->
            "USA"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Vatikanstaten"

        Cldr.VC ->
            "S:t Vincent och Grenadinerna"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Brittiska Jungfruöarna"

        Cldr.VI ->
            "Amerikanska Jungfruöarna"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis- och Futunaöarna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Sydafrika"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"