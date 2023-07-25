module AspectRatios exposing (getAspectRatio)

{-| 
@docs getAspectRatio
-}


import Cldr
import Types


getAspectRatio : Types.Country -> ( Int, Int )
getAspectRatio country =
    case country of
        Types.Iso3166 cldrCountryCode ->
            case cldrCountryCode of
                Cldr.AD ->
                    ( 10, 7 )

                Cldr.AE ->
                    ( 2, 1 )

                Cldr.AF ->
                    ( 2, 1 )

                Cldr.AG ->
                    ( 3, 2 )

                Cldr.AI ->
                    ( 2, 1 )

                Cldr.AL ->
                    ( 7, 5 )

                Cldr.AM ->
                    ( 2, 1 )

                Cldr.AO ->
                    ( 3, 2 )

                Cldr.AQ ->
                    ( 3, 2 )

                Cldr.AR ->
                    ( 8, 5 )

                Cldr.AS ->
                    ( 2, 1 )

                Cldr.AT ->
                    ( 3, 2 )

                Cldr.AU ->
                    ( 2, 1 )

                Cldr.AW ->
                    ( 3, 2 )

                Cldr.AX ->
                    ( 26, 17 )

                Cldr.AZ ->
                    ( 2, 1 )

                Cldr.BA ->
                    ( 2, 1 )

                Cldr.BB ->
                    ( 3, 2 )

                Cldr.BD ->
                    ( 5, 3 )

                Cldr.BE ->
                    ( 15, 13 )

                Cldr.BF ->
                    ( 3, 2 )

                Cldr.BG ->
                    ( 5, 3 )

                Cldr.BH ->
                    ( 5, 3 )

                Cldr.BI ->
                    ( 5, 3 )

                Cldr.BJ ->
                    ( 3, 2 )

                Cldr.BL ->
                    ( 3, 2 )

                Cldr.BM ->
                    ( 2, 1 )

                Cldr.BN ->
                    ( 2, 1 )

                Cldr.BO ->
                    ( 22, 15 )

                Cldr.BQ ->
                    ( 3, 2 )

                Cldr.BR ->
                    ( 10, 7 )

                Cldr.BS ->
                    ( 2, 1 )

                Cldr.BT ->
                    ( 3, 2 )

                Cldr.BV ->
                    ( 11, 8 )

                Cldr.BW ->
                    ( 3, 2 )

                Cldr.BY ->
                    ( 2, 1 )

                Cldr.BZ ->
                    ( 5, 3 )

                Cldr.CA ->
                    ( 2, 1 )

                Cldr.CC ->
                    ( 2, 1 )

                Cldr.CD ->
                    ( 4, 3 )

                Cldr.CF ->
                    ( 3, 2 )

                Cldr.CG ->
                    ( 3, 2 )

                Cldr.CH ->
                    ( 1, 1 )

                Cldr.CI ->
                    ( 3, 2 )

                Cldr.CK ->
                    ( 2, 1 )

                Cldr.CL ->
                    ( 3, 2 )

                Cldr.CM ->
                    ( 3, 2 )

                Cldr.CN ->
                    ( 3, 2 )

                Cldr.CO ->
                    ( 3, 2 )

                Cldr.CR ->
                    ( 5, 3 )

                Cldr.CU ->
                    ( 2, 1 )

                Cldr.CV ->
                    ( 17, 10 )

                Cldr.CW ->
                    ( 3, 2 )

                Cldr.CX ->
                    ( 2, 1 )

                Cldr.CY ->
                    ( 3, 2 )

                Cldr.CZ ->
                    ( 3, 2 )

                Cldr.DE ->
                    ( 5, 3 )

                Cldr.DJ ->
                    ( 3, 2 )

                Cldr.DK ->
                    ( 37, 28 )

                Cldr.DM ->
                    ( 2, 1 )

                Cldr.DO ->
                    ( 3, 2 )

                Cldr.DZ ->
                    ( 3, 2 )

                Cldr.EC ->
                    ( 3, 2 )

                Cldr.EE ->
                    ( 11, 7 )

                Cldr.EG ->
                    ( 3, 2 )

                Cldr.EH ->
                    ( 2, 1 )

                Cldr.ER ->
                    ( 2, 1 )

                Cldr.ES ->
                    ( 3, 2 )

                Cldr.ET ->
                    ( 2, 1 )

                Cldr.FI ->
                    ( 18, 11 )

                Cldr.FJ ->
                    ( 2, 1 )

                Cldr.FK ->
                    ( 2, 1 )

                Cldr.FM ->
                    ( 19, 10 )

                Cldr.FO ->
                    ( 11, 8 )

                Cldr.FR ->
                    ( 3, 2 )

                Cldr.GA ->
                    ( 4, 3 )

                Cldr.GB ->
                    ( 2, 1 )

                Cldr.GD ->
                    ( 5, 3 )

                Cldr.GE ->
                    ( 3, 2 )

                Cldr.GF ->
                    ( 3, 2 )

                Cldr.GG ->
                    ( 3, 2 )

                Cldr.GH ->
                    ( 3, 2 )

                Cldr.GI ->
                    ( 2, 1 )

                Cldr.GL ->
                    ( 3, 2 )

                Cldr.GM ->
                    ( 3, 2 )

                Cldr.GN ->
                    ( 3, 2 )

                Cldr.GP ->
                    ( 3, 2 )

                Cldr.GQ ->
                    ( 3, 2 )

                Cldr.GR ->
                    ( 3, 2 )

                Cldr.GS ->
                    ( 2, 1 )

                Cldr.GT_ ->
                    ( 8, 5 )

                Cldr.GU ->
                    ( 41, 22 )

                Cldr.GW ->
                    ( 2, 1 )

                Cldr.GY ->
                    ( 5, 3 )

                Cldr.HK ->
                    ( 3, 2 )

                Cldr.HM ->
                    ( 2, 1 )

                Cldr.HN ->
                    ( 2, 1 )

                Cldr.HR ->
                    ( 2, 1 )

                Cldr.HT ->
                    ( 5, 3 )

                Cldr.HU ->
                    ( 2, 1 )

                Cldr.ID ->
                    ( 3, 2 )

                Cldr.IE ->
                    ( 2, 1 )

                Cldr.IL ->
                    ( 11, 8 )

                Cldr.IM ->
                    ( 2, 1 )

                Cldr.IN ->
                    ( 3, 2 )

                Cldr.IO ->
                    ( 2, 1 )

                Cldr.IQ ->
                    ( 3, 2 )

                Cldr.IR ->
                    ( 7, 4 )

                Cldr.IS ->
                    ( 25, 18 )

                Cldr.IT ->
                    ( 3, 2 )

                Cldr.JE ->
                    ( 5, 3 )

                Cldr.JM ->
                    ( 2, 1 )

                Cldr.JO ->
                    ( 2, 1 )

                Cldr.JP ->
                    ( 3, 2 )

                Cldr.KE ->
                    ( 3, 2 )

                Cldr.KG ->
                    ( 5, 3 )

                Cldr.KH ->
                    ( 25, 16 )

                Cldr.KI ->
                    ( 2, 1 )

                Cldr.KM ->
                    ( 5, 3 )

                Cldr.KN ->
                    ( 3, 2 )

                Cldr.KP ->
                    ( 2, 1 )

                Cldr.KR ->
                    ( 3, 2 )

                Cldr.KW ->
                    ( 2, 1 )

                Cldr.KY ->
                    ( 2, 1 )

                Cldr.KZ ->
                    ( 2, 1 )

                Cldr.LA ->
                    ( 3, 2 )

                Cldr.LB ->
                    ( 3, 2 )

                Cldr.LC ->
                    ( 2, 1 )

                Cldr.LI ->
                    ( 5, 3 )

                Cldr.LK ->
                    ( 2, 1 )

                Cldr.LR ->
                    ( 19, 10 )

                Cldr.LS ->
                    ( 3, 2 )

                Cldr.LT_ ->
                    ( 5, 3 )

                Cldr.LU ->
                    ( 5, 3 )

                Cldr.LV ->
                    ( 2, 1 )

                Cldr.LY ->
                    ( 2, 1 )

                Cldr.MA ->
                    ( 3, 2 )

                Cldr.MC ->
                    ( 5, 4 )

                Cldr.MD ->
                    ( 2, 1 )

                Cldr.ME ->
                    ( 2, 1 )

                Cldr.MF ->
                    ( 3, 2 )

                Cldr.MG ->
                    ( 3, 2 )

                Cldr.MH ->
                    ( 19, 10 )

                Cldr.MK ->
                    ( 2, 1 )

                Cldr.ML ->
                    ( 3, 2 )

                Cldr.MM ->
                    ( 3, 2 )

                Cldr.MN ->
                    ( 2, 1 )

                Cldr.MO ->
                    ( 3, 2 )

                Cldr.MP ->
                    ( 2, 1 )

                Cldr.MQ ->
                    ( 3, 2 )

                Cldr.MR ->
                    ( 3, 2 )

                Cldr.MS ->
                    ( 2, 1 )

                Cldr.MT ->
                    ( 3, 2 )

                Cldr.MU ->
                    ( 3, 2 )

                Cldr.MV ->
                    ( 3, 2 )

                Cldr.MW ->
                    ( 3, 2 )

                Cldr.MX ->
                    ( 7, 4 )

                Cldr.MY ->
                    ( 2, 1 )

                Cldr.MZ ->
                    ( 3, 2 )

                Cldr.NA ->
                    ( 3, 2 )

                Cldr.NC ->
                    ( 3, 2 )

                Cldr.NE ->
                    ( 7, 6 )

                Cldr.NF ->
                    ( 2, 1 )

                Cldr.NG ->
                    ( 2, 1 )

                Cldr.NI ->
                    ( 5, 3 )

                Cldr.NL ->
                    ( 3, 2 )

                Cldr.NO ->
                    ( 11, 8 )

                Cldr.NP ->
                    ( 242, 295 )

                Cldr.NR ->
                    ( 2, 1 )

                Cldr.NU ->
                    ( 2, 1 )

                Cldr.NZ ->
                    ( 2, 1 )

                Cldr.OM ->
                    ( 2, 1 )

                Cldr.PA ->
                    ( 3, 2 )

                Cldr.PE ->
                    ( 3, 2 )

                Cldr.PF ->
                    ( 3, 2 )

                Cldr.PG ->
                    ( 4, 3 )

                Cldr.PH ->
                    ( 2, 1 )

                Cldr.PK ->
                    ( 3, 2 )

                Cldr.PL ->
                    ( 8, 5 )

                Cldr.PM ->
                    ( 3, 2 )

                Cldr.PN ->
                    ( 2, 1 )

                Cldr.PR ->
                    ( 3, 2 )

                Cldr.PS ->
                    ( 2, 1 )

                Cldr.PT ->
                    ( 3, 2 )

                Cldr.PW ->
                    ( 8, 5 )

                Cldr.PY ->
                    ( 20, 11 )

                Cldr.QA ->
                    ( 28, 11 )

                Cldr.RE ->
                    ( 3, 2 )

                Cldr.RO ->
                    ( 3, 2 )

                Cldr.RS ->
                    ( 3, 2 )

                Cldr.RU ->
                    ( 3, 2 )

                Cldr.RW ->
                    ( 3, 2 )

                Cldr.SA ->
                    ( 3, 2 )

                Cldr.SB ->
                    ( 2, 1 )

                Cldr.SC ->
                    ( 2, 1 )

                Cldr.SD ->
                    ( 2, 1 )

                Cldr.SE ->
                    ( 8, 5 )

                Cldr.SG ->
                    ( 3, 2 )

                Cldr.SH ->
                    ( 2, 1 )

                Cldr.SI ->
                    ( 2, 1 )

                Cldr.SJ ->
                    ( 11, 8 )

                Cldr.SK ->
                    ( 3, 2 )

                Cldr.SL ->
                    ( 3, 2 )

                Cldr.SM ->
                    ( 4, 3 )

                Cldr.SN ->
                    ( 3, 2 )

                Cldr.SO ->
                    ( 3, 2 )

                Cldr.SR ->
                    ( 3, 2 )

                Cldr.SS ->
                    ( 2, 1 )

                Cldr.ST ->
                    ( 2, 1 )

                Cldr.SV ->
                    ( 335, 189 )

                Cldr.SX ->
                    ( 3, 2 )

                Cldr.SY ->
                    ( 3, 2 )

                Cldr.SZ ->
                    ( 3, 2 )

                Cldr.TC ->
                    ( 2, 1 )

                Cldr.TD ->
                    ( 3, 2 )

                Cldr.TF ->
                    ( 3, 2 )

                Cldr.TG ->
                    ( 809, 500 )

                Cldr.TH ->
                    ( 3, 2 )

                Cldr.TJ ->
                    ( 2, 1 )

                Cldr.TK ->
                    ( 2, 1 )

                Cldr.TL ->
                    ( 2, 1 )

                Cldr.TM ->
                    ( 3, 2 )

                Cldr.TN ->
                    ( 3, 2 )

                Cldr.TO ->
                    ( 2, 1 )

                Cldr.TR ->
                    ( 3, 2 )

                Cldr.TT ->
                    ( 5, 3 )

                Cldr.TV ->
                    ( 2, 1 )

                Cldr.TW ->
                    ( 3, 2 )

                Cldr.TZ ->
                    ( 3, 2 )

                Cldr.UA ->
                    ( 3, 2 )

                Cldr.UG ->
                    ( 3, 2 )

                Cldr.UM ->
                    ( 19, 10 )

                Cldr.US ->
                    ( 19, 10 )

                Cldr.UY ->
                    ( 3, 2 )

                Cldr.UZ ->
                    ( 2, 1 )

                Cldr.VA ->
                    ( 1, 1 )

                Cldr.VC ->
                    ( 3, 2 )

                Cldr.VE ->
                    ( 3, 2 )

                Cldr.VG ->
                    ( 2, 1 )

                Cldr.VI ->
                    ( 3, 2 )

                Cldr.VN ->
                    ( 3, 2 )

                Cldr.VU ->
                    ( 5, 3 )

                Cldr.WF ->
                    ( 3, 2 )

                Cldr.WS ->
                    ( 2, 1 )

                Cldr.XK ->
                    ( 7, 5 )

                Cldr.YE ->
                    ( 3, 2 )

                Cldr.YT ->
                    ( 3, 2 )

                Cldr.ZA ->
                    ( 3, 2 )

                Cldr.ZM ->
                    ( 3, 2 )

                Cldr.ZW ->
                    ( 2, 1 )

        Types.PartiallyRecognized never ->
            Basics.never never