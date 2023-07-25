module Cldr.Polish exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andora"

        Cldr.AE ->
            "Zjednoczone Emiraty Arabskie"

        Cldr.AF ->
            "Afganistan"

        Cldr.AG ->
            "Antigua i Barbuda"

        Cldr.AI ->
            "Anguilla"

        Cldr.AL ->
            "Albania"

        Cldr.AM ->
            "Armenia"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktyda"

        Cldr.AR ->
            "Argentyna"

        Cldr.AS ->
            "Samoa Amerykańskie"

        Cldr.AT ->
            "Austria"

        Cldr.AU ->
            "Australia"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Wyspy Alandzkie"

        Cldr.AZ ->
            "Azerbejdżan"

        Cldr.BA ->
            "Bośnia i Hercegowina"

        Cldr.BB ->
            "Barbados"

        Cldr.BD ->
            "Bangladesz"

        Cldr.BE ->
            "Belgia"

        Cldr.BF ->
            "Burkina Faso"

        Cldr.BG ->
            "Bułgaria"

        Cldr.BH ->
            "Bahrajn"

        Cldr.BI ->
            "Burundi"

        Cldr.BJ ->
            "Benin"

        Cldr.BL ->
            "Saint-Barthélemy"

        Cldr.BM ->
            "Bermudy"

        Cldr.BN ->
            "Brunei"

        Cldr.BO ->
            "Boliwia"

        Cldr.BQ ->
            "Niderlandy Karaibskie"

        Cldr.BR ->
            "Brazylia"

        Cldr.BS ->
            "Bahamy"

        Cldr.BT ->
            "Bhutan"

        Cldr.BV ->
            "Wyspa Bouveta"

        Cldr.BW ->
            "Botswana"

        Cldr.BY ->
            "Białoruś"

        Cldr.BZ ->
            "Belize"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Wyspy Kokosowe"

        Cldr.CD ->
            "Demokratyczna Republika Konga"

        Cldr.CF ->
            "Republika Środkowoafrykańska"

        Cldr.CG ->
            "Kongo"

        Cldr.CH ->
            "Szwajcaria"

        Cldr.CI ->
            "Côte d’Ivoire"

        Cldr.CK ->
            "Wyspy Cooka"

        Cldr.CL ->
            "Chile"

        Cldr.CM ->
            "Kamerun"

        Cldr.CN ->
            "Chiny"

        Cldr.CO ->
            "Kolumbia"

        Cldr.CR ->
            "Kostaryka"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Republika Zielonego Przylądka"

        Cldr.CW ->
            "Curaçao"

        Cldr.CX ->
            "Wyspa Bożego Narodzenia"

        Cldr.CY ->
            "Cypr"

        Cldr.CZ ->
            "Czechy"

        Cldr.DE ->
            "Niemcy"

        Cldr.DJ ->
            "Dżibuti"

        Cldr.DK ->
            "Dania"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikana"

        Cldr.DZ ->
            "Algieria"

        Cldr.EC ->
            "Ekwador"

        Cldr.EE ->
            "Estonia"

        Cldr.EG ->
            "Egipt"

        Cldr.EH ->
            "Sahara Zachodnia"

        Cldr.ER ->
            "Erytrea"

        Cldr.ES ->
            "Hiszpania"

        Cldr.ET ->
            "Etiopia"

        Cldr.FI ->
            "Finlandia"

        Cldr.FJ ->
            "Fidżi"

        Cldr.FK ->
            "Falklandy"

        Cldr.FM ->
            "Mikronezja"

        Cldr.FO ->
            "Wyspy Owcze"

        Cldr.FR ->
            "Francja"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Wielka Brytania"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruzja"

        Cldr.GF ->
            "Gujana Francuska"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Ghana"

        Cldr.GI ->
            "Gibraltar"

        Cldr.GL ->
            "Grenlandia"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Gwinea"

        Cldr.GP ->
            "Gwadelupa"

        Cldr.GQ ->
            "Gwinea Równikowa"

        Cldr.GR ->
            "Grecja"

        Cldr.GS ->
            "Georgia Południowa i Sandwich Południowy"

        Cldr.GT_ ->
            "Gwatemala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Gwinea Bissau"

        Cldr.GY ->
            "Gujana"

        Cldr.HK ->
            "SRA Hongkong (Chiny)"

        Cldr.HM ->
            "Wyspy Heard i McDonalda"

        Cldr.HN ->
            "Honduras"

        Cldr.HR ->
            "Chorwacja"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Węgry"

        Cldr.ID ->
            "Indonezja"

        Cldr.IE ->
            "Irlandia"

        Cldr.IL ->
            "Izrael"

        Cldr.IM ->
            "Wyspa Man"

        Cldr.IN ->
            "Indie"

        Cldr.IO ->
            "Brytyjskie Terytorium Oceanu Indyjskiego"

        Cldr.IQ ->
            "Irak"

        Cldr.IR ->
            "Iran"

        Cldr.IS ->
            "Islandia"

        Cldr.IT ->
            "Włochy"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamajka"

        Cldr.JO ->
            "Jordania"

        Cldr.JP ->
            "Japonia"

        Cldr.KE ->
            "Kenia"

        Cldr.KG ->
            "Kirgistan"

        Cldr.KH ->
            "Kambodża"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komory"

        Cldr.KN ->
            "Saint Kitts i Nevis"

        Cldr.KP ->
            "Korea Północna"

        Cldr.KR ->
            "Korea Południowa"

        Cldr.KW ->
            "Kuwejt"

        Cldr.KY ->
            "Kajmany"

        Cldr.KZ ->
            "Kazachstan"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "Liban"

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
            "Litwa"

        Cldr.LU ->
            "Luksemburg"

        Cldr.LV ->
            "Łotwa"

        Cldr.LY ->
            "Libia"

        Cldr.MA ->
            "Maroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Mołdawia"

        Cldr.ME ->
            "Czarnogóra"

        Cldr.MF ->
            "Saint-Martin"

        Cldr.MG ->
            "Madagaskar"

        Cldr.MH ->
            "Wyspy Marshalla"

        Cldr.MK ->
            "Macedonia Północna"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mjanma (Birma)"

        Cldr.MN ->
            "Mongolia"

        Cldr.MO ->
            "SRA Makau (Chiny)"

        Cldr.MP ->
            "Mariany Północne"

        Cldr.MQ ->
            "Martynika"

        Cldr.MR ->
            "Mauretania"

        Cldr.MS ->
            "Montserrat"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauritius"

        Cldr.MV ->
            "Malediwy"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Meksyk"

        Cldr.MY ->
            "Malezja"

        Cldr.MZ ->
            "Mozambik"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Nowa Kaledonia"

        Cldr.NE ->
            "Niger"

        Cldr.NF ->
            "Norfolk"

        Cldr.NG ->
            "Nigeria"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Holandia"

        Cldr.NO ->
            "Norwegia"

        Cldr.NP ->
            "Nepal"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Nowa Zelandia"

        Cldr.OM ->
            "Oman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Polinezja Francuska"

        Cldr.PG ->
            "Papua-Nowa Gwinea"

        Cldr.PH ->
            "Filipiny"

        Cldr.PK ->
            "Pakistan"

        Cldr.PL ->
            "Polska"

        Cldr.PM ->
            "Saint-Pierre i Miquelon"

        Cldr.PN ->
            "Pitcairn"

        Cldr.PR ->
            "Portoryko"

        Cldr.PS ->
            "Terytoria Palestyńskie"

        Cldr.PT ->
            "Portugalia"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragwaj"

        Cldr.QA ->
            "Katar"

        Cldr.RE ->
            "Reunion"

        Cldr.RO ->
            "Rumunia"

        Cldr.RS ->
            "Serbia"

        Cldr.RU ->
            "Rosja"

        Cldr.RW ->
            "Rwanda"

        Cldr.SA ->
            "Arabia Saudyjska"

        Cldr.SB ->
            "Wyspy Salomona"

        Cldr.SC ->
            "Seszele"

        Cldr.SD ->
            "Sudan"

        Cldr.SE ->
            "Szwecja"

        Cldr.SG ->
            "Singapur"

        Cldr.SH ->
            "Wyspa Świętej Heleny"

        Cldr.SI ->
            "Słowenia"

        Cldr.SJ ->
            "Svalbard i Jan Mayen"

        Cldr.SK ->
            "Słowacja"

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
            "Sudan Południowy"

        Cldr.ST ->
            "Wyspy Świętego Tomasza i Książęca"

        Cldr.SV ->
            "Salwador"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "Syria"

        Cldr.SZ ->
            "Eswatini"

        Cldr.TC ->
            "Turks i Caicos"

        Cldr.TD ->
            "Czad"

        Cldr.TF ->
            "Francuskie Terytoria Południowe i Antarktyczne"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tajlandia"

        Cldr.TJ ->
            "Tadżykistan"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Timor Wschodni"

        Cldr.TM ->
            "Turkmenistan"

        Cldr.TN ->
            "Tunezja"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turcja"

        Cldr.TT ->
            "Trynidad i Tobago"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Tajwan"

        Cldr.TZ ->
            "Tanzania"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Dalekie Wyspy Mniejsze Stanów Zjednoczonych"

        Cldr.US ->
            "Stany Zjednoczone"

        Cldr.UY ->
            "Urugwaj"

        Cldr.UZ ->
            "Uzbekistan"

        Cldr.VA ->
            "Watykan"

        Cldr.VC ->
            "Saint Vincent i Grenadyny"

        Cldr.VE ->
            "Wenezuela"

        Cldr.VG ->
            "Brytyjskie Wyspy Dziewicze"

        Cldr.VI ->
            "Wyspy Dziewicze Stanów Zjednoczonych"

        Cldr.VN ->
            "Wietnam"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Wallis i Futuna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosowo"

        Cldr.YE ->
            "Jemen"

        Cldr.YT ->
            "Majotta"

        Cldr.ZA ->
            "Republika Południowej Afryki"

        Cldr.ZM ->
            "Zambia"

        Cldr.ZW ->
            "Zimbabwe"