module Cldr.Irish exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Andóra"

        Cldr.AE ->
            "Aontas na nÉimíríochtaí Arabacha"

        Cldr.AF ->
            "an Afganastáin"

        Cldr.AG ->
            "Antigua agus Barbúda"

        Cldr.AI ->
            "Angaíle"

        Cldr.AL ->
            "an Albáin"

        Cldr.AM ->
            "an Airméin"

        Cldr.AO ->
            "Angóla"

        Cldr.AQ ->
            "Antartaice"

        Cldr.AR ->
            "an Airgintín"

        Cldr.AS ->
            "Samó Mheiriceá"

        Cldr.AT ->
            "an Ostair"

        Cldr.AU ->
            "an Astráil"

        Cldr.AW ->
            "Arúba"

        Cldr.AX ->
            "Oileáin Åland"

        Cldr.AZ ->
            "an Asarbaiseáin"

        Cldr.BA ->
            "an Bhoisnia agus an Heirseagaivéin"

        Cldr.BB ->
            "Barbadós"

        Cldr.BD ->
            "an Bhanglaidéis"

        Cldr.BE ->
            "an Bheilg"

        Cldr.BF ->
            "Buircíne Fasó"

        Cldr.BG ->
            "an Bhulgáir"

        Cldr.BH ->
            "Bairéin"

        Cldr.BI ->
            "an Bhurúin"

        Cldr.BJ ->
            "Beinin"

        Cldr.BL ->
            "Saint Barthélemy"

        Cldr.BM ->
            "Beirmiúda"

        Cldr.BN ->
            "Brúiné"

        Cldr.BO ->
            "an Bholaiv"

        Cldr.BQ ->
            "an Ísiltír Chairibeach"

        Cldr.BR ->
            "an Bhrasaíl"

        Cldr.BS ->
            "na Bahámaí"

        Cldr.BT ->
            "an Bhútáin"

        Cldr.BV ->
            "Oileán Bouvet"

        Cldr.BW ->
            "an Bhotsuáin"

        Cldr.BY ->
            "an Bhealarúis"

        Cldr.BZ ->
            "an Bheilís"

        Cldr.CA ->
            "Ceanada"

        Cldr.CC ->
            "Oileáin Cocos (Keeling)"

        Cldr.CD ->
            "Poblacht Dhaonlathach an Chongó"

        Cldr.CF ->
            "Poblacht na hAfraice Láir"

        Cldr.CG ->
            "Congó-Brazzaville"

        Cldr.CH ->
            "an Eilvéis"

        Cldr.CI ->
            "an Cósta Eabhair"

        Cldr.CK ->
            "Oileáin Cook"

        Cldr.CL ->
            "an tSile"

        Cldr.CM ->
            "Camarún"

        Cldr.CN ->
            "an tSín"

        Cldr.CO ->
            "an Cholóim"

        Cldr.CR ->
            "Cósta Ríce"

        Cldr.CU ->
            "Cúba"

        Cldr.CV ->
            "Rinn Verde"

        Cldr.CW ->
            "Cúrasó"

        Cldr.CX ->
            "Oileán na Nollag"

        Cldr.CY ->
            "an Chipir"

        Cldr.CZ ->
            "an tSeicia"

        Cldr.DE ->
            "an Ghearmáin"

        Cldr.DJ ->
            "Djibouti"

        Cldr.DK ->
            "an Danmhairg"

        Cldr.DM ->
            "Doiminice"

        Cldr.DO ->
            "an Phoblacht Dhoiminiceach"

        Cldr.DZ ->
            "an Ailgéir"

        Cldr.EC ->
            "Eacuadór"

        Cldr.EE ->
            "an Eastóin"

        Cldr.EG ->
            "an Éigipt"

        Cldr.EH ->
            "an Sahára Thiar"

        Cldr.ER ->
            "an Eiritré"

        Cldr.ES ->
            "an Spáinn"

        Cldr.ET ->
            "an Aetóip"

        Cldr.FI ->
            "an Fhionlainn"

        Cldr.FJ ->
            "Fidsí"

        Cldr.FK ->
            "Oileáin Fháclainne"

        Cldr.FM ->
            "an Mhicrinéis"

        Cldr.FO ->
            "Oileáin Fharó"

        Cldr.FR ->
            "an Fhrainc"

        Cldr.GA ->
            "an Ghabúin"

        Cldr.GB ->
            "an Ríocht Aontaithe"

        Cldr.GD ->
            "Greanáda"

        Cldr.GE ->
            "an tSeoirsia"

        Cldr.GF ->
            "Guáin na Fraince"

        Cldr.GG ->
            "Geansaí"

        Cldr.GH ->
            "Gána"

        Cldr.GI ->
            "Giobráltar"

        Cldr.GL ->
            "an Ghraonlainn"

        Cldr.GM ->
            "an Ghaimbia"

        Cldr.GN ->
            "an Ghuine"

        Cldr.GP ->
            "Guadalúip"

        Cldr.GQ ->
            "an Ghuine Mheánchiorclach"

        Cldr.GR ->
            "an Ghréig"

        Cldr.GS ->
            "an tSeoirsia Theas agus Oileáin Sandwich Theas"

        Cldr.GT_ ->
            "Guatamala"

        Cldr.GU ->
            "Guam"

        Cldr.GW ->
            "Guine Bissau"

        Cldr.GY ->
            "an Ghuáin"

        Cldr.HK ->
            "Sainréigiún Riaracháin Hong Cong, Daonphoblacht na Síne"

        Cldr.HM ->
            "Oileán Heard agus Oileáin McDonald"

        Cldr.HN ->
            "Hondúras"

        Cldr.HR ->
            "an Chróit"

        Cldr.HT ->
            "Háítí"

        Cldr.HU ->
            "an Ungáir"

        Cldr.ID ->
            "an Indinéis"

        Cldr.IE ->
            "Éire"

        Cldr.IL ->
            "Iosrael"

        Cldr.IM ->
            "Oileán Mhanann"

        Cldr.IN ->
            "an India"

        Cldr.IO ->
            "Críoch Aigéan Indiach na Breataine"

        Cldr.IQ ->
            "an Iaráic"

        Cldr.IR ->
            "an Iaráin"

        Cldr.IS ->
            "an Íoslainn"

        Cldr.IT ->
            "an Iodáil"

        Cldr.JE ->
            "Geirsí"

        Cldr.JM ->
            "Iamáice"

        Cldr.JO ->
            "an Iordáin"

        Cldr.JP ->
            "an tSeapáin"

        Cldr.KE ->
            "an Chéinia"

        Cldr.KG ->
            "an Chirgeastáin"

        Cldr.KH ->
            "an Chambóid"

        Cldr.KI ->
            "Ciribeas"

        Cldr.KM ->
            "Oileáin Chomóra"

        Cldr.KN ->
            "San Críostóir-Nimheas"

        Cldr.KP ->
            "an Chóiré Thuaidh"

        Cldr.KR ->
            "an Chóiré Theas"

        Cldr.KW ->
            "Cuáit"

        Cldr.KY ->
            "Oileáin Cayman"

        Cldr.KZ ->
            "an Chasacstáin"

        Cldr.LA ->
            "Laos"

        Cldr.LB ->
            "an Liobáin"

        Cldr.LC ->
            "Saint Lucia"

        Cldr.LI ->
            "Lichtinstéin"

        Cldr.LK ->
            "Srí Lanca"

        Cldr.LR ->
            "an Libéir"

        Cldr.LS ->
            "Leosóta"

        Cldr.LT_ ->
            "an Liotuáin"

        Cldr.LU ->
            "Lucsamburg"

        Cldr.LV ->
            "an Laitvia"

        Cldr.LY ->
            "an Libia"

        Cldr.MA ->
            "Maracó"

        Cldr.MC ->
            "Monacó"

        Cldr.MD ->
            "an Mholdóiv"

        Cldr.ME ->
            "Montainéagró"

        Cldr.MF ->
            "Saint-Martin"

        Cldr.MG ->
            "Madagascar"

        Cldr.MH ->
            "Oileáin Marshall"

        Cldr.MK ->
            "an Mhacadóin Thuaidh"

        Cldr.ML ->
            "Mailí"

        Cldr.MM ->
            "Maenmar (Burma)"

        Cldr.MN ->
            "an Mhongóil"

        Cldr.MO ->
            "Sainréigiún Riaracháin Macao, Daonphoblacht na Síne"

        Cldr.MP ->
            "na hOileáin Mháirianacha Thuaidh"

        Cldr.MQ ->
            "Martinique"

        Cldr.MR ->
            "an Mháratáin"

        Cldr.MS ->
            "Montsarat"

        Cldr.MT ->
            "Málta"

        Cldr.MU ->
            "Oileán Mhuirís"

        Cldr.MV ->
            "Oileáin Mhaildíve"

        Cldr.MW ->
            "an Mhaláiv"

        Cldr.MX ->
            "Meicsiceo"

        Cldr.MY ->
            "an Mhalaeisia"

        Cldr.MZ ->
            "Mósaimbíc"

        Cldr.NA ->
            "an Namaib"

        Cldr.NC ->
            "an Nua-Chaladóin"

        Cldr.NE ->
            "an Nígir"

        Cldr.NF ->
            "Oileán Norfolk"

        Cldr.NG ->
            "an Nigéir"

        Cldr.NI ->
            "Nicearagua"

        Cldr.NL ->
            "an Ísiltír"

        Cldr.NO ->
            "an Iorua"

        Cldr.NP ->
            "Neipeal"

        Cldr.NR ->
            "Nárú"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "an Nua-Shéalainn"

        Cldr.OM ->
            "Óman"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peiriú"

        Cldr.PF ->
            "Polainéis na Fraince"

        Cldr.PG ->
            "Nua-Ghuine Phapua"

        Cldr.PH ->
            "na hOileáin Fhilipíneacha"

        Cldr.PK ->
            "an Phacastáin"

        Cldr.PL ->
            "an Pholainn"

        Cldr.PM ->
            "San Pierre agus Miquelon"

        Cldr.PN ->
            "Oileáin Pitcairn"

        Cldr.PR ->
            "Pórtó Ríce"

        Cldr.PS ->
            "na Críocha Palaistíneacha"

        Cldr.PT ->
            "an Phortaingéil"

        Cldr.PW ->
            "Oileáin Palau"

        Cldr.PY ->
            "Paragua"

        Cldr.QA ->
            "Catar"

        Cldr.RE ->
            "La Réunion"

        Cldr.RO ->
            "an Rómáin"

        Cldr.RS ->
            "an tSeirbia"

        Cldr.RU ->
            "an Rúis"

        Cldr.RW ->
            "Ruanda"

        Cldr.SA ->
            "an Araib Shádach"

        Cldr.SB ->
            "Oileáin Sholaimh"

        Cldr.SC ->
            "na Séiséil"

        Cldr.SD ->
            "an tSúdáin"

        Cldr.SE ->
            "an tSualainn"

        Cldr.SG ->
            "Singeapór"

        Cldr.SH ->
            "San Héilin"

        Cldr.SI ->
            "an tSlóivéin"

        Cldr.SJ ->
            "Svalbard agus Jan Mayen"

        Cldr.SK ->
            "an tSlóvaic"

        Cldr.SL ->
            "Siarra Leon"

        Cldr.SM ->
            "San Mairíne"

        Cldr.SN ->
            "an tSeineagáil"

        Cldr.SO ->
            "an tSomáil"

        Cldr.SR ->
            "Suranam"

        Cldr.SS ->
            "an tSúdáin Theas"

        Cldr.ST ->
            "São Tomé agus Príncipe"

        Cldr.SV ->
            "an tSalvadóir"

        Cldr.SX ->
            "Sint Maarten"

        Cldr.SY ->
            "an tSiria"

        Cldr.SZ ->
            "eSuaitíní"

        Cldr.TC ->
            "Oileáin na dTurcach agus Caicos"

        Cldr.TD ->
            "Sead"

        Cldr.TF ->
            "Críocha Francacha Dheisceart an Domhain"

        Cldr.TG ->
            "Tóga"

        Cldr.TH ->
            "an Téalainn"

        Cldr.TJ ->
            "an Táidsíceastáin"

        Cldr.TK ->
            "Tócalá"

        Cldr.TL ->
            "Tíomór Thoir"

        Cldr.TM ->
            "an Tuircméanastáin"

        Cldr.TN ->
            "an Túinéis"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "an Tuirc"

        Cldr.TT ->
            "Oileán na Tríonóide agus Tobága"

        Cldr.TV ->
            "Túvalú"

        Cldr.TW ->
            "an Téaváin"

        Cldr.TZ ->
            "an Tansáin"

        Cldr.UA ->
            "an Úcráin"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Oileáin Imeallacha S.A.M."

        Cldr.US ->
            "Stáit Aontaithe Mheiriceá"

        Cldr.UY ->
            "Uragua"

        Cldr.UZ ->
            "an Úisbéiceastáin"

        Cldr.VA ->
            "Cathair na Vatacáine"

        Cldr.VC ->
            "San Uinseann agus na Greanáidíní"

        Cldr.VE ->
            "Veiniséala"

        Cldr.VG ->
            "Oileáin Bhriotanacha na Maighdean"

        Cldr.VI ->
            "Oileáin Mheiriceánacha na Maighdean"

        Cldr.VN ->
            "Vítneam"

        Cldr.VU ->
            "Vanuatú"

        Cldr.WF ->
            "Vailís agus Futúna"

        Cldr.WS ->
            "Samó"

        Cldr.XK ->
            "an Chosaiv"

        Cldr.YE ->
            "Éimin"

        Cldr.YT ->
            "Mayotte"

        Cldr.ZA ->
            "an Afraic Theas"

        Cldr.ZM ->
            "an tSaimbia"

        Cldr.ZW ->
            "an tSiombáib"