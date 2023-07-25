module Cldr.Lithuanian exposing (countryCodeToName)

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
            "Jungtiniai Arabų Emyratai"

        Cldr.AF ->
            "Afganistanas"

        Cldr.AG ->
            "Antigva ir Barbuda"

        Cldr.AI ->
            "Angilija"

        Cldr.AL ->
            "Albanija"

        Cldr.AM ->
            "Armėnija"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktida"

        Cldr.AR ->
            "Argentina"

        Cldr.AS ->
            "Amerikos Samoa"

        Cldr.AT ->
            "Austrija"

        Cldr.AU ->
            "Australija"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Alandų Salos"

        Cldr.AZ ->
            "Azerbaidžanas"

        Cldr.BA ->
            "Bosnija ir Hercegovina"

        Cldr.BB ->
            "Barbadosas"

        Cldr.BD ->
            "Bangladešas"

        Cldr.BE ->
            "Belgija"

        Cldr.BF ->
            "Burkina Fasas"

        Cldr.BG ->
            "Bulgarija"

        Cldr.BH ->
            "Bahreinas"

        Cldr.BI ->
            "Burundis"

        Cldr.BJ ->
            "Beninas"

        Cldr.BL ->
            "Sen Bartelemi"

        Cldr.BM ->
            "Bermuda"

        Cldr.BN ->
            "Brunėjus"

        Cldr.BO ->
            "Bolivija"

        Cldr.BQ ->
            "Karibų Nyderlandai"

        Cldr.BR ->
            "Brazilija"

        Cldr.BS ->
            "Bahamos"

        Cldr.BT ->
            "Butanas"

        Cldr.BV ->
            "Buvė Sala"

        Cldr.BW ->
            "Botsvana"

        Cldr.BY ->
            "Baltarusija"

        Cldr.BZ ->
            "Belizas"

        Cldr.CA ->
            "Kanada"

        Cldr.CC ->
            "Kokosų (Kilingo) Salos"

        Cldr.CD ->
            "Kongas-Kinšasa"

        Cldr.CF ->
            "Centrinės Afrikos Respublika"

        Cldr.CG ->
            "Kongas-Brazavilis"

        Cldr.CH ->
            "Šveicarija"

        Cldr.CI ->
            "Dramblio Kaulo Krantas"

        Cldr.CK ->
            "Kuko Salos"

        Cldr.CL ->
            "Čilė"

        Cldr.CM ->
            "Kamerūnas"

        Cldr.CN ->
            "Kinija"

        Cldr.CO ->
            "Kolumbija"

        Cldr.CR ->
            "Kosta Rika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Žaliasis Kyšulys"

        Cldr.CW ->
            "Kiurasao"

        Cldr.CX ->
            "Kalėdų Sala"

        Cldr.CY ->
            "Kipras"

        Cldr.CZ ->
            "Čekija"

        Cldr.DE ->
            "Vokietija"

        Cldr.DJ ->
            "Džibutis"

        Cldr.DK ->
            "Danija"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikos Respublika"

        Cldr.DZ ->
            "Alžyras"

        Cldr.EC ->
            "Ekvadoras"

        Cldr.EE ->
            "Estija"

        Cldr.EG ->
            "Egiptas"

        Cldr.EH ->
            "Vakarų Sachara"

        Cldr.ER ->
            "Eritrėja"

        Cldr.ES ->
            "Ispanija"

        Cldr.ET ->
            "Etiopija"

        Cldr.FI ->
            "Suomija"

        Cldr.FJ ->
            "Fidžis"

        Cldr.FK ->
            "Folklando Salos"

        Cldr.FM ->
            "Mikronezija"

        Cldr.FO ->
            "Farerų Salos"

        Cldr.FR ->
            "Prancūzija"

        Cldr.GA ->
            "Gabonas"

        Cldr.GB ->
            "Jungtinė Karalystė"

        Cldr.GD ->
            "Grenada"

        Cldr.GE ->
            "Gruzija"

        Cldr.GF ->
            "Prancūzijos Gviana"

        Cldr.GG ->
            "Gernsis"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gibraltaras"

        Cldr.GL ->
            "Grenlandija"

        Cldr.GM ->
            "Gambija"

        Cldr.GN ->
            "Gvinėja"

        Cldr.GP ->
            "Gvadelupa"

        Cldr.GQ ->
            "Pusiaujo Gvinėja"

        Cldr.GR ->
            "Graikija"

        Cldr.GS ->
            "Pietų Džordžija ir Pietų Sandvičo salos"

        Cldr.GT_ ->
            "Gvatemala"

        Cldr.GU ->
            "Guamas"

        Cldr.GW ->
            "Bisau Gvinėja"

        Cldr.GY ->
            "Gajana"

        Cldr.HK ->
            "Ypatingasis Administracinis Kinijos Regionas Honkongas"

        Cldr.HM ->
            "Herdo ir Makdonaldo Salos"

        Cldr.HN ->
            "Hondūras"

        Cldr.HR ->
            "Kroatija"

        Cldr.HT ->
            "Haitis"

        Cldr.HU ->
            "Vengrija"

        Cldr.ID ->
            "Indonezija"

        Cldr.IE ->
            "Airija"

        Cldr.IL ->
            "Izraelis"

        Cldr.IM ->
            "Meno Sala"

        Cldr.IN ->
            "Indija"

        Cldr.IO ->
            "Indijos Vandenyno Britų Sritis"

        Cldr.IQ ->
            "Irakas"

        Cldr.IR ->
            "Iranas"

        Cldr.IS ->
            "Islandija"

        Cldr.IT ->
            "Italija"

        Cldr.JE ->
            "Džersis"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jordanija"

        Cldr.JP ->
            "Japonija"

        Cldr.KE ->
            "Kenija"

        Cldr.KG ->
            "Kirgizija"

        Cldr.KH ->
            "Kambodža"

        Cldr.KI ->
            "Kiribatis"

        Cldr.KM ->
            "Komorai"

        Cldr.KN ->
            "Sent Kitsas ir Nevis"

        Cldr.KP ->
            "Šiaurės Korėja"

        Cldr.KR ->
            "Pietų Korėja"

        Cldr.KW ->
            "Kuveitas"

        Cldr.KY ->
            "Kaimanų Salos"

        Cldr.KZ ->
            "Kazachstanas"

        Cldr.LA ->
            "Laosas"

        Cldr.LB ->
            "Libanas"

        Cldr.LC ->
            "Sent Lusija"

        Cldr.LI ->
            "Lichtenšteinas"

        Cldr.LK ->
            "Šri Lanka"

        Cldr.LR ->
            "Liberija"

        Cldr.LS ->
            "Lesotas"

        Cldr.LT_ ->
            "Lietuva"

        Cldr.LU ->
            "Liuksemburgas"

        Cldr.LV ->
            "Latvija"

        Cldr.LY ->
            "Libija"

        Cldr.MA ->
            "Marokas"

        Cldr.MC ->
            "Monakas"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Juodkalnija"

        Cldr.MF ->
            "Sen Martenas"

        Cldr.MG ->
            "Madagaskaras"

        Cldr.MH ->
            "Maršalo Salos"

        Cldr.MK ->
            "Šiaurės Makedonija"

        Cldr.ML ->
            "Malis"

        Cldr.MM ->
            "Mianmaras (Birma)"

        Cldr.MN ->
            "Mongolija"

        Cldr.MO ->
            "Ypatingasis Administracinis Kinijos Regionas Makao"

        Cldr.MP ->
            "Marianos Šiaurinės Salos"

        Cldr.MQ ->
            "Martinika"

        Cldr.MR ->
            "Mauritanija"

        Cldr.MS ->
            "Montseratas"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Mauricijus"

        Cldr.MV ->
            "Maldyvai"

        Cldr.MW ->
            "Malavis"

        Cldr.MX ->
            "Meksika"

        Cldr.MY ->
            "Malaizija"

        Cldr.MZ ->
            "Mozambikas"

        Cldr.NA ->
            "Namibija"

        Cldr.NC ->
            "Naujoji Kaledonija"

        Cldr.NE ->
            "Nigeris"

        Cldr.NF ->
            "Norfolko sala"

        Cldr.NG ->
            "Nigerija"

        Cldr.NI ->
            "Nikaragva"

        Cldr.NL ->
            "Nyderlandai"

        Cldr.NO ->
            "Norvegija"

        Cldr.NP ->
            "Nepalas"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niujė"

        Cldr.NZ ->
            "Naujoji Zelandija"

        Cldr.OM ->
            "Omanas"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Prancūzijos Polinezija"

        Cldr.PG ->
            "Papua Naujoji Gvinėja"

        Cldr.PH ->
            "Filipinai"

        Cldr.PK ->
            "Pakistanas"

        Cldr.PL ->
            "Lenkija"

        Cldr.PM ->
            "Sen Pjeras ir Mikelonas"

        Cldr.PN ->
            "Pitkerno salos"

        Cldr.PR ->
            "Puerto Rikas"

        Cldr.PS ->
            "Palestinos teritorija"

        Cldr.PT ->
            "Portugalija"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragvajus"

        Cldr.QA ->
            "Kataras"

        Cldr.RE ->
            "Reunjonas"

        Cldr.RO ->
            "Rumunija"

        Cldr.RS ->
            "Serbija"

        Cldr.RU ->
            "Rusija"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saudo Arabija"

        Cldr.SB ->
            "Saliamono Salos"

        Cldr.SC ->
            "Seišeliai"

        Cldr.SD ->
            "Sudanas"

        Cldr.SE ->
            "Švedija"

        Cldr.SG ->
            "Singapūras"

        Cldr.SH ->
            "Šv. Elenos Sala"

        Cldr.SI ->
            "Slovėnija"

        Cldr.SJ ->
            "Svalbardas ir Janas Majenas"

        Cldr.SK ->
            "Slovakija"

        Cldr.SL ->
            "Siera Leonė"

        Cldr.SM ->
            "San Marinas"

        Cldr.SN ->
            "Senegalas"

        Cldr.SO ->
            "Somalis"

        Cldr.SR ->
            "Surinamas"

        Cldr.SS ->
            "Pietų Sudanas"

        Cldr.ST ->
            "San Tomė ir Prinsipė"

        Cldr.SV ->
            "Salvadoras"

        Cldr.SX ->
            "Sint Martenas"

        Cldr.SY ->
            "Sirija"

        Cldr.SZ ->
            "Svazilandas"

        Cldr.TC ->
            "Terkso ir Kaikoso Salos"

        Cldr.TD ->
            "Čadas"

        Cldr.TF ->
            "Prancūzijos Pietų sritys"

        Cldr.TG ->
            "Togas"

        Cldr.TH ->
            "Tailandas"

        Cldr.TJ ->
            "Tadžikija"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Rytų Timoras"

        Cldr.TM ->
            "Turkmėnistanas"

        Cldr.TN ->
            "Tunisas"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turkija"

        Cldr.TT ->
            "Trinidadas ir Tobagas"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taivanas"

        Cldr.TZ ->
            "Tanzanija"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Jungtinių Valstijų Mažosios Tolimosios Salos"

        Cldr.US ->
            "Jungtinės Valstijos"

        Cldr.UY ->
            "Urugvajus"

        Cldr.UZ ->
            "Uzbekistanas"

        Cldr.VA ->
            "Vatikano Miesto Valstybė"

        Cldr.VC ->
            "Šventasis Vincentas ir Grenadinai"

        Cldr.VE ->
            "Venesuela"

        Cldr.VG ->
            "Didžiosios Britanijos Mergelių Salos"

        Cldr.VI ->
            "Jungtinių Valstijų Mergelių Salos"

        Cldr.VN ->
            "Vietnamas"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Volisas ir Futūna"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosovas"

        Cldr.YE ->
            "Jemenas"

        Cldr.YT ->
            "Majotas"

        Cldr.ZA ->
            "Pietų Afrika"

        Cldr.ZM ->
            "Zambija"

        Cldr.ZW ->
            "Zimbabvė"