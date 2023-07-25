module Cldr.Latvian exposing (countryCodeToName)

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
            "Apvienotie Arābu Emirāti"

        Cldr.AF ->
            "Afganistāna"

        Cldr.AG ->
            "Antigva un Barbuda"

        Cldr.AI ->
            "Angilja"

        Cldr.AL ->
            "Albānija"

        Cldr.AM ->
            "Armēnija"

        Cldr.AO ->
            "Angola"

        Cldr.AQ ->
            "Antarktika"

        Cldr.AR ->
            "Argentīna"

        Cldr.AS ->
            "ASV Samoa"

        Cldr.AT ->
            "Austrija"

        Cldr.AU ->
            "Austrālija"

        Cldr.AW ->
            "Aruba"

        Cldr.AX ->
            "Olandes salas"

        Cldr.AZ ->
            "Azerbaidžāna"

        Cldr.BA ->
            "Bosnija un Hercegovina"

        Cldr.BB ->
            "Barbadosa"

        Cldr.BD ->
            "Bangladeša"

        Cldr.BE ->
            "Beļģija"

        Cldr.BF ->
            "Burkinafaso"

        Cldr.BG ->
            "Bulgārija"

        Cldr.BH ->
            "Bahreina"

        Cldr.BI ->
            "Burundija"

        Cldr.BJ ->
            "Benina"

        Cldr.BL ->
            "Senbartelmī"

        Cldr.BM ->
            "Bermudu salas"

        Cldr.BN ->
            "Bruneja"

        Cldr.BO ->
            "Bolīvija"

        Cldr.BQ ->
            "Nīderlandes Karību salas"

        Cldr.BR ->
            "Brazīlija"

        Cldr.BS ->
            "Bahamu salas"

        Cldr.BT ->
            "Butāna"

        Cldr.BV ->
            "Buvē sala"

        Cldr.BW ->
            "Botsvāna"

        Cldr.BY ->
            "Baltkrievija"

        Cldr.BZ ->
            "Beliza"

        Cldr.CA ->
            "Kanāda"

        Cldr.CC ->
            "Kokosu (Kīlinga) salas"

        Cldr.CD ->
            "Kongo (Kinšasa)"

        Cldr.CF ->
            "Centrālāfrikas Republika"

        Cldr.CG ->
            "Kongo (Brazavila)"

        Cldr.CH ->
            "Šveice"

        Cldr.CI ->
            "Kotdivuāra"

        Cldr.CK ->
            "Kuka salas"

        Cldr.CL ->
            "Čīle"

        Cldr.CM ->
            "Kamerūna"

        Cldr.CN ->
            "Ķīna"

        Cldr.CO ->
            "Kolumbija"

        Cldr.CR ->
            "Kostarika"

        Cldr.CU ->
            "Kuba"

        Cldr.CV ->
            "Kaboverde"

        Cldr.CW ->
            "Kirasao"

        Cldr.CX ->
            "Ziemsvētku sala"

        Cldr.CY ->
            "Kipra"

        Cldr.CZ ->
            "Čehija"

        Cldr.DE ->
            "Vācija"

        Cldr.DJ ->
            "Džibutija"

        Cldr.DK ->
            "Dānija"

        Cldr.DM ->
            "Dominika"

        Cldr.DO ->
            "Dominikāna"

        Cldr.DZ ->
            "Alžīrija"

        Cldr.EC ->
            "Ekvadora"

        Cldr.EE ->
            "Igaunija"

        Cldr.EG ->
            "Ēģipte"

        Cldr.EH ->
            "Rietumsahāra"

        Cldr.ER ->
            "Eritreja"

        Cldr.ES ->
            "Spānija"

        Cldr.ET ->
            "Etiopija"

        Cldr.FI ->
            "Somija"

        Cldr.FJ ->
            "Fidži"

        Cldr.FK ->
            "Folklenda salas"

        Cldr.FM ->
            "Mikronēzija"

        Cldr.FO ->
            "Fēru salas"

        Cldr.FR ->
            "Francija"

        Cldr.GA ->
            "Gabona"

        Cldr.GB ->
            "Apvienotā Karaliste"

        Cldr.GD ->
            "Grenāda"

        Cldr.GE ->
            "Gruzija"

        Cldr.GF ->
            "Francijas Gviāna"

        Cldr.GG ->
            "Gērnsija"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gibraltārs"

        Cldr.GL ->
            "Grenlande"

        Cldr.GM ->
            "Gambija"

        Cldr.GN ->
            "Gvineja"

        Cldr.GP ->
            "Gvadelupa"

        Cldr.GQ ->
            "Ekvatoriālā Gvineja"

        Cldr.GR ->
            "Grieķija"

        Cldr.GS ->
            "Dienviddžordžija un Dienvidsendviču salas"

        Cldr.GT_ ->
            "Gvatemala"

        Cldr.GU ->
            "Guama"

        Cldr.GW ->
            "Gvineja-Bisava"

        Cldr.GY ->
            "Gajāna"

        Cldr.HK ->
            "Ķīnas īpašās pārvaldes apgabals Honkonga"

        Cldr.HM ->
            "Hērda sala un Makdonalda salas"

        Cldr.HN ->
            "Hondurasa"

        Cldr.HR ->
            "Horvātija"

        Cldr.HT ->
            "Haiti"

        Cldr.HU ->
            "Ungārija"

        Cldr.ID ->
            "Indonēzija"

        Cldr.IE ->
            "Īrija"

        Cldr.IL ->
            "Izraēla"

        Cldr.IM ->
            "Menas sala"

        Cldr.IN ->
            "Indija"

        Cldr.IO ->
            "Indijas okeāna Britu teritorija"

        Cldr.IQ ->
            "Irāka"

        Cldr.IR ->
            "Irāna"

        Cldr.IS ->
            "Islande"

        Cldr.IT ->
            "Itālija"

        Cldr.JE ->
            "Džērsija"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jordānija"

        Cldr.JP ->
            "Japāna"

        Cldr.KE ->
            "Kenija"

        Cldr.KG ->
            "Kirgizstāna"

        Cldr.KH ->
            "Kambodža"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Komoru salas"

        Cldr.KN ->
            "Sentkitsa un Nevisa"

        Cldr.KP ->
            "Ziemeļkoreja"

        Cldr.KR ->
            "Dienvidkoreja"

        Cldr.KW ->
            "Kuveita"

        Cldr.KY ->
            "Kaimanu salas"

        Cldr.KZ ->
            "Kazahstāna"

        Cldr.LA ->
            "Laosa"

        Cldr.LB ->
            "Libāna"

        Cldr.LC ->
            "Sentlūsija"

        Cldr.LI ->
            "Lihtenšteina"

        Cldr.LK ->
            "Šrilanka"

        Cldr.LR ->
            "Libērija"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Lietuva"

        Cldr.LU ->
            "Luksemburga"

        Cldr.LV ->
            "Latvija"

        Cldr.LY ->
            "Lībija"

        Cldr.MA ->
            "Maroka"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Moldova"

        Cldr.ME ->
            "Melnkalne"

        Cldr.MF ->
            "Senmartēna"

        Cldr.MG ->
            "Madagaskara"

        Cldr.MH ->
            "Māršala salas"

        Cldr.MK ->
            "Ziemeļmaķedonija"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Mjanma (Birma)"

        Cldr.MN ->
            "Mongolija"

        Cldr.MO ->
            "ĶTR īpašais administratīvais reģions Makao"

        Cldr.MP ->
            "Ziemeļu Marianas salas"

        Cldr.MQ ->
            "Martinika"

        Cldr.MR ->
            "Mauritānija"

        Cldr.MS ->
            "Montserrata"

        Cldr.MT ->
            "Malta"

        Cldr.MU ->
            "Maurīcija"

        Cldr.MV ->
            "Maldīvija"

        Cldr.MW ->
            "Malāvija"

        Cldr.MX ->
            "Meksika"

        Cldr.MY ->
            "Malaizija"

        Cldr.MZ ->
            "Mozambika"

        Cldr.NA ->
            "Namībija"

        Cldr.NC ->
            "Jaunkaledonija"

        Cldr.NE ->
            "Nigēra"

        Cldr.NF ->
            "Norfolkas sala"

        Cldr.NG ->
            "Nigērija"

        Cldr.NI ->
            "Nikaragva"

        Cldr.NL ->
            "Nīderlande"

        Cldr.NO ->
            "Norvēģija"

        Cldr.NP ->
            "Nepāla"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Jaunzēlande"

        Cldr.OM ->
            "Omāna"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Francijas Polinēzija"

        Cldr.PG ->
            "Papua-Jaungvineja"

        Cldr.PH ->
            "Filipīnas"

        Cldr.PK ->
            "Pakistāna"

        Cldr.PL ->
            "Polija"

        Cldr.PM ->
            "Senpjēra un Mikelona"

        Cldr.PN ->
            "Pitkērnas salas"

        Cldr.PR ->
            "Puertoriko"

        Cldr.PS ->
            "Palestīnas teritorijas"

        Cldr.PT ->
            "Portugāle"

        Cldr.PW ->
            "Palau"

        Cldr.PY ->
            "Paragvaja"

        Cldr.QA ->
            "Katara"

        Cldr.RE ->
            "Reinjona"

        Cldr.RO ->
            "Rumānija"

        Cldr.RS ->
            "Serbija"

        Cldr.RU ->
            "Krievija"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "Saūda Arābija"

        Cldr.SB ->
            "Zālamana salas"

        Cldr.SC ->
            "Seišelu salas"

        Cldr.SD ->
            "Sudāna"

        Cldr.SE ->
            "Zviedrija"

        Cldr.SG ->
            "Singapūra"

        Cldr.SH ->
            "Sv.Helēnas sala"

        Cldr.SI ->
            "Slovēnija"

        Cldr.SJ ->
            "Svalbāra un Jana Majena sala"

        Cldr.SK ->
            "Slovākija"

        Cldr.SL ->
            "Sjerraleone"

        Cldr.SM ->
            "Sanmarīno"

        Cldr.SN ->
            "Senegāla"

        Cldr.SO ->
            "Somālija"

        Cldr.SR ->
            "Surinama"

        Cldr.SS ->
            "Dienvidsudāna"

        Cldr.ST ->
            "Santome un Prinsipi"

        Cldr.SV ->
            "Salvadora"

        Cldr.SX ->
            "Sintmārtena"

        Cldr.SY ->
            "Sīrija"

        Cldr.SZ ->
            "Svatini"

        Cldr.TC ->
            "Tērksas un Kaikosas salas"

        Cldr.TD ->
            "Čada"

        Cldr.TF ->
            "Francijas Dienvidjūru teritorija"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Taizeme"

        Cldr.TJ ->
            "Tadžikistāna"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Austrumtimora"

        Cldr.TM ->
            "Turkmenistāna"

        Cldr.TN ->
            "Tunisija"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Turcija"

        Cldr.TT ->
            "Trinidāda un Tobāgo"

        Cldr.TV ->
            "Tuvalu"

        Cldr.TW ->
            "Taivāna"

        Cldr.TZ ->
            "Tanzānija"

        Cldr.UA ->
            "Ukraina"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "ASV Mazās Aizjūras salas"

        Cldr.US ->
            "Amerikas Savienotās Valstis"

        Cldr.UY ->
            "Urugvaja"

        Cldr.UZ ->
            "Uzbekistāna"

        Cldr.VA ->
            "Vatikāns"

        Cldr.VC ->
            "Sentvinsenta un Grenadīnas"

        Cldr.VE ->
            "Venecuēla"

        Cldr.VG ->
            "Britu Virdžīnas"

        Cldr.VI ->
            "ASV Virdžīnas"

        Cldr.VN ->
            "Vjetnama"

        Cldr.VU ->
            "Vanuatu"

        Cldr.WF ->
            "Volisa un Futunas salas"

        Cldr.WS ->
            "Samoa"

        Cldr.XK ->
            "Kosova"

        Cldr.YE ->
            "Jemena"

        Cldr.YT ->
            "Majota"

        Cldr.ZA ->
            "Dienvidāfrikas Republika"

        Cldr.ZM ->
            "Zambija"

        Cldr.ZW ->
            "Zimbabve"