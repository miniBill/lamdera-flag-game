module Cldr.Spanish.LatinAmerican exposing (countryCodeToName)

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
            "Emiratos Árabes Unidos"

        Cldr.AF ->
            "Afganistán"

        Cldr.AG ->
            "Antigua y Barbuda"

        Cldr.AI ->
            "Anguila"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antártida"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Samoa Americana"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Islas Åland"

        Cldr.AZ ->
            "Azerbaiyán"

        Cldr.BA ->
            "Bosnia-Herzegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladés"

        Cldr.BE ->
            "Bélgica"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgaria"

        Cldr.BH ->
            "Baréin"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benín"

        Cldr.BL ->
            "San Bartolomé"

        Cldr.BM ->
            "Bermudas"

        Cldr.BN ->
            "Brunéi"

        Cldr.BO ->
            "Bolivia"

        Cldr.BQ ->
            "Caribe neerlandés"

        Cldr.BR ->
            "Brasil"

        Cldr.BS ->
            "Bahamas"

        Cldr.BT ->
            "Bután"

        Cldr.BV ->
            "Isla Bouvet"

        Cldr.BW ->
            "Botsuana"

        Cldr.BY ->
            "Bielorrusia"

        Cldr.BZ ->
            "Belice"

        Cldr.CA ->
            "Canadá"

        Cldr.CC ->
            "Islas Cocos"

        Cldr.CD ->
            "República Democrática del Congo"

        Cldr.CF ->
            "República Centroafricana"

        Cldr.CG ->
            "República del Congo"

        Cldr.CH ->
            "Suiza"

        Cldr.CI ->
            "Costa de Marfil"

        Cldr.CK ->
            "Islas Cook"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Camerún"

        Cldr.CN ->
            "China"

        Cldr.CO ->
            "Colombia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Cuba"

        Cldr.CV ->
            "Cabo Verde"

        Cldr.CW ->
            "Curazao"

        Cldr.CX ->
            "Isla de Navidad"

        Cldr.CY ->
            "Chipre"

        Cldr.CZ ->
            "Chequia"

        Cldr.DE ->
            "Alemania"

        Cldr.DJ ->
            "Yibuti"

        Cldr.DK ->
            "Dinamarca"

        Cldr.DM ->
            "Dominica"

        Cldr.DO ->
            "República Dominicana"

        Cldr.DZ ->
            "Argelia"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egipto"

        Cldr.EH ->
            "Sáhara Occidental"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "España"

        Cldr.ET ->
            "Etiopía"

        Cldr.FI ->
            "Finlandia"

        Cldr.FJ ->
            "Fiyi"

        Cldr.FK ->
            "Islas Malvinas"

        Cldr.FM ->
            "Micronesia"

        Cldr.FO ->
            "Islas Feroe"

        Cldr.FR ->
            "Francia"

        Cldr.GA ->
            "Gabón"

        Cldr.GB ->
            "Reino Unido"

        Cldr.GD ->
            "Granada"

        Cldr.GE ->
            "Georgia"

        Cldr.GF ->
            "Guayana Francesa"

        Cldr.GG ->
            "Guernesey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Groenlandia"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadalupe"

        Cldr.GQ ->
            "Guinea Ecuatorial"

        Cldr.GR ->
            "Grecia"

        Cldr.GS ->
            "Islas Georgia del Sur y Sandwich del Sur"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guinea-Bisáu"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "RAE de Hong Kong (China)"

        Cldr.HM ->
            "Islas Heard y McDonald"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Croacia"

        Cldr.HT ->
            "Haití"

        Cldr.HU ->
            "Hungría"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Irlanda"

        Cldr.IL ->
            "Israel"

        Cldr.IM ->
            "Isla de Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Territorio Británico del Océano Índico"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Irán"

        Cldr.IS ->
            "Islandia"

        Cldr.IT ->
            "Italia"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordania"

        Cldr.JP ->
            "Japón"

        Cldr.KE ->
            "Kenia"

        Cldr.KG ->
            "Kirguistán"

        Cldr.KH ->
            "Camboya"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comoras"

        Cldr.KN ->
            "San Cristóbal y Nieves"

        Cldr.KP ->
            "Corea del Norte"

        Cldr.KR ->
            "Corea del Sur"

        Cldr.KW ->
            "Kuwait"

        Cldr.KY ->
            "Islas Caimán"

        Cldr.KZ ->
            "Kazajistán"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Líbano"

        Cldr.LC ->
            "Santa Lucía"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Sri Lanka"

        Cldr.LR ->
            "Liberia"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Lituania"

        Cldr.LU ->
            "Luxemburgo"

        Cldr.LV ->
            "Letonia"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Marruecos"

        Cldr.MC ->
            "Mónaco"

        Cldr.MD ->
            "Moldavia"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "San Martín"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Islas Marshall"

        Cldr.MK ->
            "Macedonia del Norte"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Myanmar (Birmania)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "RAE de Macao (China)"

        Cldr.MP ->
            "Islas Marianas del Norte"

        Cldr.MQ ->
            "Martinica"

        Cldr.MR ->
            "Mauritania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauricio"

        Cldr.MV ->
            "Maldivas"

        Cldr.MW ->
            "Malaui"

        Cldr.MX ->
            "México"

        Cldr.MY ->
            "Malasia"

        Cldr.MZ ->
            "Mozambique"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Nueva Caledonia"

        Cldr.NE ->
            "Níger"

        Cldr.NF ->
            "Isla Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Países Bajos"

        Cldr.NO ->
            "Noruega"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nueva Zelanda"

        Cldr.OM ->
            "Omán"

        Cldr.PA ->
            "Panamá"

        Cldr.PE ->
            "Perú"

        Cldr.PF ->
            "Polinesia Francesa"

        Cldr.PG ->
            "Papúa Nueva Guinea"

        Cldr.PH ->
            "Filipinas"

        Cldr.PK ->
            "Pakistán"

        Cldr.PL ->
            "Polonia"

        Cldr.PM ->
            "San Pedro y Miquelón"

        Cldr.PN ->
            "Islas Pitcairn"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Territorios Palestinos"

        Cldr.PT ->
            "Portugal"

        Cldr.PW ->
            "Palaos"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Catar"

        Cldr.RE ->
            "Reunión"

        Cldr.RO ->
            "Rumanía"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rusia"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Arabia Saudí"

        Cldr.SB ->
            "Islas Salomón"

        Cldr.SC ->
            "Seychelles"

        Cldr.SD ->
            "Sudán"

        Cldr.SE ->
            "Suecia"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Santa Elena"

        Cldr.SI ->
            "Eslovenia"

        Cldr.SJ ->
            "Svalbard y Jan Mayen"

        Cldr.SK ->
            "Eslovaquia"

        Cldr.SL ->
            "Sierra Leona"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Senegal"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Surinam"

        Cldr.SS ->
            "Sudán del Sur"

        Cldr.ST ->
            "Santo Tomé y Príncipe"

        Cldr.SV ->
            "El Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Siria"

        Cldr.SZ ->
            "Esuatini"

        Cldr.TC ->
            "Islas Turcas y Caicos"

        Cldr.TD ->
            "Chad"

        Cldr.TF ->
            "Territorios Australes Franceses"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailandia"

        Cldr.TJ ->
            "Tayikistán"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor-Leste"

        Cldr.TM ->
            "Turkmenistán"

        Cldr.TN ->
            "Túnez"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turquía"

        Cldr.TT ->
            "Trinidad y Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taiwán"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ucrania"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Islas Ultramarinas de EE.UU."

        Cldr.US ->
            "Estados Unidos"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Uzbekistán"

        Cldr.VA ->
            "Ciudad del Vaticano"

        Cldr.VC ->
            "San Vicente y las Granadinas"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Islas Vírgenes Británicas"

        Cldr.VI ->
            "Islas Vírgenes de EE. UU."

        Cldr.VN ->
            "Vietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis y Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovo"

        Cldr.YE ->
            "Yemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Sudáfrica"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabue"