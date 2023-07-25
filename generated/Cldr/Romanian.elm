module Cldr.Romanian exposing (countryCodeToName)

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
            "Emiratele Arabe Unite"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua și Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarctica"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa Americană"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Insulele Åland"

        Cldr.AZ ->
            "Azerbaidjan"

        Cldr.BA ->
            "Bosnia și Herțegovina"

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
            "Insulele Caraibe Olandeze"

        Cldr.BR ->
            "Brazilia"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Insula Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarus"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Insulele Cocos (Keeling)"

        Cldr.CD ->
            "Congo - Kinshasa"

        Cldr.CF ->
            "Republica Centrafricană"

        Cldr.CG ->
            "Congo - Brazzaville"

        Cldr.CH ->
            "Elveția"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Insulele Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Camerun"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Columbia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Capul Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Insula Christmas"

        Cldr.CY ->
            "Cipru"

        Cldr.CZ ->
            "Cehia"

        Cldr.DE ->
            "Germania"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Danemarca"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Republica Dominicană"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egipt"

        Cldr.EH ->
            "Sahara Occidentală"

        Cldr.ER ->
            "Eritreea"

        Cldr.ES ->
            "Spania"

        Cldr.ET ->
            "Etiopia"

        Cldr.FI ->
            "Finlanda"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Insulele Falkland"

        Cldr.FM ->
            "Micronezia"

        Cldr.FO ->
            "Insulele Feroe"

        Cldr.FR ->
            "Franța"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Regatul Unit"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guyana Franceză"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenlanda"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guineea"

        Cldr.GP ->
            "Guadelupa"

        Cldr.GQ ->
            "Guineea Ecuatorială"

        Cldr.GR ->
            "Grecia"

        Cldr.GS ->
            "Georgia de Sud și Insulele Sandwich de Sud"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guineea-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "R.A.S. Hong Kong, China"

        Cldr.HM ->
            "Insula Heard și Insulele McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croația"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungaria"

        Cldr.ID ->
            "Indonezia"

        Cldr.IE ->
            "Irlanda"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Insula Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Teritoriul Britanic din Oceanul Indian"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islanda"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Iordania"

        Cldr.JP ->
            "Japonia"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kârgâzstan"

        Cldr.KH ->
            "Cambodgia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comore"

        Cldr.KN ->
            "Saint Kitts și Nevis"

        Cldr.KP ->
            "Coreea de Nord"

        Cldr.KR ->
            "Coreea de Sud"

        Cldr.KW ->
            "Kuweit"

        Cldr.KY ->
            "Insulele Cayman"

        Cldr.KZ ->
            "Kazahstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Liban"

        Cldr.LC ->
            "Sfânta Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Lituania"

        Cldr.LU ->
            "Luxemburg"

        Cldr.LV ->
            "Letonia"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Maroc"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Republica Moldova"

        Cldr.ME ->
            "Muntenegru"

        Cldr.MF ->
            "Sfântul Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Insulele Marshall"

        Cldr.MK ->
            "Macedonia de Nord"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birmania)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "R.A.S. Macao, China"

        Cldr.MP ->
            "Insulele Mariane de Nord"

        Cldr.MQ ->
            "Martinica"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldive"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexic"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambic"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Noua Caledonie"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Insula Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Țările de Jos"

        Cldr.NO ->
            "Norvegia"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Noua Zeelandă"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polinezia Franceză"

        Cldr.PG ->
            "Papua-Noua Guinee"

        Cldr.PH ->
            "Filipine"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polonia"

        Cldr.PM ->
            "Saint-Pierre și Miquelon"

        Cldr.PN ->
            "Insulele Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Teritoriile Palestiniene"

        Cldr.PT ->
            "Portugalia"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "România"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rusia"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Arabia Saudită"

        Cldr.SB ->
            "Insulele Solomon"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Suedia"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "Sfânta Elena"

        Cldr.SI ->
            "Slovenia"

        Cldr.SJ ->
            "Svalbard și Jan Mayen"

        Cldr.SK ->
            "Slovacia"

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
            "Sudanul de Sud"

        Cldr.ST ->
            "São Tomé și Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint-Maarten"

        Cldr.SY ->
            "Siria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Insulele Turks și Caicos"

        Cldr.TD ->
            "Ciad"

        Cldr.TF ->
            "Teritoriile Australe și Antarctice Franceze"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thailanda"

        Cldr.TJ ->
            "Tadjikistan"

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
            "Turcia"

        Cldr.TT ->
            "Trinidad și Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ucraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Insulele Îndepărtate ale S.U.A."

        Cldr.US ->
            "Statele Unite ale Americii"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Statul Cetății Vaticanului"

        Cldr.VC ->
            "Saint Vincent și Grenadinele"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Insulele Virgine Britanice"

        Cldr.VI ->
            "Insulele Virgine Americane"

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis și Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Africa de Sud"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"