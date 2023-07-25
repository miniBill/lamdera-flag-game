module Cldr.Hungarian exposing (countryCodeToName)

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
            "Egyesült Arab Emírségek"

        Cldr.AF ->
            "Afganisztán"

        Cldr.AG ->
            "Antigua és Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albánia"

        Cldr.AM ->
            "Örményország"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktisz"

        Cldr.AR ->
            "Argentína"

        Cldr.AS ->
            "Amerikai Szamoa"

        Cldr.AT ->
            "Ausztria"

        Cldr.AU ->
            "Ausztrália"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Åland-szigetek"

        Cldr.AZ ->
            "Azerbajdzsán"

        Cldr.BA ->
            "Bosznia-Hercegovina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Banglades"

        Cldr.BE ->
            "Belgium"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bulgária"

        Cldr.BH ->
            "Bahrein"

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
            "Bolívia"

        Cldr.BQ ->
            "Holland Karib-térség"

        Cldr.BR ->
            "Brazília"

        Cldr.BS ->
            "Bahama-szigetek"

        Cldr.BT ->
            "Bhután"

        Cldr.BV ->
            "Bouvet-sziget"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Belarusz"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kókusz (Keeling)-szigetek"

        Cldr.CD ->
            "Kongó – Kinshasa"

        Cldr.CF ->
            "Közép-afrikai Köztársaság"

        Cldr.CG ->
            "Kongó – Brazzaville"

        Cldr.CH ->
            "Svájc"

        Cldr.CI ->
            "Elefántcsontpart"

        Cldr.CK ->
            "Cook-szigetek"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Kína"

        Cldr.CO ->
            "Kolumbia"

        Cldr.CR ->
            "Costa Rica"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Zöld-foki Köztársaság"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Karácsony-sziget"

        Cldr.CY ->
            "Ciprus"

        Cldr.CZ ->
            "Csehország"

        Cldr.DE ->
            "Németország"

        Cldr.DJ ->
            "Dzsibuti"

        Cldr.DK ->
            "Dánia"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikai Köztársaság"

        Cldr.DZ ->
            "Algéria"

        Cldr.EC ->
            "Ecuador"

        Cldr.EE ->
            "Észtország"

        Cldr.EG ->
            "Egyiptom"

        Cldr.EH ->
            "Nyugat-Szahara"

        Cldr.ER ->
            "Eritrea"

        Cldr.ES ->
            "Spanyolország"

        Cldr.ET ->
            "Etiópia"

        Cldr.FI ->
            "Finnország"

        Cldr.FJ ->
            "Fidzsi"

        Cldr.FK ->
            "Falkland-szigetek"

        Cldr.FM ->
            "Mikronézia"

        Cldr.FO ->
            "Feröer szigetek"

        Cldr.FR ->
            "Franciaország"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Egyesült Királyság"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Grúzia"

        Cldr.GF ->
            "Francia Guyana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghána"

        Cldr.GI ->
            "Gibraltár"

        Cldr.GL ->
            "Grönland"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Guinea"

        Cldr.GP ->
            "Guadeloupe"

        Cldr.GQ ->
            "Egyenlítői-Guinea"

        Cldr.GR ->
            "Görögország"

        Cldr.GS ->
            "Déli-Georgia és Déli-Sandwich-szigetek"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Bissau-Guinea"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hongkong KKT"

        Cldr.HM ->
            "Heard-sziget és McDonald-szigetek"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Horvátország"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Magyarország"

        Cldr.ID ->
            "Indonézia"

        Cldr.IE ->
            "Írország"

        Cldr.IL ->
            "Izrael"

        Cldr.IM ->
            "Man-sziget"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Brit Indiai-óceáni Terület"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Irán"

        Cldr.IS ->
            "Izland"

        Cldr.IT ->
            "Olaszország"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaica"

        Cldr.JO ->
            "Jordánia"

        Cldr.JP ->
            "Japán"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kirgizisztán"

        Cldr.KH ->
            "Kambodzsa"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Comore-szigetek"

        Cldr.KN ->
            "Saint Kitts és Nevis"

        Cldr.KP ->
            "Észak-Korea"

        Cldr.KR ->
            "Dél-Korea"

        Cldr.KW ->
            "Kuvait"

        Cldr.KY ->
            "Kajmán-szigetek"

        Cldr.KZ ->
            "Kazahsztán"

        Cldr.LA ->
            "Laosz"

        Cldr.LB ->
            "Libanon"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Liechtenstein"

        Cldr.LK ->
            "Srí Lanka"

        Cldr.LR ->
            "Libéria"

        Cldr.LS ->
            "Lesotho"

        Cldr.LT_ ->
            "Litvánia"

        Cldr.LU ->
            "Luxemburg"

        Cldr.LV ->
            "Lettország"

        Cldr.LY ->
            "Líbia"

        Cldr.MA ->
            "Marokkó"

        Cldr.MC ->
            "Monaco"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Montenegró"

        Cldr.MF ->
            "Saint Martin"

        Cldr.MG ->
            "Madagaszkár"

        Cldr.MH ->
            "Marshall-szigetek"

        Cldr.MK ->
            "Észak-Macedónia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mianmar"

        Cldr.MN ->
            "Mongólia"

        Cldr.MO ->
            "Makaó KKT"

        Cldr.MP ->
            "Északi Mariana-szigetek"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "Mauritánia"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Málta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Maldív-szigetek"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mexikó"

        Cldr.MY ->
            "Malajzia"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namíbia"

        Cldr.NC ->
            "Új-Kaledónia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk-sziget"

        Cldr.NG ->
            "Nigéria"

        Cldr.NI ->
            "Nicaragua"

        Cldr.NL ->
            "Hollandia"

        Cldr.NO ->
            "Norvégia"

        Cldr.NP ->
            "Nepál"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Új-Zéland"

        Cldr.OM ->
            "Omán"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Francia Polinézia"

        Cldr.PG ->
            "Pápua Új-Guinea"

        Cldr.PH ->
            "Fülöp-szigetek"

        Cldr.PK ->
            "Pakisztán"

        Cldr.PL ->
            "Lengyelország"

        Cldr.PM ->
            "Saint-Pierre és Miquelon"

        Cldr.PN ->
            "Pitcairn-szigetek"

        Cldr.PR ->
            "Puerto Rico"

        Cldr.PS ->
            "Palesztin Autonómia"

        Cldr.PT ->
            "Portugália"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paraguay"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Réunion"

        Cldr.RO ->
            "Románia"

        Cldr.RS ->
            "Szerbia"

        Cldr.RU ->
            "Oroszország"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Szaúd-Arábia"

        Cldr.SB ->
            "Salamon-szigetek"

        Cldr.SC ->
            "Seychelle-szigetek"

        Cldr.SD ->
            "Szudán"

        Cldr.SE ->
            "Svédország"

        Cldr.SG ->
            "Szingapúr"

        Cldr.SH ->
            "Szent Ilona"

        Cldr.SI ->
            "Szlovénia"

        Cldr.SJ ->
            "Svalbard és Jan Mayen"

        Cldr.SK ->
            "Szlovákia"

        Cldr.SL ->
            "Sierra Leone"

        Cldr.SM ->
            "San Marino"

        Cldr.SN ->
            "Szenegál"

        Cldr.SO ->
            "Szomália"

        Cldr.SR ->
            "Suriname"

        Cldr.SS ->
            "Dél-Szudán"

        Cldr.ST ->
            "São Tomé és Príncipe"

        Cldr.SV ->
            "Salvador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Szíria"

        Cldr.SZ ->
            "Szváziföld"

        Cldr.TC ->
            "Turks- és Caicos-szigetek"

        Cldr.TD ->
            "Csád"

        Cldr.TF ->
            "Francia Déli Területek"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Thaiföld"

        Cldr.TJ ->
            "Tádzsikisztán"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Kelet-Timor"

        Cldr.TM ->
            "Türkmenisztán"

        Cldr.TN ->
            "Tunézia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Törökország"

        Cldr.TT ->
            "Trinidad és Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Tajvan"

        Cldr.TZ ->
            "Tanzánia"

        Cldr.UA ->
            "Ukrajna"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Az USA lakatlan külbirtokai"

        Cldr.US ->
            "Egyesült Államok"

        Cldr.UY ->
            "Uruguay"

        Cldr.UZ ->
            "Üzbegisztán"

        Cldr.VA ->
            "Vatikán"

        Cldr.VC ->
            "Saint Vincent és a Grenadine-szigetek"

        Cldr.VE ->
            "Venezuela"

        Cldr.VG ->
            "Brit Virgin-szigetek"

        Cldr.VI ->
            "Amerikai Virgin-szigetek"

        Cldr.VN ->
            "Vietnám"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis és Futuna"

        Cldr.WS ->
            "Szamoa"

        Cldr.XK ->
            "Koszovó"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "Dél-afrikai Köztársaság"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"