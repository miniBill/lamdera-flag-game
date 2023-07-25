module Cldr.Catalan exposing (countryCodeToName)

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
            "Emirats Àrabs Units"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua i Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albània"

        Cldr.AM ->
            "Armènia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antàrtida"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa Nord-americana"

        Cldr.AT ->
            "Àustria"

        Cldr.AU ->
            "Austràlia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Illes Åland"

        Cldr.AZ ->
            "Azerbaidjan"

        Cldr.BA ->
            "Bòsnia i Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Bèlgica"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgària"

        Cldr.BH ->
            "Bahrain"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benín"

        Cldr.BL ->
            "Saint-Barthélemy"

        Cldr.BM ->
            "Bermudes"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolívia"

        Cldr.BQ ->
            "Carib Neerlandès"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Bahames"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarús"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canadà"

        Cldr.CC ->
            "Illes Cocos"

        Cldr.CD ->
            "Congo - Kinshasa"

        Cldr.CF ->
            "República Centreafricana"

        Cldr.CG ->
            "Congo - Brazzaville"

        Cldr.CH ->
            "Suïssa"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Illes Cook"

        Cldr.CL ->
            "Xile"

        Cldr.CM ->
            "Camerun"

        Cldr.CN ->
            "Xina"

        Cldr.CO ->
            "Colòmbia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cap Verd"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Illa Christmas"

        Cldr.CY ->
            "Xipre"

        Cldr.CZ ->
            "Txèquia"

        Cldr.DE ->
            "Alemanya"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Dinamarca"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "República Dominicana"

        Cldr.DZ ->
            "Algèria"

        Cldr.EC ->
            "Equador"

        Cldr.EE ->
            "Estònia"

        Cldr.EG ->
            "Egipte"

        Cldr.EH ->
            "Sàhara Occidental"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Espanya"

        Cldr.ET ->
            "Etiòpia"

        Cldr.FI ->
            "Finlàndia"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Illes Malvines"

        Cldr.FM ->
            "Micronèsia"

        Cldr.FO ->
            "Illes Fèroe"

        Cldr.FR ->
            "França"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Regne Unit"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Geòrgia"

        Cldr.GF ->
            "Guaiana Francesa"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenlàndia"

        Cldr.GM ->
            "Gàmbia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadalupe"

        Cldr.GQ ->
            "Guinea Equatorial"

        Cldr.GR ->
            "Grècia"

        Cldr.GS ->
            "Illes Geòrgia del Sud i Sandwich del Sud"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong (RAE Xina)"

        Cldr.HM ->
            "Illa Heard i Illes McDonald"

        Cldr.HN ->
            "Hondures"

        Cldr.HR ->
            "Croàcia"

        Cldr.HT ->
            "Haití"

        Cldr.HU ->
            "Hongria"

        Cldr.ID ->
            "Indonèsia"

        Cldr.IE ->
            "Irlanda"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Illa de Man"

        Cldr.IN ->
            "Índia"

        Cldr.IO ->
            "Territori Britànic de l’Oceà Índic"

        Cldr.IQ ->
            "Iraq"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islàndia"

        Cldr.IT ->
            "Itàlia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordània"

        Cldr.JP ->
            "Japó"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirguizstan"

        Cldr.KH ->
            "Cambodja"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comores"

        Cldr.KN ->
            "Saint Kitts i Nevis"

        Cldr.KP ->
            "Corea del Nord"

        Cldr.KR ->
            "Corea del Sud"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Illes Caiman"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Líban"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Libèria"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Lituània"

        Cldr.LU ->
            "Luxemburg"

        Cldr.LV ->
            "Letònia"

        Cldr.LY ->
            "Líbia"

        Cldr.MA ->
            "Marroc"

        Cldr.MC ->
            "Mònaco"

        Cldr.MD ->
            "Moldàvia"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Illes Marshall"

        Cldr.MK ->
            "Macedònia del Nord"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birmània)"

        Cldr.MN ->
            "Mongòlia"

        Cldr.MO ->
            "Macau (RAE Xina)"

        Cldr.MP ->
            "Illes Mariannes Septentrionals"

        Cldr.MQ ->
            "Martinica"

        Cldr.MR ->
            "Mauritània"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Maurici"

        Cldr.MV ->
            "Maldives"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mèxic"

        Cldr.MY ->
            "Malàisia"

        Cldr.MZ ->
            "Moçambic"

        Cldr.NA ->
            "Namíbia"

        Cldr.NC ->
            "Nova Caledònia"

        Cldr.NE ->
            "Níger"

        Cldr.NF ->
            "Norfolk"

        Cldr.NG ->
            "Nigèria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Països Baixos"

        Cldr.NO ->
            "Noruega"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nova Zelanda"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panamà"

        Cldr.PE ->
            "Perú"

        Cldr.PF ->
            "Polinèsia Francesa"

        Cldr.PG ->
            "Papua Nova Guinea"

        Cldr.PH ->
            "Filipines"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polònia"

        Cldr.PM ->
            "Saint-Pierre-et-Miquelon"

        Cldr.PN ->
            "Illes Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Territoris palestins"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguai"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Illa de la Reunió"

        Cldr.RO ->
            "Romania"

        Cldr.RS ->
            "Sèrbia"

        Cldr.RU ->
            "Rússia"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Aràbia Saudita"

        Cldr.SB ->
            "Illes Salomó"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Suècia"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Santa Helena"

        Cldr.SI ->
            "Eslovènia"

        Cldr.SJ ->
            "Svalbard i Jan Mayen"

        Cldr.SK ->
            "Eslovàquia"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somàlia"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Sudan del Sud"

        Cldr.ST ->
            "São Tomé i Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Síria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Illes Turks i Caicos"

        Cldr.TD ->
            "Txad"

        Cldr.TF ->
            "Territoris Australs Francesos"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailàndia"

        Cldr.TJ ->
            "Tadjikistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunísia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turquia"

        Cldr.TT ->
            "Trinitat i Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzània"

        Cldr.UA ->
            "Ucraïna"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Illes Perifèriques Menors dels EUA"

        Cldr.US ->
            "Estats Units"

        Cldr.UY ->
            "Uruguai"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Ciutat del Vaticà"

        Cldr.VC ->
            "Saint Vincent i les Grenadines"

        Cldr.VE ->
            "Veneçuela"

        Cldr.VG ->
            "Illes Verges britàniques"

        Cldr.VI ->
            "Illes Verges nord-americanes"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis i Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Iemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "República de Sud-àfrica"

        Cldr.ZM ->
            "Zàmbia"

        Cldr.ZW ->
            "Zimbàbue"