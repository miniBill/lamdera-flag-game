module AspectRatios exposing (getAspectRatio)

{-| 
@docs getAspectRatio
-}


import Iso3166
import Types


getAspectRatio : Types.Country -> ( Int, Int )
getAspectRatio country =
    case country of
        Types.Iso3166 iso3166CountryCode ->
            case iso3166CountryCode of
                Iso3166.AD ->
                    ( 10, 7 )

                Iso3166.AE ->
                    ( 2, 1 )

                Iso3166.AF ->
                    ( 2, 1 )

                Iso3166.AG ->
                    ( 3, 2 )

                Iso3166.AI ->
                    ( 2, 1 )

                Iso3166.AL ->
                    ( 7, 5 )

                Iso3166.AM ->
                    ( 2, 1 )

                Iso3166.AO ->
                    ( 3, 2 )

                Iso3166.AQ ->
                    ( 3, 2 )

                Iso3166.AR ->
                    ( 8, 5 )

                Iso3166.AS ->
                    ( 2, 1 )

                Iso3166.AT ->
                    ( 3, 2 )

                Iso3166.AU ->
                    ( 2, 1 )

                Iso3166.AW ->
                    ( 3, 2 )

                Iso3166.AX ->
                    ( 26, 17 )

                Iso3166.AZ ->
                    ( 2, 1 )

                Iso3166.BA ->
                    ( 2, 1 )

                Iso3166.BB ->
                    ( 3, 2 )

                Iso3166.BD ->
                    ( 5, 3 )

                Iso3166.BE ->
                    ( 15, 13 )

                Iso3166.BF ->
                    ( 3, 2 )

                Iso3166.BG ->
                    ( 5, 3 )

                Iso3166.BH ->
                    ( 5, 3 )

                Iso3166.BI ->
                    ( 5, 3 )

                Iso3166.BJ ->
                    ( 3, 2 )

                Iso3166.BL ->
                    ( 3, 2 )

                Iso3166.BM ->
                    ( 2, 1 )

                Iso3166.BN ->
                    ( 2, 1 )

                Iso3166.BO ->
                    ( 22, 15 )

                Iso3166.BQ ->
                    ( 3, 2 )

                Iso3166.BR ->
                    ( 10, 7 )

                Iso3166.BS ->
                    ( 2, 1 )

                Iso3166.BT ->
                    ( 3, 2 )

                Iso3166.BV ->
                    ( 11, 8 )

                Iso3166.BW ->
                    ( 3, 2 )

                Iso3166.BY ->
                    ( 2, 1 )

                Iso3166.BZ ->
                    ( 5, 3 )

                Iso3166.CA ->
                    ( 2, 1 )

                Iso3166.CC ->
                    ( 2, 1 )

                Iso3166.CD ->
                    ( 4, 3 )

                Iso3166.CF ->
                    ( 3, 2 )

                Iso3166.CG ->
                    ( 3, 2 )

                Iso3166.CH ->
                    ( 1, 1 )

                Iso3166.CI ->
                    ( 3, 2 )

                Iso3166.CK ->
                    ( 2, 1 )

                Iso3166.CL ->
                    ( 3, 2 )

                Iso3166.CM ->
                    ( 3, 2 )

                Iso3166.CN ->
                    ( 3, 2 )

                Iso3166.CO ->
                    ( 3, 2 )

                Iso3166.CR ->
                    ( 5, 3 )

                Iso3166.CU ->
                    ( 2, 1 )

                Iso3166.CV ->
                    ( 17, 10 )

                Iso3166.CW ->
                    ( 3, 2 )

                Iso3166.CX ->
                    ( 2, 1 )

                Iso3166.CY ->
                    ( 3, 2 )

                Iso3166.CZ ->
                    ( 3, 2 )

                Iso3166.DE ->
                    ( 5, 3 )

                Iso3166.DJ ->
                    ( 3, 2 )

                Iso3166.DK ->
                    ( 37, 28 )

                Iso3166.DM ->
                    ( 2, 1 )

                Iso3166.DO ->
                    ( 3, 2 )

                Iso3166.DZ ->
                    ( 3, 2 )

                Iso3166.EC ->
                    ( 3, 2 )

                Iso3166.EE ->
                    ( 11, 7 )

                Iso3166.EG ->
                    ( 3, 2 )

                Iso3166.EH ->
                    ( 2, 1 )

                Iso3166.ER ->
                    ( 2, 1 )

                Iso3166.ES ->
                    ( 3, 2 )

                Iso3166.ET ->
                    ( 2, 1 )

                Iso3166.FI ->
                    ( 18, 11 )

                Iso3166.FJ ->
                    ( 2, 1 )

                Iso3166.FK ->
                    ( 2, 1 )

                Iso3166.FM ->
                    ( 19, 10 )

                Iso3166.FO ->
                    ( 11, 8 )

                Iso3166.FR ->
                    ( 3, 2 )

                Iso3166.GA ->
                    ( 4, 3 )

                Iso3166.GB ->
                    ( 2, 1 )

                Iso3166.GD ->
                    ( 5, 3 )

                Iso3166.GE ->
                    ( 3, 2 )

                Iso3166.GF ->
                    ( 3, 2 )

                Iso3166.GG ->
                    ( 3, 2 )

                Iso3166.GH ->
                    ( 3, 2 )

                Iso3166.GI ->
                    ( 2, 1 )

                Iso3166.GL ->
                    ( 3, 2 )

                Iso3166.GM ->
                    ( 3, 2 )

                Iso3166.GN ->
                    ( 3, 2 )

                Iso3166.GP ->
                    ( 3, 2 )

                Iso3166.GQ ->
                    ( 3, 2 )

                Iso3166.GR ->
                    ( 3, 2 )

                Iso3166.GS ->
                    ( 2, 1 )

                Iso3166.GT_ ->
                    ( 8, 5 )

                Iso3166.GU ->
                    ( 41, 22 )

                Iso3166.GW ->
                    ( 2, 1 )

                Iso3166.GY ->
                    ( 5, 3 )

                Iso3166.HK ->
                    ( 3, 2 )

                Iso3166.HM ->
                    ( 2, 1 )

                Iso3166.HN ->
                    ( 2, 1 )

                Iso3166.HR ->
                    ( 2, 1 )

                Iso3166.HT ->
                    ( 5, 3 )

                Iso3166.HU ->
                    ( 2, 1 )

                Iso3166.ID ->
                    ( 3, 2 )

                Iso3166.IE ->
                    ( 2, 1 )

                Iso3166.IL ->
                    ( 11, 8 )

                Iso3166.IM ->
                    ( 2, 1 )

                Iso3166.IN ->
                    ( 3, 2 )

                Iso3166.IO ->
                    ( 2, 1 )

                Iso3166.IQ ->
                    ( 3, 2 )

                Iso3166.IR ->
                    ( 7, 4 )

                Iso3166.IS ->
                    ( 25, 18 )

                Iso3166.IT ->
                    ( 3, 2 )

                Iso3166.JE ->
                    ( 5, 3 )

                Iso3166.JM ->
                    ( 2, 1 )

                Iso3166.JO ->
                    ( 2, 1 )

                Iso3166.JP ->
                    ( 3, 2 )

                Iso3166.KE ->
                    ( 3, 2 )

                Iso3166.KG ->
                    ( 5, 3 )

                Iso3166.KH ->
                    ( 25, 16 )

                Iso3166.KI ->
                    ( 2, 1 )

                Iso3166.KM ->
                    ( 5, 3 )

                Iso3166.KN ->
                    ( 3, 2 )

                Iso3166.KP ->
                    ( 2, 1 )

                Iso3166.KR ->
                    ( 3, 2 )

                Iso3166.KW ->
                    ( 2, 1 )

                Iso3166.KY ->
                    ( 2, 1 )

                Iso3166.KZ ->
                    ( 2, 1 )

                Iso3166.LA ->
                    ( 3, 2 )

                Iso3166.LB ->
                    ( 3, 2 )

                Iso3166.LC ->
                    ( 2, 1 )

                Iso3166.LI ->
                    ( 5, 3 )

                Iso3166.LK ->
                    ( 2, 1 )

                Iso3166.LR ->
                    ( 19, 10 )

                Iso3166.LS ->
                    ( 3, 2 )

                Iso3166.LT_ ->
                    ( 5, 3 )

                Iso3166.LU ->
                    ( 5, 3 )

                Iso3166.LV ->
                    ( 2, 1 )

                Iso3166.LY ->
                    ( 2, 1 )

                Iso3166.MA ->
                    ( 3, 2 )

                Iso3166.MC ->
                    ( 5, 4 )

                Iso3166.MD ->
                    ( 2, 1 )

                Iso3166.ME ->
                    ( 2, 1 )

                Iso3166.MF ->
                    ( 3, 2 )

                Iso3166.MG ->
                    ( 3, 2 )

                Iso3166.MH ->
                    ( 19, 10 )

                Iso3166.MK ->
                    ( 2, 1 )

                Iso3166.ML ->
                    ( 3, 2 )

                Iso3166.MM ->
                    ( 3, 2 )

                Iso3166.MN ->
                    ( 2, 1 )

                Iso3166.MO ->
                    ( 3, 2 )

                Iso3166.MP ->
                    ( 2, 1 )

                Iso3166.MQ ->
                    ( 3, 2 )

                Iso3166.MR ->
                    ( 3, 2 )

                Iso3166.MS ->
                    ( 2, 1 )

                Iso3166.MT ->
                    ( 3, 2 )

                Iso3166.MU ->
                    ( 3, 2 )

                Iso3166.MV ->
                    ( 3, 2 )

                Iso3166.MW ->
                    ( 3, 2 )

                Iso3166.MX ->
                    ( 7, 4 )

                Iso3166.MY ->
                    ( 2, 1 )

                Iso3166.MZ ->
                    ( 3, 2 )

                Iso3166.NA ->
                    ( 3, 2 )

                Iso3166.NC ->
                    ( 3, 2 )

                Iso3166.NE ->
                    ( 7, 6 )

                Iso3166.NF ->
                    ( 2, 1 )

                Iso3166.NG ->
                    ( 2, 1 )

                Iso3166.NI ->
                    ( 5, 3 )

                Iso3166.NL ->
                    ( 3, 2 )

                Iso3166.NO ->
                    ( 11, 8 )

                Iso3166.NP ->
                    ( 242, 295 )

                Iso3166.NR ->
                    ( 2, 1 )

                Iso3166.NU ->
                    ( 2, 1 )

                Iso3166.NZ ->
                    ( 2, 1 )

                Iso3166.OM ->
                    ( 2, 1 )

                Iso3166.PA ->
                    ( 3, 2 )

                Iso3166.PE ->
                    ( 3, 2 )

                Iso3166.PF ->
                    ( 3, 2 )

                Iso3166.PG ->
                    ( 4, 3 )

                Iso3166.PH ->
                    ( 2, 1 )

                Iso3166.PK ->
                    ( 3, 2 )

                Iso3166.PL ->
                    ( 8, 5 )

                Iso3166.PM ->
                    ( 3, 2 )

                Iso3166.PN ->
                    ( 2, 1 )

                Iso3166.PR ->
                    ( 3, 2 )

                Iso3166.PS ->
                    ( 2, 1 )

                Iso3166.PT ->
                    ( 3, 2 )

                Iso3166.PW ->
                    ( 8, 5 )

                Iso3166.PY ->
                    ( 20, 11 )

                Iso3166.QA ->
                    ( 28, 11 )

                Iso3166.RE ->
                    ( 3, 2 )

                Iso3166.RO ->
                    ( 3, 2 )

                Iso3166.RS ->
                    ( 3, 2 )

                Iso3166.RU ->
                    ( 3, 2 )

                Iso3166.RW ->
                    ( 3, 2 )

                Iso3166.SA ->
                    ( 3, 2 )

                Iso3166.SB ->
                    ( 2, 1 )

                Iso3166.SC ->
                    ( 2, 1 )

                Iso3166.SD ->
                    ( 2, 1 )

                Iso3166.SE ->
                    ( 8, 5 )

                Iso3166.SG ->
                    ( 3, 2 )

                Iso3166.SH ->
                    ( 2, 1 )

                Iso3166.SI ->
                    ( 2, 1 )

                Iso3166.SJ ->
                    ( 11, 8 )

                Iso3166.SK ->
                    ( 3, 2 )

                Iso3166.SL ->
                    ( 3, 2 )

                Iso3166.SM ->
                    ( 4, 3 )

                Iso3166.SN ->
                    ( 3, 2 )

                Iso3166.SO ->
                    ( 3, 2 )

                Iso3166.SR ->
                    ( 3, 2 )

                Iso3166.SS ->
                    ( 2, 1 )

                Iso3166.ST ->
                    ( 2, 1 )

                Iso3166.SV ->
                    ( 335, 189 )

                Iso3166.SX ->
                    ( 3, 2 )

                Iso3166.SY ->
                    ( 3, 2 )

                Iso3166.SZ ->
                    ( 3, 2 )

                Iso3166.TC ->
                    ( 2, 1 )

                Iso3166.TD ->
                    ( 3, 2 )

                Iso3166.TF ->
                    ( 3, 2 )

                Iso3166.TG ->
                    ( 809, 500 )

                Iso3166.TH ->
                    ( 3, 2 )

                Iso3166.TJ ->
                    ( 2, 1 )

                Iso3166.TK ->
                    ( 2, 1 )

                Iso3166.TL ->
                    ( 2, 1 )

                Iso3166.TM ->
                    ( 3, 2 )

                Iso3166.TN ->
                    ( 3, 2 )

                Iso3166.TO ->
                    ( 2, 1 )

                Iso3166.TR ->
                    ( 3, 2 )

                Iso3166.TT ->
                    ( 5, 3 )

                Iso3166.TV ->
                    ( 2, 1 )

                Iso3166.TW ->
                    ( 3, 2 )

                Iso3166.TZ ->
                    ( 3, 2 )

                Iso3166.UA ->
                    ( 3, 2 )

                Iso3166.UG ->
                    ( 3, 2 )

                Iso3166.UM ->
                    ( 19, 10 )

                Iso3166.US ->
                    ( 19, 10 )

                Iso3166.UY ->
                    ( 3, 2 )

                Iso3166.UZ ->
                    ( 2, 1 )

                Iso3166.VA ->
                    ( 1, 1 )

                Iso3166.VC ->
                    ( 3, 2 )

                Iso3166.VE ->
                    ( 3, 2 )

                Iso3166.VG ->
                    ( 2, 1 )

                Iso3166.VI ->
                    ( 3, 2 )

                Iso3166.VN ->
                    ( 3, 2 )

                Iso3166.VU ->
                    ( 5, 3 )

                Iso3166.WF ->
                    ( 3, 2 )

                Iso3166.WS ->
                    ( 2, 1 )

                Iso3166.YE ->
                    ( 3, 2 )

                Iso3166.YT ->
                    ( 3, 2 )

                Iso3166.ZA ->
                    ( 3, 2 )

                Iso3166.ZM ->
                    ( 3, 2 )

                Iso3166.ZW ->
                    ( 2, 1 )

        Types.PartiallyRecognized partiallyRecognized ->
            case partiallyRecognized of
                Types.XK ->
                    ( 7, 5 )