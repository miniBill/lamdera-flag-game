module Cldr.Armenian exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Անդորրա"

        Cldr.AE ->
            "Արաբական Միացյալ Էմիրություններ"

        Cldr.AF ->
            "Աֆղանստան"

        Cldr.AG ->
            "Անտիգուա և Բարբուդա"

        Cldr.AI ->
            "Անգուիլա"

        Cldr.AL ->
            "Ալբանիա"

        Cldr.AM ->
            "Հայաստան"

        Cldr.AO ->
            "Անգոլա"

        Cldr.AQ ->
            "Անտարկտիդա"

        Cldr.AR ->
            "Արգենտինա"

        Cldr.AS ->
            "Ամերիկյան Սամոա"

        Cldr.AT ->
            "Ավստրիա"

        Cldr.AU ->
            "Ավստրալիա"

        Cldr.AW ->
            "Արուբա"

        Cldr.AX ->
            "Ալանդյան կղզիներ"

        Cldr.AZ ->
            "Ադրբեջան"

        Cldr.BA ->
            "Բոսնիա և Հերցեգովինա"

        Cldr.BB ->
            "Բարբադոս"

        Cldr.BD ->
            "Բանգլադեշ"

        Cldr.BE ->
            "Բելգիա"

        Cldr.BF ->
            "Բուրկինա Ֆասո"

        Cldr.BG ->
            "Բուլղարիա"

        Cldr.BH ->
            "Բահրեյն"

        Cldr.BI ->
            "Բուրունդի"

        Cldr.BJ ->
            "Բենին"

        Cldr.BL ->
            "Սուրբ Բարդուղիմեոս"

        Cldr.BM ->
            "Բերմուդներ"

        Cldr.BN ->
            "Բրունեյ"

        Cldr.BO ->
            "Բոլիվիա"

        Cldr.BQ ->
            "Կարիբյան Նիդեռլանդներ"

        Cldr.BR ->
            "Բրազիլիա"

        Cldr.BS ->
            "Բահամյան կղզիներ"

        Cldr.BT ->
            "Բութան"

        Cldr.BV ->
            "Բուվե կղզի"

        Cldr.BW ->
            "Բոթսվանա"

        Cldr.BY ->
            "Բելառուս"

        Cldr.BZ ->
            "Բելիզ"

        Cldr.CA ->
            "Կանադա"

        Cldr.CC ->
            "Կոկոսյան (Քիլինգ) կղզիներ"

        Cldr.CD ->
            "Կոնգո - Կինշասա"

        Cldr.CF ->
            "Կենտրոնական Աֆրիկյան Հանրապետություն"

        Cldr.CG ->
            "Կոնգո - Բրազավիլ"

        Cldr.CH ->
            "Շվեյցարիա"

        Cldr.CI ->
            "Կոտ դ՚Իվուար"

        Cldr.CK ->
            "Կուկի կղզիներ"

        Cldr.CL ->
            "Չիլի"

        Cldr.CM ->
            "Կամերուն"

        Cldr.CN ->
            "Չինաստան"

        Cldr.CO ->
            "Կոլումբիա"

        Cldr.CR ->
            "Կոստա Ռիկա"

        Cldr.CU ->
            "Կուբա"

        Cldr.CV ->
            "Կաբո Վերդե"

        Cldr.CW ->
            "Կյուրասաո"

        Cldr.CX ->
            "Սուրբ Ծննդյան կղզի"

        Cldr.CY ->
            "Կիպրոս"

        Cldr.CZ ->
            "Չեխիա"

        Cldr.DE ->
            "Գերմանիա"

        Cldr.DJ ->
            "Ջիբութի"

        Cldr.DK ->
            "Դանիա"

        Cldr.DM ->
            "Դոմինիկա"

        Cldr.DO ->
            "Դոմինիկյան Հանրապետություն"

        Cldr.DZ ->
            "Ալժիր"

        Cldr.EC ->
            "Էկվադոր"

        Cldr.EE ->
            "Էստոնիա"

        Cldr.EG ->
            "Եգիպտոս"

        Cldr.EH ->
            "Արևմտյան Սահարա"

        Cldr.ER ->
            "Էրիթրեա"

        Cldr.ES ->
            "Իսպանիա"

        Cldr.ET ->
            "Եթովպիա"

        Cldr.FI ->
            "Ֆինլանդիա"

        Cldr.FJ ->
            "Ֆիջի"

        Cldr.FK ->
            "Ֆոլքլենդյան կղզիներ"

        Cldr.FM ->
            "Միկրոնեզիա"

        Cldr.FO ->
            "Ֆարերյան կղզիներ"

        Cldr.FR ->
            "Ֆրանսիա"

        Cldr.GA ->
            "Գաբոն"

        Cldr.GB ->
            "Միացյալ Թագավորություն"

        Cldr.GD ->
            "Գրենադա"

        Cldr.GE ->
            "Վրաստան"

        Cldr.GF ->
            "Ֆրանսիական Գվիանա"

        Cldr.GG ->
            "Գերնսի"

        Cldr.GH ->
            "Գանա"

        Cldr.GI ->
            "Ջիբրալթար"

        Cldr.GL ->
            "Գրենլանդիա"

        Cldr.GM ->
            "Գամբիա"

        Cldr.GN ->
            "Գվինեա"

        Cldr.GP ->
            "Գվադելուպա"

        Cldr.GQ ->
            "Հասարակածային Գվինեա"

        Cldr.GR ->
            "Հունաստան"

        Cldr.GS ->
            "Հարավային Ջորջիա և Հարավային Սենդվիչյան կղզիներ"

        Cldr.GT_ ->
            "Գվատեմալա"

        Cldr.GU ->
            "Գուամ"

        Cldr.GW ->
            "Գվինեա-Բիսաու"

        Cldr.GY ->
            "Գայանա"

        Cldr.HK ->
            "Հոնկոնգի ՀՎՇ"

        Cldr.HM ->
            "Հերդ կղզի և ՄակԴոնալդի կղզիներ"

        Cldr.HN ->
            "Հոնդուրաս"

        Cldr.HR ->
            "Խորվաթիա"

        Cldr.HT ->
            "Հայիթի"

        Cldr.HU ->
            "Հունգարիա"

        Cldr.ID ->
            "Ինդոնեզիա"

        Cldr.IE ->
            "Իռլանդիա"

        Cldr.IL ->
            "Իսրայել"

        Cldr.IM ->
            "Մեն կղզի"

        Cldr.IN ->
            "Հնդկաստան"

        Cldr.IO ->
            "Բրիտանական Տարածք Հնդկական Օվկիանոսում"

        Cldr.IQ ->
            "Իրաք"

        Cldr.IR ->
            "Իրան"

        Cldr.IS ->
            "Իսլանդիա"

        Cldr.IT ->
            "Իտալիա"

        Cldr.JE ->
            "Ջերսի"

        Cldr.JM ->
            "Ճամայկա"

        Cldr.JO ->
            "Հորդանան"

        Cldr.JP ->
            "Ճապոնիա"

        Cldr.KE ->
            "Քենիա"

        Cldr.KG ->
            "Ղրղզստան"

        Cldr.KH ->
            "Կամբոջա"

        Cldr.KI ->
            "Կիրիբատի"

        Cldr.KM ->
            "Կոմորյան կղզիներ"

        Cldr.KN ->
            "Սենթ Քիտս և Նևիս"

        Cldr.KP ->
            "Հյուսիսային Կորեա"

        Cldr.KR ->
            "Հարավային Կորեա"

        Cldr.KW ->
            "Քուվեյթ"

        Cldr.KY ->
            "Կայմանյան կղզիներ"

        Cldr.KZ ->
            "Ղազախստան"

        Cldr.LA ->
            "Լաոս"

        Cldr.LB ->
            "Լիբանան"

        Cldr.LC ->
            "Սենթ Լյուսիա"

        Cldr.LI ->
            "Լիխտենշտեյն"

        Cldr.LK ->
            "Շրի Լանկա"

        Cldr.LR ->
            "Լիբերիա"

        Cldr.LS ->
            "Լեսոտո"

        Cldr.LT_ ->
            "Լիտվա"

        Cldr.LU ->
            "Լյուքսեմբուրգ"

        Cldr.LV ->
            "Լատվիա"

        Cldr.LY ->
            "Լիբիա"

        Cldr.MA ->
            "Մարոկկո"

        Cldr.MC ->
            "Մոնակո"

        Cldr.MD ->
            "Մոլդովա"

        Cldr.ME ->
            "Չեռնոգորիա"

        Cldr.MF ->
            "Սեն Մարտեն"

        Cldr.MG ->
            "Մադագասկար"

        Cldr.MH ->
            "Մարշալյան կղզիներ"

        Cldr.MK ->
            "Հյուսիսային Մակեդոնիա"

        Cldr.ML ->
            "Մալի"

        Cldr.MM ->
            "Մյանմա (Բիրմա)"

        Cldr.MN ->
            "Մոնղոլիա"

        Cldr.MO ->
            "Չինաստանի Մակաո ՀՎՇ"

        Cldr.MP ->
            "Հյուսիսային Մարիանյան կղզիներ"

        Cldr.MQ ->
            "Մարտինիկա"

        Cldr.MR ->
            "Մավրիտանիա"

        Cldr.MS ->
            "Մոնսեռատ"

        Cldr.MT ->
            "Մալթա"

        Cldr.MU ->
            "Մավրիկիոս"

        Cldr.MV ->
            "Մալդիվներ"

        Cldr.MW ->
            "Մալավի"

        Cldr.MX ->
            "Մեքսիկա"

        Cldr.MY ->
            "Մալայզիա"

        Cldr.MZ ->
            "Մոզամբիկ"

        Cldr.NA ->
            "Նամիբիա"

        Cldr.NC ->
            "Նոր Կալեդոնիա"

        Cldr.NE ->
            "Նիգեր"

        Cldr.NF ->
            "Նորֆոլկ կղզի"

        Cldr.NG ->
            "Նիգերիա"

        Cldr.NI ->
            "Նիկարագուա"

        Cldr.NL ->
            "Նիդեռլանդներ"

        Cldr.NO ->
            "Նորվեգիա"

        Cldr.NP ->
            "Նեպալ"

        Cldr.NR ->
            "Նաուրու"

        Cldr.NU ->
            "Նիուե"

        Cldr.NZ ->
            "Նոր Զելանդիա"

        Cldr.OM ->
            "Օման"

        Cldr.PA ->
            "Պանամա"

        Cldr.PE ->
            "Պերու"

        Cldr.PF ->
            "Ֆրանսիական Պոլինեզիա"

        Cldr.PG ->
            "Պապուա Նոր Գվինեա"

        Cldr.PH ->
            "Ֆիլիպիններ"

        Cldr.PK ->
            "Պակիստան"

        Cldr.PL ->
            "Լեհաստան"

        Cldr.PM ->
            "Սեն Պիեռ և Միքելոն"

        Cldr.PN ->
            "Պիտկեռն կղզիներ"

        Cldr.PR ->
            "Պուերտո Ռիկո"

        Cldr.PS ->
            "Պաղեստինյան տարածքներ"

        Cldr.PT ->
            "Պորտուգալիա"

        Cldr.PW ->
            "Պալաու"

        Cldr.PY ->
            "Պարագվայ"

        Cldr.QA ->
            "Կատար"

        Cldr.RE ->
            "Ռեյունիոն"

        Cldr.RO ->
            "Ռումինիա"

        Cldr.RS ->
            "Սերբիա"

        Cldr.RU ->
            "Ռուսաստան"

        Cldr.RW ->
            "Ռուանդա"

        Cldr.SA ->
            "Սաուդյան Արաբիա"

        Cldr.SB ->
            "Սողոմոնյան կղզիներ"

        Cldr.SC ->
            "Սեյշելներ"

        Cldr.SD ->
            "Սուդան"

        Cldr.SE ->
            "Շվեդիա"

        Cldr.SG ->
            "Սինգապուր"

        Cldr.SH ->
            "Սուրբ Հեղինեի կղզի"

        Cldr.SI ->
            "Սլովենիա"

        Cldr.SJ ->
            "Սվալբարդ և Յան Մայեն"

        Cldr.SK ->
            "Սլովակիա"

        Cldr.SL ->
            "Սիեռա Լեոնե"

        Cldr.SM ->
            "Սան Մարինո"

        Cldr.SN ->
            "Սենեգալ"

        Cldr.SO ->
            "Սոմալի"

        Cldr.SR ->
            "Սուրինամ"

        Cldr.SS ->
            "Հարավային Սուդան"

        Cldr.ST ->
            "Սան Տոմե և Փրինսիպի"

        Cldr.SV ->
            "Սալվադոր"

        Cldr.SX ->
            "Սինտ Մարտեն"

        Cldr.SY ->
            "Սիրիա"

        Cldr.SZ ->
            "Էսվատինի"

        Cldr.TC ->
            "Թըրքս և Կայկոս կղզիներ"

        Cldr.TD ->
            "Չադ"

        Cldr.TF ->
            "Ֆրանսիական Հարավային Տարածքներ"

        Cldr.TG ->
            "Տոգո"

        Cldr.TH ->
            "Թայլանդ"

        Cldr.TJ ->
            "Տաջիկստան"

        Cldr.TK ->
            "Տոկելաու"

        Cldr.TL ->
            "Թիմոր Լեշտի"

        Cldr.TM ->
            "Թուրքմենստան"

        Cldr.TN ->
            "Թունիս"

        Cldr.TO ->
            "Տոնգա"

        Cldr.TR ->
            "Թուրքիա"

        Cldr.TT ->
            "Տրինիդադ և Տոբագո"

        Cldr.TV ->
            "Տուվալու"

        Cldr.TW ->
            "Թայվան"

        Cldr.TZ ->
            "Տանզանիա"

        Cldr.UA ->
            "Ուկրաինա"

        Cldr.UG ->
            "Ուգանդա"

        Cldr.UM ->
            "Արտաքին կղզիներ (ԱՄՆ)"

        Cldr.US ->
            "Միացյալ Նահանգներ"

        Cldr.UY ->
            "Ուրուգվայ"

        Cldr.UZ ->
            "Ուզբեկստան"

        Cldr.VA ->
            "Վատիկան"

        Cldr.VC ->
            "Սենթ Վինսենթ և Գրենադիններ"

        Cldr.VE ->
            "Վենեսուելա"

        Cldr.VG ->
            "Բրիտանական Վիրջինյան կղզիներ"

        Cldr.VI ->
            "ԱՄՆ Վիրջինյան կղզիներ"

        Cldr.VN ->
            "Վիետնամ"

        Cldr.VU ->
            "Վանուատու"

        Cldr.WF ->
            "Ուոլիս և Ֆուտունա"

        Cldr.WS ->
            "Սամոա"

        Cldr.XK ->
            "Կոսովո"

        Cldr.YE ->
            "Եմեն"

        Cldr.YT ->
            "Մայոտ"

        Cldr.ZA ->
            "Հարավաֆրիկյան Հանրապետություն"

        Cldr.ZM ->
            "Զամբիա"

        Cldr.ZW ->
            "Զիմբաբվե"