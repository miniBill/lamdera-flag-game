module Cldr.Welsh exposing (countryCodeToName)

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
            "Emiradau Arabaidd Unedig"

        Cldr.AF ->
            "Afghanistan"

        Cldr.AG ->
            "Antigua a Barbuda"

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
            "Yr Ariannin"

        Cldr.AS ->
            "Samoa America"

        Cldr.AT ->
            "Awstria"

        Cldr.AU ->
            "Awstralia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Ynysoedd Åland"

        Cldr.AZ ->
            "Aserbaijan"

        Cldr.BA ->
            "Bosnia a Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesh"

        Cldr.BE ->
            "Gwlad Belg"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bwlgaria"

        Cldr.BH ->
            "Bahrain"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Saint Barthélemy"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Bolifia"

        Cldr.BQ ->
            "Antilles yr Iseldiroedd"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Y Bahamas"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Ynys Bouvet"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarws"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Canada"

        Cldr.CC ->
            "Ynysoedd Cocos (Keeling)"

        Cldr.CD ->
            "Y Congo - Kinshasa"

        Cldr.CF ->
            "Gweriniaeth Canolbarth Affrica"

        Cldr.CG ->
            "Y Congo - Brazzaville"

        Cldr.CH ->
            "Y Swistir"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Ynysoedd Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Camerŵn"

        Cldr.CN ->
            "Tsieina"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Ciwba"

        Cldr.CV ->
            "Cabo Verde"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Ynys y Nadolig"

        Cldr.CY ->
            "Cyprus"

        Cldr.CZ ->
            "Tsiecia"

        Cldr.DE ->
            "Yr Almaen"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "Denmarc"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "Gweriniaeth Dominica"

        Cldr.DZ ->
            "Algeria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Yr Aifft"

        Cldr.EH ->
            "Gorllewin Sahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Sbaen"

        Cldr.ET ->
            "Ethiopia"

        Cldr.FI ->
            "Y Ffindir"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Ynysoedd y Falkland/Malvinas"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Ynysoedd Ffaro"

        Cldr.FR ->
            "Ffrainc"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Y Deyrnas Unedig"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guyane Ffrengig"

        Cldr.GG ->
            "Ynys y Garn"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Yr Ynys Las"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Gini"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Gini Gyhydeddol"

        Cldr.GR ->
            "Gwlad Groeg"

        Cldr.GS ->
            "De Georgia ac Ynysoedd Sandwich y De"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guiné-Bissau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong SAR Tsieina"

        Cldr.HM ->
            "Ynys Heard ac Ynysoedd McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croatia"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Hwngari"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Iwerddon"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Ynys Manaw"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Tiriogaeth Brydeinig Cefnfor India"

        Cldr.IQ ->
            "Irac"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Gwlad yr Iâ"

        Cldr.IT ->
            "Yr Eidal"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Gwlad Iorddonen"

        Cldr.JP ->
            "Japan"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kyrgyzstan"

        Cldr.KH ->
            "Cambodia"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comoros"

        Cldr.KN ->
            "Saint Kitts a Nevis"

        Cldr.KP ->
            "Gogledd Corea"

        Cldr.KR ->
            "De Corea"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Ynysoedd Cayman"

        Cldr.KZ ->
            "Kazakhstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Libanus"

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
            "Lithwania"

        Cldr.LU ->
            "Lwcsembwrg"

        Cldr.LV ->
            "Latfia"

        Cldr.LY ->
            "Libya"

        Cldr.MA ->
            "Moroco"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldofa"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Ynysoedd Marshall"

        Cldr.MK ->
            "Gogledd Macedonia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Burma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "Macau SAR Tsieina"

        Cldr.MP ->
            "Ynysoedd Gogledd Mariana"

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
            "Y Maldives"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mecsico"

        Cldr.MY ->
            "Malaysia"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Caledonia Newydd"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Ynys Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Yr Iseldiroedd"

        Cldr.NO ->
            "Norwy"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Seland Newydd"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Periw"

        Cldr.PF ->
            "Polynesia Ffrengig"

        Cldr.PG ->
            "Papua Guinea Newydd"

        Cldr.PH ->
            "Y Philipinau"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Gwlad Pwyl"

        Cldr.PM ->
            "Saint-Pierre-et-Miquelon"

        Cldr.PN ->
            "Ynysoedd Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Tiriogaethau Palesteinaidd"

        Cldr.PT ->
            "Portiwgal"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Qatar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Rwmania"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rwsia"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Saudi Arabia"

        Cldr.SB ->
            "Ynysoedd Solomon"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Swdan"

        Cldr.SE ->
            "Sweden"

        Cldr.SG ->
            "Singapore"

        Cldr.SH ->
            "Saint Helena"

        Cldr.SI ->
            "Slofenia"

        Cldr.SJ ->
            "Svalbard a Jan Mayen"

        Cldr.SK ->
            "Slofacia"

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
            "De Swdan"

        Cldr.ST ->
            "São Tomé a Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Ynysoedd Turks a Caicos"

        Cldr.TD ->
            "Tsiad"

        Cldr.TF ->
            "Tiroedd Deheuol ac Antarctig Ffrainc"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Gwlad Thai"

        Cldr.TJ ->
            "Tajicistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Tyrcmenistan"

        Cldr.TN ->
            "Tiwnisia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Twrci"

        Cldr.TT ->
            "Trinidad a Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Wcráin"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Ynysoedd Pellennig UDA"

        Cldr.US ->
            "Yr Unol Daleithiau"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Y Fatican"

        Cldr.VC ->
            "Saint Vincent a’r Grenadines"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Ynysoedd Gwyryf Prydain"

        Cldr.VI ->
            "Ynysoedd Gwyryf yr Unol Daleithiau"

        Cldr.VN ->
            "Fietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis a Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "De Affrica"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"