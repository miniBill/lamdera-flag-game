module Evergreen.Migrate.V34 exposing (..)

import Evergreen.V32.Cldr
import Evergreen.V32.Main
import Evergreen.V32.Main.Pages.Msg
import Evergreen.V32.Pages.Finished
import Evergreen.V32.Pages.Home_
import Evergreen.V32.Pages.NotFound_
import Evergreen.V32.Pages.Play
import Evergreen.V32.Pages.Sort
import Evergreen.V32.Shared
import Evergreen.V32.Shared.Model
import Evergreen.V32.Shared.Msg
import Evergreen.V32.Types
import Evergreen.V34.Cldr
import Evergreen.V34.Main
import Evergreen.V34.Main.Pages.Msg
import Evergreen.V34.Pages.Finished
import Evergreen.V34.Pages.Home_
import Evergreen.V34.Pages.NotFound_
import Evergreen.V34.Pages.Play
import Evergreen.V34.Pages.Sort
import Evergreen.V34.Shared
import Evergreen.V34.Shared.Model
import Evergreen.V34.Shared.Msg
import Evergreen.V34.Types
import Lamdera.Migrations exposing (..)
import List


frontendModel : Evergreen.V32.Types.FrontendModel -> ModelMigration Evergreen.V34.Types.FrontendModel Evergreen.V34.Types.FrontendMsg
frontendModel old =
    ModelUnchanged


backendModel : Evergreen.V32.Types.BackendModel -> ModelMigration Evergreen.V34.Types.BackendModel Evergreen.V34.Types.BackendMsg
backendModel old =
    ModelUnchanged


frontendMsg : Evergreen.V32.Types.FrontendMsg -> MsgMigration Evergreen.V34.Types.FrontendMsg Evergreen.V34.Types.FrontendMsg
frontendMsg old =
    MsgUnchanged


toBackend : Evergreen.V32.Types.ToBackend -> MsgMigration Evergreen.V34.Types.ToBackend Evergreen.V34.Types.BackendMsg
toBackend old =
    MsgUnchanged


backendMsg : Evergreen.V32.Types.BackendMsg -> MsgMigration Evergreen.V34.Types.BackendMsg Evergreen.V34.Types.BackendMsg
backendMsg old =
    MsgUnchanged


toFrontend : Evergreen.V32.Types.ToFrontend -> MsgMigration Evergreen.V34.Types.ToFrontend Evergreen.V34.Types.FrontendMsg
toFrontend old =
    MsgUnchanged


migrate_Cldr_CountryCode : Evergreen.V32.Cldr.CountryCode -> Evergreen.V34.Cldr.CountryCode
migrate_Cldr_CountryCode old =
    case old of
        Evergreen.V32.Cldr.AD ->
            Evergreen.V34.Cldr.AD

        Evergreen.V32.Cldr.AE ->
            Evergreen.V34.Cldr.AE

        Evergreen.V32.Cldr.AF ->
            Evergreen.V34.Cldr.AF

        Evergreen.V32.Cldr.AG ->
            Evergreen.V34.Cldr.AG

        Evergreen.V32.Cldr.AI ->
            Evergreen.V34.Cldr.AI

        Evergreen.V32.Cldr.AL ->
            Evergreen.V34.Cldr.AL

        Evergreen.V32.Cldr.AM ->
            Evergreen.V34.Cldr.AM

        Evergreen.V32.Cldr.AO ->
            Evergreen.V34.Cldr.AO

        Evergreen.V32.Cldr.AQ ->
            Evergreen.V34.Cldr.AQ

        Evergreen.V32.Cldr.AR ->
            Evergreen.V34.Cldr.AR

        Evergreen.V32.Cldr.AS ->
            Evergreen.V34.Cldr.AS

        Evergreen.V32.Cldr.AT ->
            Evergreen.V34.Cldr.AT

        Evergreen.V32.Cldr.AU ->
            Evergreen.V34.Cldr.AU

        Evergreen.V32.Cldr.AW ->
            Evergreen.V34.Cldr.AW

        Evergreen.V32.Cldr.AX ->
            Evergreen.V34.Cldr.AX

        Evergreen.V32.Cldr.AZ ->
            Evergreen.V34.Cldr.AZ

        Evergreen.V32.Cldr.BA ->
            Evergreen.V34.Cldr.BA

        Evergreen.V32.Cldr.BB ->
            Evergreen.V34.Cldr.BB

        Evergreen.V32.Cldr.BD ->
            Evergreen.V34.Cldr.BD

        Evergreen.V32.Cldr.BE ->
            Evergreen.V34.Cldr.BE

        Evergreen.V32.Cldr.BF ->
            Evergreen.V34.Cldr.BF

        Evergreen.V32.Cldr.BG ->
            Evergreen.V34.Cldr.BG

        Evergreen.V32.Cldr.BH ->
            Evergreen.V34.Cldr.BH

        Evergreen.V32.Cldr.BI ->
            Evergreen.V34.Cldr.BI

        Evergreen.V32.Cldr.BJ ->
            Evergreen.V34.Cldr.BJ

        Evergreen.V32.Cldr.BL ->
            Evergreen.V34.Cldr.BL

        Evergreen.V32.Cldr.BM ->
            Evergreen.V34.Cldr.BM

        Evergreen.V32.Cldr.BN ->
            Evergreen.V34.Cldr.BN

        Evergreen.V32.Cldr.BO ->
            Evergreen.V34.Cldr.BO

        Evergreen.V32.Cldr.BQ ->
            Evergreen.V34.Cldr.BQ

        Evergreen.V32.Cldr.BR ->
            Evergreen.V34.Cldr.BR

        Evergreen.V32.Cldr.BS ->
            Evergreen.V34.Cldr.BS

        Evergreen.V32.Cldr.BT ->
            Evergreen.V34.Cldr.BT

        Evergreen.V32.Cldr.BV ->
            Evergreen.V34.Cldr.BV

        Evergreen.V32.Cldr.BW ->
            Evergreen.V34.Cldr.BW

        Evergreen.V32.Cldr.BY ->
            Evergreen.V34.Cldr.BY

        Evergreen.V32.Cldr.BZ ->
            Evergreen.V34.Cldr.BZ

        Evergreen.V32.Cldr.CA ->
            Evergreen.V34.Cldr.CA

        Evergreen.V32.Cldr.CC ->
            Evergreen.V34.Cldr.CC

        Evergreen.V32.Cldr.CD ->
            Evergreen.V34.Cldr.CD

        Evergreen.V32.Cldr.CF ->
            Evergreen.V34.Cldr.CF

        Evergreen.V32.Cldr.CG ->
            Evergreen.V34.Cldr.CG

        Evergreen.V32.Cldr.CH ->
            Evergreen.V34.Cldr.CH

        Evergreen.V32.Cldr.CI ->
            Evergreen.V34.Cldr.CI

        Evergreen.V32.Cldr.CK ->
            Evergreen.V34.Cldr.CK

        Evergreen.V32.Cldr.CL ->
            Evergreen.V34.Cldr.CL

        Evergreen.V32.Cldr.CM ->
            Evergreen.V34.Cldr.CM

        Evergreen.V32.Cldr.CN ->
            Evergreen.V34.Cldr.CN

        Evergreen.V32.Cldr.CO ->
            Evergreen.V34.Cldr.CO

        Evergreen.V32.Cldr.CR ->
            Evergreen.V34.Cldr.CR

        Evergreen.V32.Cldr.CU ->
            Evergreen.V34.Cldr.CU

        Evergreen.V32.Cldr.CV ->
            Evergreen.V34.Cldr.CV

        Evergreen.V32.Cldr.CW ->
            Evergreen.V34.Cldr.CW

        Evergreen.V32.Cldr.CX ->
            Evergreen.V34.Cldr.CX

        Evergreen.V32.Cldr.CY ->
            Evergreen.V34.Cldr.CY

        Evergreen.V32.Cldr.CZ ->
            Evergreen.V34.Cldr.CZ

        Evergreen.V32.Cldr.DE ->
            Evergreen.V34.Cldr.DE

        Evergreen.V32.Cldr.DJ ->
            Evergreen.V34.Cldr.DJ

        Evergreen.V32.Cldr.DK ->
            Evergreen.V34.Cldr.DK

        Evergreen.V32.Cldr.DM ->
            Evergreen.V34.Cldr.DM

        Evergreen.V32.Cldr.DO ->
            Evergreen.V34.Cldr.DO

        Evergreen.V32.Cldr.DZ ->
            Evergreen.V34.Cldr.DZ

        Evergreen.V32.Cldr.EC ->
            Evergreen.V34.Cldr.EC

        Evergreen.V32.Cldr.EE ->
            Evergreen.V34.Cldr.EE

        Evergreen.V32.Cldr.EG ->
            Evergreen.V34.Cldr.EG

        Evergreen.V32.Cldr.EH ->
            Evergreen.V34.Cldr.EH

        Evergreen.V32.Cldr.ER ->
            Evergreen.V34.Cldr.ER

        Evergreen.V32.Cldr.ES ->
            Evergreen.V34.Cldr.ES

        Evergreen.V32.Cldr.ET ->
            Evergreen.V34.Cldr.ET

        Evergreen.V32.Cldr.FI ->
            Evergreen.V34.Cldr.FI

        Evergreen.V32.Cldr.FJ ->
            Evergreen.V34.Cldr.FJ

        Evergreen.V32.Cldr.FK ->
            Evergreen.V34.Cldr.FK

        Evergreen.V32.Cldr.FM ->
            Evergreen.V34.Cldr.FM

        Evergreen.V32.Cldr.FO ->
            Evergreen.V34.Cldr.FO

        Evergreen.V32.Cldr.FR ->
            Evergreen.V34.Cldr.FR

        Evergreen.V32.Cldr.GA ->
            Evergreen.V34.Cldr.GA

        Evergreen.V32.Cldr.GB ->
            Evergreen.V34.Cldr.GB

        Evergreen.V32.Cldr.GD ->
            Evergreen.V34.Cldr.GD

        Evergreen.V32.Cldr.GE ->
            Evergreen.V34.Cldr.GE

        Evergreen.V32.Cldr.GF ->
            Evergreen.V34.Cldr.GF

        Evergreen.V32.Cldr.GG ->
            Evergreen.V34.Cldr.GG

        Evergreen.V32.Cldr.GH ->
            Evergreen.V34.Cldr.GH

        Evergreen.V32.Cldr.GI ->
            Evergreen.V34.Cldr.GI

        Evergreen.V32.Cldr.GL ->
            Evergreen.V34.Cldr.GL

        Evergreen.V32.Cldr.GM ->
            Evergreen.V34.Cldr.GM

        Evergreen.V32.Cldr.GN ->
            Evergreen.V34.Cldr.GN

        Evergreen.V32.Cldr.GP ->
            Evergreen.V34.Cldr.GP

        Evergreen.V32.Cldr.GQ ->
            Evergreen.V34.Cldr.GQ

        Evergreen.V32.Cldr.GR ->
            Evergreen.V34.Cldr.GR

        Evergreen.V32.Cldr.GS ->
            Evergreen.V34.Cldr.GS

        Evergreen.V32.Cldr.GT_ ->
            Evergreen.V34.Cldr.GT_

        Evergreen.V32.Cldr.GU ->
            Evergreen.V34.Cldr.GU

        Evergreen.V32.Cldr.GW ->
            Evergreen.V34.Cldr.GW

        Evergreen.V32.Cldr.GY ->
            Evergreen.V34.Cldr.GY

        Evergreen.V32.Cldr.HK ->
            Evergreen.V34.Cldr.HK

        Evergreen.V32.Cldr.HM ->
            Evergreen.V34.Cldr.HM

        Evergreen.V32.Cldr.HN ->
            Evergreen.V34.Cldr.HN

        Evergreen.V32.Cldr.HR ->
            Evergreen.V34.Cldr.HR

        Evergreen.V32.Cldr.HT ->
            Evergreen.V34.Cldr.HT

        Evergreen.V32.Cldr.HU ->
            Evergreen.V34.Cldr.HU

        Evergreen.V32.Cldr.ID ->
            Evergreen.V34.Cldr.ID

        Evergreen.V32.Cldr.IE ->
            Evergreen.V34.Cldr.IE

        Evergreen.V32.Cldr.IL ->
            Evergreen.V34.Cldr.IL

        Evergreen.V32.Cldr.IM ->
            Evergreen.V34.Cldr.IM

        Evergreen.V32.Cldr.IN ->
            Evergreen.V34.Cldr.IN

        Evergreen.V32.Cldr.IO ->
            Evergreen.V34.Cldr.IO

        Evergreen.V32.Cldr.IQ ->
            Evergreen.V34.Cldr.IQ

        Evergreen.V32.Cldr.IR ->
            Evergreen.V34.Cldr.IR

        Evergreen.V32.Cldr.IS ->
            Evergreen.V34.Cldr.IS

        Evergreen.V32.Cldr.IT ->
            Evergreen.V34.Cldr.IT

        Evergreen.V32.Cldr.JE ->
            Evergreen.V34.Cldr.JE

        Evergreen.V32.Cldr.JM ->
            Evergreen.V34.Cldr.JM

        Evergreen.V32.Cldr.JO ->
            Evergreen.V34.Cldr.JO

        Evergreen.V32.Cldr.JP ->
            Evergreen.V34.Cldr.JP

        Evergreen.V32.Cldr.KE ->
            Evergreen.V34.Cldr.KE

        Evergreen.V32.Cldr.KG ->
            Evergreen.V34.Cldr.KG

        Evergreen.V32.Cldr.KH ->
            Evergreen.V34.Cldr.KH

        Evergreen.V32.Cldr.KI ->
            Evergreen.V34.Cldr.KI

        Evergreen.V32.Cldr.KM ->
            Evergreen.V34.Cldr.KM

        Evergreen.V32.Cldr.KN ->
            Evergreen.V34.Cldr.KN

        Evergreen.V32.Cldr.KP ->
            Evergreen.V34.Cldr.KP

        Evergreen.V32.Cldr.KR ->
            Evergreen.V34.Cldr.KR

        Evergreen.V32.Cldr.KW ->
            Evergreen.V34.Cldr.KW

        Evergreen.V32.Cldr.KY ->
            Evergreen.V34.Cldr.KY

        Evergreen.V32.Cldr.KZ ->
            Evergreen.V34.Cldr.KZ

        Evergreen.V32.Cldr.LA ->
            Evergreen.V34.Cldr.LA

        Evergreen.V32.Cldr.LB ->
            Evergreen.V34.Cldr.LB

        Evergreen.V32.Cldr.LC ->
            Evergreen.V34.Cldr.LC

        Evergreen.V32.Cldr.LI ->
            Evergreen.V34.Cldr.LI

        Evergreen.V32.Cldr.LK ->
            Evergreen.V34.Cldr.LK

        Evergreen.V32.Cldr.LR ->
            Evergreen.V34.Cldr.LR

        Evergreen.V32.Cldr.LS ->
            Evergreen.V34.Cldr.LS

        Evergreen.V32.Cldr.LT_ ->
            Evergreen.V34.Cldr.LT_

        Evergreen.V32.Cldr.LU ->
            Evergreen.V34.Cldr.LU

        Evergreen.V32.Cldr.LV ->
            Evergreen.V34.Cldr.LV

        Evergreen.V32.Cldr.LY ->
            Evergreen.V34.Cldr.LY

        Evergreen.V32.Cldr.MA ->
            Evergreen.V34.Cldr.MA

        Evergreen.V32.Cldr.MC ->
            Evergreen.V34.Cldr.MC

        Evergreen.V32.Cldr.MD ->
            Evergreen.V34.Cldr.MD

        Evergreen.V32.Cldr.ME ->
            Evergreen.V34.Cldr.ME

        Evergreen.V32.Cldr.MF ->
            Evergreen.V34.Cldr.MF

        Evergreen.V32.Cldr.MG ->
            Evergreen.V34.Cldr.MG

        Evergreen.V32.Cldr.MH ->
            Evergreen.V34.Cldr.MH

        Evergreen.V32.Cldr.MK ->
            Evergreen.V34.Cldr.MK

        Evergreen.V32.Cldr.ML ->
            Evergreen.V34.Cldr.ML

        Evergreen.V32.Cldr.MM ->
            Evergreen.V34.Cldr.MM

        Evergreen.V32.Cldr.MN ->
            Evergreen.V34.Cldr.MN

        Evergreen.V32.Cldr.MO ->
            Evergreen.V34.Cldr.MO

        Evergreen.V32.Cldr.MP ->
            Evergreen.V34.Cldr.MP

        Evergreen.V32.Cldr.MQ ->
            Evergreen.V34.Cldr.MQ

        Evergreen.V32.Cldr.MR ->
            Evergreen.V34.Cldr.MR

        Evergreen.V32.Cldr.MS ->
            Evergreen.V34.Cldr.MS

        Evergreen.V32.Cldr.MT ->
            Evergreen.V34.Cldr.MT

        Evergreen.V32.Cldr.MU ->
            Evergreen.V34.Cldr.MU

        Evergreen.V32.Cldr.MV ->
            Evergreen.V34.Cldr.MV

        Evergreen.V32.Cldr.MW ->
            Evergreen.V34.Cldr.MW

        Evergreen.V32.Cldr.MX ->
            Evergreen.V34.Cldr.MX

        Evergreen.V32.Cldr.MY ->
            Evergreen.V34.Cldr.MY

        Evergreen.V32.Cldr.MZ ->
            Evergreen.V34.Cldr.MZ

        Evergreen.V32.Cldr.NA ->
            Evergreen.V34.Cldr.NA

        Evergreen.V32.Cldr.NC ->
            Evergreen.V34.Cldr.NC

        Evergreen.V32.Cldr.NE ->
            Evergreen.V34.Cldr.NE

        Evergreen.V32.Cldr.NF ->
            Evergreen.V34.Cldr.NF

        Evergreen.V32.Cldr.NG ->
            Evergreen.V34.Cldr.NG

        Evergreen.V32.Cldr.NI ->
            Evergreen.V34.Cldr.NI

        Evergreen.V32.Cldr.NL ->
            Evergreen.V34.Cldr.NL

        Evergreen.V32.Cldr.NO ->
            Evergreen.V34.Cldr.NO

        Evergreen.V32.Cldr.NP ->
            Evergreen.V34.Cldr.NP

        Evergreen.V32.Cldr.NR ->
            Evergreen.V34.Cldr.NR

        Evergreen.V32.Cldr.NU ->
            Evergreen.V34.Cldr.NU

        Evergreen.V32.Cldr.NZ ->
            Evergreen.V34.Cldr.NZ

        Evergreen.V32.Cldr.OM ->
            Evergreen.V34.Cldr.OM

        Evergreen.V32.Cldr.PA ->
            Evergreen.V34.Cldr.PA

        Evergreen.V32.Cldr.PE ->
            Evergreen.V34.Cldr.PE

        Evergreen.V32.Cldr.PF ->
            Evergreen.V34.Cldr.PF

        Evergreen.V32.Cldr.PG ->
            Evergreen.V34.Cldr.PG

        Evergreen.V32.Cldr.PH ->
            Evergreen.V34.Cldr.PH

        Evergreen.V32.Cldr.PK ->
            Evergreen.V34.Cldr.PK

        Evergreen.V32.Cldr.PL ->
            Evergreen.V34.Cldr.PL

        Evergreen.V32.Cldr.PM ->
            Evergreen.V34.Cldr.PM

        Evergreen.V32.Cldr.PN ->
            Evergreen.V34.Cldr.PN

        Evergreen.V32.Cldr.PR ->
            Evergreen.V34.Cldr.PR

        Evergreen.V32.Cldr.PS ->
            Evergreen.V34.Cldr.PS

        Evergreen.V32.Cldr.PT ->
            Evergreen.V34.Cldr.PT

        Evergreen.V32.Cldr.PW ->
            Evergreen.V34.Cldr.PW

        Evergreen.V32.Cldr.PY ->
            Evergreen.V34.Cldr.PY

        Evergreen.V32.Cldr.QA ->
            Evergreen.V34.Cldr.QA

        Evergreen.V32.Cldr.RE ->
            Evergreen.V34.Cldr.RE

        Evergreen.V32.Cldr.RO ->
            Evergreen.V34.Cldr.RO

        Evergreen.V32.Cldr.RS ->
            Evergreen.V34.Cldr.RS

        Evergreen.V32.Cldr.RU ->
            Evergreen.V34.Cldr.RU

        Evergreen.V32.Cldr.RW ->
            Evergreen.V34.Cldr.RW

        Evergreen.V32.Cldr.SA ->
            Evergreen.V34.Cldr.SA

        Evergreen.V32.Cldr.SB ->
            Evergreen.V34.Cldr.SB

        Evergreen.V32.Cldr.SC ->
            Evergreen.V34.Cldr.SC

        Evergreen.V32.Cldr.SD ->
            Evergreen.V34.Cldr.SD

        Evergreen.V32.Cldr.SE ->
            Evergreen.V34.Cldr.SE

        Evergreen.V32.Cldr.SG ->
            Evergreen.V34.Cldr.SG

        Evergreen.V32.Cldr.SH ->
            Evergreen.V34.Cldr.SH

        Evergreen.V32.Cldr.SI ->
            Evergreen.V34.Cldr.SI

        Evergreen.V32.Cldr.SJ ->
            Evergreen.V34.Cldr.SJ

        Evergreen.V32.Cldr.SK ->
            Evergreen.V34.Cldr.SK

        Evergreen.V32.Cldr.SL ->
            Evergreen.V34.Cldr.SL

        Evergreen.V32.Cldr.SM ->
            Evergreen.V34.Cldr.SM

        Evergreen.V32.Cldr.SN ->
            Evergreen.V34.Cldr.SN

        Evergreen.V32.Cldr.SO ->
            Evergreen.V34.Cldr.SO

        Evergreen.V32.Cldr.SR ->
            Evergreen.V34.Cldr.SR

        Evergreen.V32.Cldr.SS ->
            Evergreen.V34.Cldr.SS

        Evergreen.V32.Cldr.ST ->
            Evergreen.V34.Cldr.ST

        Evergreen.V32.Cldr.SV ->
            Evergreen.V34.Cldr.SV

        Evergreen.V32.Cldr.SX ->
            Evergreen.V34.Cldr.SX

        Evergreen.V32.Cldr.SY ->
            Evergreen.V34.Cldr.SY

        Evergreen.V32.Cldr.SZ ->
            Evergreen.V34.Cldr.SZ

        Evergreen.V32.Cldr.TC ->
            Evergreen.V34.Cldr.TC

        Evergreen.V32.Cldr.TD ->
            Evergreen.V34.Cldr.TD

        Evergreen.V32.Cldr.TF ->
            Evergreen.V34.Cldr.TF

        Evergreen.V32.Cldr.TG ->
            Evergreen.V34.Cldr.TG

        Evergreen.V32.Cldr.TH ->
            Evergreen.V34.Cldr.TH

        Evergreen.V32.Cldr.TJ ->
            Evergreen.V34.Cldr.TJ

        Evergreen.V32.Cldr.TK ->
            Evergreen.V34.Cldr.TK

        Evergreen.V32.Cldr.TL ->
            Evergreen.V34.Cldr.TL

        Evergreen.V32.Cldr.TM ->
            Evergreen.V34.Cldr.TM

        Evergreen.V32.Cldr.TN ->
            Evergreen.V34.Cldr.TN

        Evergreen.V32.Cldr.TO ->
            Evergreen.V34.Cldr.TO

        Evergreen.V32.Cldr.TR ->
            Evergreen.V34.Cldr.TR

        Evergreen.V32.Cldr.TT ->
            Evergreen.V34.Cldr.TT

        Evergreen.V32.Cldr.TV ->
            Evergreen.V34.Cldr.TV

        Evergreen.V32.Cldr.TW ->
            Evergreen.V34.Cldr.TW

        Evergreen.V32.Cldr.TZ ->
            Evergreen.V34.Cldr.TZ

        Evergreen.V32.Cldr.UA ->
            Evergreen.V34.Cldr.UA

        Evergreen.V32.Cldr.UG ->
            Evergreen.V34.Cldr.UG

        Evergreen.V32.Cldr.UM ->
            Evergreen.V34.Cldr.UM

        Evergreen.V32.Cldr.US ->
            Evergreen.V34.Cldr.US

        Evergreen.V32.Cldr.UY ->
            Evergreen.V34.Cldr.UY

        Evergreen.V32.Cldr.UZ ->
            Evergreen.V34.Cldr.UZ

        Evergreen.V32.Cldr.VA ->
            Evergreen.V34.Cldr.VA

        Evergreen.V32.Cldr.VC ->
            Evergreen.V34.Cldr.VC

        Evergreen.V32.Cldr.VE ->
            Evergreen.V34.Cldr.VE

        Evergreen.V32.Cldr.VG ->
            Evergreen.V34.Cldr.VG

        Evergreen.V32.Cldr.VI ->
            Evergreen.V34.Cldr.VI

        Evergreen.V32.Cldr.VN ->
            Evergreen.V34.Cldr.VN

        Evergreen.V32.Cldr.VU ->
            Evergreen.V34.Cldr.VU

        Evergreen.V32.Cldr.WF ->
            Evergreen.V34.Cldr.WF

        Evergreen.V32.Cldr.WS ->
            Evergreen.V34.Cldr.WS

        Evergreen.V32.Cldr.XK ->
            Evergreen.V34.Cldr.XK

        Evergreen.V32.Cldr.YE ->
            Evergreen.V34.Cldr.YE

        Evergreen.V32.Cldr.YT ->
            Evergreen.V34.Cldr.YT

        Evergreen.V32.Cldr.ZA ->
            Evergreen.V34.Cldr.ZA

        Evergreen.V32.Cldr.ZM ->
            Evergreen.V34.Cldr.ZM

        Evergreen.V32.Cldr.ZW ->
            Evergreen.V34.Cldr.ZW


migrate_Cldr_Locale : Evergreen.V32.Cldr.Locale -> Evergreen.V34.Cldr.Locale
migrate_Cldr_Locale old =
    case old of
        Evergreen.V32.Cldr.Af ->
            Evergreen.V34.Cldr.Af

        Evergreen.V32.Cldr.AfNA ->
            Evergreen.V34.Cldr.AfNA

        Evergreen.V32.Cldr.Am ->
            Evergreen.V34.Cldr.Am

        Evergreen.V32.Cldr.Ar ->
            Evergreen.V34.Cldr.Ar

        Evergreen.V32.Cldr.ArAE ->
            Evergreen.V34.Cldr.ArAE

        Evergreen.V32.Cldr.ArBH ->
            Evergreen.V34.Cldr.ArBH

        Evergreen.V32.Cldr.ArDJ ->
            Evergreen.V34.Cldr.ArDJ

        Evergreen.V32.Cldr.ArDZ ->
            Evergreen.V34.Cldr.ArDZ

        Evergreen.V32.Cldr.ArEG ->
            Evergreen.V34.Cldr.ArEG

        Evergreen.V32.Cldr.ArEH ->
            Evergreen.V34.Cldr.ArEH

        Evergreen.V32.Cldr.ArER ->
            Evergreen.V34.Cldr.ArER

        Evergreen.V32.Cldr.ArIL ->
            Evergreen.V34.Cldr.ArIL

        Evergreen.V32.Cldr.ArIQ ->
            Evergreen.V34.Cldr.ArIQ

        Evergreen.V32.Cldr.ArJO ->
            Evergreen.V34.Cldr.ArJO

        Evergreen.V32.Cldr.ArKM ->
            Evergreen.V34.Cldr.ArKM

        Evergreen.V32.Cldr.ArKW ->
            Evergreen.V34.Cldr.ArKW

        Evergreen.V32.Cldr.ArLB ->
            Evergreen.V34.Cldr.ArLB

        Evergreen.V32.Cldr.ArLY ->
            Evergreen.V34.Cldr.ArLY

        Evergreen.V32.Cldr.ArMA ->
            Evergreen.V34.Cldr.ArMA

        Evergreen.V32.Cldr.ArMR ->
            Evergreen.V34.Cldr.ArMR

        Evergreen.V32.Cldr.ArOM ->
            Evergreen.V34.Cldr.ArOM

        Evergreen.V32.Cldr.ArPS ->
            Evergreen.V34.Cldr.ArPS

        Evergreen.V32.Cldr.ArQA ->
            Evergreen.V34.Cldr.ArQA

        Evergreen.V32.Cldr.ArSA ->
            Evergreen.V34.Cldr.ArSA

        Evergreen.V32.Cldr.ArSD ->
            Evergreen.V34.Cldr.ArSD

        Evergreen.V32.Cldr.ArSO ->
            Evergreen.V34.Cldr.ArSO

        Evergreen.V32.Cldr.ArSS ->
            Evergreen.V34.Cldr.ArSS

        Evergreen.V32.Cldr.ArSY ->
            Evergreen.V34.Cldr.ArSY

        Evergreen.V32.Cldr.ArTD ->
            Evergreen.V34.Cldr.ArTD

        Evergreen.V32.Cldr.ArTN ->
            Evergreen.V34.Cldr.ArTN

        Evergreen.V32.Cldr.ArYE ->
            Evergreen.V34.Cldr.ArYE

        Evergreen.V32.Cldr.As ->
            Evergreen.V34.Cldr.As

        Evergreen.V32.Cldr.Az ->
            Evergreen.V34.Cldr.Az

        Evergreen.V32.Cldr.AzLatn ->
            Evergreen.V34.Cldr.AzLatn

        Evergreen.V32.Cldr.Be ->
            Evergreen.V34.Cldr.Be

        Evergreen.V32.Cldr.BeTarask ->
            Evergreen.V34.Cldr.BeTarask

        Evergreen.V32.Cldr.Bg ->
            Evergreen.V34.Cldr.Bg

        Evergreen.V32.Cldr.Bn ->
            Evergreen.V34.Cldr.Bn

        Evergreen.V32.Cldr.BnIN ->
            Evergreen.V34.Cldr.BnIN

        Evergreen.V32.Cldr.Bs ->
            Evergreen.V34.Cldr.Bs

        Evergreen.V32.Cldr.BsLatn ->
            Evergreen.V34.Cldr.BsLatn

        Evergreen.V32.Cldr.Ca ->
            Evergreen.V34.Cldr.Ca

        Evergreen.V32.Cldr.CaAD ->
            Evergreen.V34.Cldr.CaAD

        Evergreen.V32.Cldr.CaESValencia ->
            Evergreen.V34.Cldr.CaESValencia

        Evergreen.V32.Cldr.CaFR ->
            Evergreen.V34.Cldr.CaFR

        Evergreen.V32.Cldr.CaIT ->
            Evergreen.V34.Cldr.CaIT

        Evergreen.V32.Cldr.Cs ->
            Evergreen.V34.Cldr.Cs

        Evergreen.V32.Cldr.Cy ->
            Evergreen.V34.Cldr.Cy

        Evergreen.V32.Cldr.Da ->
            Evergreen.V34.Cldr.Da

        Evergreen.V32.Cldr.DaGL ->
            Evergreen.V34.Cldr.DaGL

        Evergreen.V32.Cldr.De ->
            Evergreen.V34.Cldr.De

        Evergreen.V32.Cldr.DeAT ->
            Evergreen.V34.Cldr.DeAT

        Evergreen.V32.Cldr.DeBE ->
            Evergreen.V34.Cldr.DeBE

        Evergreen.V32.Cldr.DeCH ->
            Evergreen.V34.Cldr.DeCH

        Evergreen.V32.Cldr.DeIT ->
            Evergreen.V34.Cldr.DeIT

        Evergreen.V32.Cldr.DeLI ->
            Evergreen.V34.Cldr.DeLI

        Evergreen.V32.Cldr.DeLU ->
            Evergreen.V34.Cldr.DeLU

        Evergreen.V32.Cldr.El ->
            Evergreen.V34.Cldr.El

        Evergreen.V32.Cldr.ElCY ->
            Evergreen.V34.Cldr.ElCY

        Evergreen.V32.Cldr.ElPolyton ->
            Evergreen.V34.Cldr.ElPolyton

        Evergreen.V32.Cldr.En ->
            Evergreen.V34.Cldr.En

        Evergreen.V32.Cldr.En001 ->
            Evergreen.V34.Cldr.En001

        Evergreen.V32.Cldr.En150 ->
            Evergreen.V34.Cldr.En150

        Evergreen.V32.Cldr.EnAE ->
            Evergreen.V34.Cldr.EnAE

        Evergreen.V32.Cldr.EnAG ->
            Evergreen.V34.Cldr.EnAG

        Evergreen.V32.Cldr.EnAI ->
            Evergreen.V34.Cldr.EnAI

        Evergreen.V32.Cldr.EnAS ->
            Evergreen.V34.Cldr.EnAS

        Evergreen.V32.Cldr.EnAT ->
            Evergreen.V34.Cldr.EnAT

        Evergreen.V32.Cldr.EnAU ->
            Evergreen.V34.Cldr.EnAU

        Evergreen.V32.Cldr.EnBB ->
            Evergreen.V34.Cldr.EnBB

        Evergreen.V32.Cldr.EnBE ->
            Evergreen.V34.Cldr.EnBE

        Evergreen.V32.Cldr.EnBI ->
            Evergreen.V34.Cldr.EnBI

        Evergreen.V32.Cldr.EnBM ->
            Evergreen.V34.Cldr.EnBM

        Evergreen.V32.Cldr.EnBS ->
            Evergreen.V34.Cldr.EnBS

        Evergreen.V32.Cldr.EnBW ->
            Evergreen.V34.Cldr.EnBW

        Evergreen.V32.Cldr.EnBZ ->
            Evergreen.V34.Cldr.EnBZ

        Evergreen.V32.Cldr.EnCA ->
            Evergreen.V34.Cldr.EnCA

        Evergreen.V32.Cldr.EnCC ->
            Evergreen.V34.Cldr.EnCC

        Evergreen.V32.Cldr.EnCH ->
            Evergreen.V34.Cldr.EnCH

        Evergreen.V32.Cldr.EnCK ->
            Evergreen.V34.Cldr.EnCK

        Evergreen.V32.Cldr.EnCM ->
            Evergreen.V34.Cldr.EnCM

        Evergreen.V32.Cldr.EnCX ->
            Evergreen.V34.Cldr.EnCX

        Evergreen.V32.Cldr.EnCY ->
            Evergreen.V34.Cldr.EnCY

        Evergreen.V32.Cldr.EnDE ->
            Evergreen.V34.Cldr.EnDE

        Evergreen.V32.Cldr.EnDG ->
            Evergreen.V34.Cldr.EnDG

        Evergreen.V32.Cldr.EnDK ->
            Evergreen.V34.Cldr.EnDK

        Evergreen.V32.Cldr.EnDM ->
            Evergreen.V34.Cldr.EnDM

        Evergreen.V32.Cldr.EnER ->
            Evergreen.V34.Cldr.EnER

        Evergreen.V32.Cldr.EnFI ->
            Evergreen.V34.Cldr.EnFI

        Evergreen.V32.Cldr.EnFJ ->
            Evergreen.V34.Cldr.EnFJ

        Evergreen.V32.Cldr.EnFK ->
            Evergreen.V34.Cldr.EnFK

        Evergreen.V32.Cldr.EnFM ->
            Evergreen.V34.Cldr.EnFM

        Evergreen.V32.Cldr.EnGB ->
            Evergreen.V34.Cldr.EnGB

        Evergreen.V32.Cldr.EnGD ->
            Evergreen.V34.Cldr.EnGD

        Evergreen.V32.Cldr.EnGG ->
            Evergreen.V34.Cldr.EnGG

        Evergreen.V32.Cldr.EnGH ->
            Evergreen.V34.Cldr.EnGH

        Evergreen.V32.Cldr.EnGI ->
            Evergreen.V34.Cldr.EnGI

        Evergreen.V32.Cldr.EnGM ->
            Evergreen.V34.Cldr.EnGM

        Evergreen.V32.Cldr.EnGU ->
            Evergreen.V34.Cldr.EnGU

        Evergreen.V32.Cldr.EnGY ->
            Evergreen.V34.Cldr.EnGY

        Evergreen.V32.Cldr.EnHK ->
            Evergreen.V34.Cldr.EnHK

        Evergreen.V32.Cldr.EnIE ->
            Evergreen.V34.Cldr.EnIE

        Evergreen.V32.Cldr.EnIL ->
            Evergreen.V34.Cldr.EnIL

        Evergreen.V32.Cldr.EnIM ->
            Evergreen.V34.Cldr.EnIM

        Evergreen.V32.Cldr.EnIN ->
            Evergreen.V34.Cldr.EnIN

        Evergreen.V32.Cldr.EnIO ->
            Evergreen.V34.Cldr.EnIO

        Evergreen.V32.Cldr.EnJE ->
            Evergreen.V34.Cldr.EnJE

        Evergreen.V32.Cldr.EnJM ->
            Evergreen.V34.Cldr.EnJM

        Evergreen.V32.Cldr.EnKE ->
            Evergreen.V34.Cldr.EnKE

        Evergreen.V32.Cldr.EnKI ->
            Evergreen.V34.Cldr.EnKI

        Evergreen.V32.Cldr.EnKN ->
            Evergreen.V34.Cldr.EnKN

        Evergreen.V32.Cldr.EnKY ->
            Evergreen.V34.Cldr.EnKY

        Evergreen.V32.Cldr.EnLC ->
            Evergreen.V34.Cldr.EnLC

        Evergreen.V32.Cldr.EnLR ->
            Evergreen.V34.Cldr.EnLR

        Evergreen.V32.Cldr.EnLS ->
            Evergreen.V34.Cldr.EnLS

        Evergreen.V32.Cldr.EnMG ->
            Evergreen.V34.Cldr.EnMG

        Evergreen.V32.Cldr.EnMH ->
            Evergreen.V34.Cldr.EnMH

        Evergreen.V32.Cldr.EnMO ->
            Evergreen.V34.Cldr.EnMO

        Evergreen.V32.Cldr.EnMP ->
            Evergreen.V34.Cldr.EnMP

        Evergreen.V32.Cldr.EnMS ->
            Evergreen.V34.Cldr.EnMS

        Evergreen.V32.Cldr.EnMT ->
            Evergreen.V34.Cldr.EnMT

        Evergreen.V32.Cldr.EnMU ->
            Evergreen.V34.Cldr.EnMU

        Evergreen.V32.Cldr.EnMV ->
            Evergreen.V34.Cldr.EnMV

        Evergreen.V32.Cldr.EnMW ->
            Evergreen.V34.Cldr.EnMW

        Evergreen.V32.Cldr.EnMY ->
            Evergreen.V34.Cldr.EnMY

        Evergreen.V32.Cldr.EnNA ->
            Evergreen.V34.Cldr.EnNA

        Evergreen.V32.Cldr.EnNF ->
            Evergreen.V34.Cldr.EnNF

        Evergreen.V32.Cldr.EnNG ->
            Evergreen.V34.Cldr.EnNG

        Evergreen.V32.Cldr.EnNL ->
            Evergreen.V34.Cldr.EnNL

        Evergreen.V32.Cldr.EnNR ->
            Evergreen.V34.Cldr.EnNR

        Evergreen.V32.Cldr.EnNU ->
            Evergreen.V34.Cldr.EnNU

        Evergreen.V32.Cldr.EnNZ ->
            Evergreen.V34.Cldr.EnNZ

        Evergreen.V32.Cldr.EnPG ->
            Evergreen.V34.Cldr.EnPG

        Evergreen.V32.Cldr.EnPH ->
            Evergreen.V34.Cldr.EnPH

        Evergreen.V32.Cldr.EnPK ->
            Evergreen.V34.Cldr.EnPK

        Evergreen.V32.Cldr.EnPN ->
            Evergreen.V34.Cldr.EnPN

        Evergreen.V32.Cldr.EnPR ->
            Evergreen.V34.Cldr.EnPR

        Evergreen.V32.Cldr.EnPW ->
            Evergreen.V34.Cldr.EnPW

        Evergreen.V32.Cldr.EnRW ->
            Evergreen.V34.Cldr.EnRW

        Evergreen.V32.Cldr.EnSB ->
            Evergreen.V34.Cldr.EnSB

        Evergreen.V32.Cldr.EnSC ->
            Evergreen.V34.Cldr.EnSC

        Evergreen.V32.Cldr.EnSD ->
            Evergreen.V34.Cldr.EnSD

        Evergreen.V32.Cldr.EnSE ->
            Evergreen.V34.Cldr.EnSE

        Evergreen.V32.Cldr.EnSG ->
            Evergreen.V34.Cldr.EnSG

        Evergreen.V32.Cldr.EnSH ->
            Evergreen.V34.Cldr.EnSH

        Evergreen.V32.Cldr.EnSI ->
            Evergreen.V34.Cldr.EnSI

        Evergreen.V32.Cldr.EnSL ->
            Evergreen.V34.Cldr.EnSL

        Evergreen.V32.Cldr.EnSS ->
            Evergreen.V34.Cldr.EnSS

        Evergreen.V32.Cldr.EnSX ->
            Evergreen.V34.Cldr.EnSX

        Evergreen.V32.Cldr.EnSZ ->
            Evergreen.V34.Cldr.EnSZ

        Evergreen.V32.Cldr.EnTC ->
            Evergreen.V34.Cldr.EnTC

        Evergreen.V32.Cldr.EnTK ->
            Evergreen.V34.Cldr.EnTK

        Evergreen.V32.Cldr.EnTO ->
            Evergreen.V34.Cldr.EnTO

        Evergreen.V32.Cldr.EnTT ->
            Evergreen.V34.Cldr.EnTT

        Evergreen.V32.Cldr.EnTV ->
            Evergreen.V34.Cldr.EnTV

        Evergreen.V32.Cldr.EnTZ ->
            Evergreen.V34.Cldr.EnTZ

        Evergreen.V32.Cldr.EnUG ->
            Evergreen.V34.Cldr.EnUG

        Evergreen.V32.Cldr.EnUM ->
            Evergreen.V34.Cldr.EnUM

        Evergreen.V32.Cldr.EnVC ->
            Evergreen.V34.Cldr.EnVC

        Evergreen.V32.Cldr.EnVG ->
            Evergreen.V34.Cldr.EnVG

        Evergreen.V32.Cldr.EnVI ->
            Evergreen.V34.Cldr.EnVI

        Evergreen.V32.Cldr.EnVU ->
            Evergreen.V34.Cldr.EnVU

        Evergreen.V32.Cldr.EnWS ->
            Evergreen.V34.Cldr.EnWS

        Evergreen.V32.Cldr.EnZA ->
            Evergreen.V34.Cldr.EnZA

        Evergreen.V32.Cldr.EnZM ->
            Evergreen.V34.Cldr.EnZM

        Evergreen.V32.Cldr.EnZW ->
            Evergreen.V34.Cldr.EnZW

        Evergreen.V32.Cldr.Es ->
            Evergreen.V34.Cldr.Es

        Evergreen.V32.Cldr.Es419 ->
            Evergreen.V34.Cldr.Es419

        Evergreen.V32.Cldr.EsAR ->
            Evergreen.V34.Cldr.EsAR

        Evergreen.V32.Cldr.EsBO ->
            Evergreen.V34.Cldr.EsBO

        Evergreen.V32.Cldr.EsBR ->
            Evergreen.V34.Cldr.EsBR

        Evergreen.V32.Cldr.EsBZ ->
            Evergreen.V34.Cldr.EsBZ

        Evergreen.V32.Cldr.EsCL ->
            Evergreen.V34.Cldr.EsCL

        Evergreen.V32.Cldr.EsCO ->
            Evergreen.V34.Cldr.EsCO

        Evergreen.V32.Cldr.EsCR ->
            Evergreen.V34.Cldr.EsCR

        Evergreen.V32.Cldr.EsCU ->
            Evergreen.V34.Cldr.EsCU

        Evergreen.V32.Cldr.EsDO ->
            Evergreen.V34.Cldr.EsDO

        Evergreen.V32.Cldr.EsEA ->
            Evergreen.V34.Cldr.EsEA

        Evergreen.V32.Cldr.EsEC ->
            Evergreen.V34.Cldr.EsEC

        Evergreen.V32.Cldr.EsGQ ->
            Evergreen.V34.Cldr.EsGQ

        Evergreen.V32.Cldr.EsGT ->
            Evergreen.V34.Cldr.EsGT

        Evergreen.V32.Cldr.EsHN ->
            Evergreen.V34.Cldr.EsHN

        Evergreen.V32.Cldr.EsIC ->
            Evergreen.V34.Cldr.EsIC

        Evergreen.V32.Cldr.EsMX ->
            Evergreen.V34.Cldr.EsMX

        Evergreen.V32.Cldr.EsNI ->
            Evergreen.V34.Cldr.EsNI

        Evergreen.V32.Cldr.EsPA ->
            Evergreen.V34.Cldr.EsPA

        Evergreen.V32.Cldr.EsPE ->
            Evergreen.V34.Cldr.EsPE

        Evergreen.V32.Cldr.EsPH ->
            Evergreen.V34.Cldr.EsPH

        Evergreen.V32.Cldr.EsPR ->
            Evergreen.V34.Cldr.EsPR

        Evergreen.V32.Cldr.EsPY ->
            Evergreen.V34.Cldr.EsPY

        Evergreen.V32.Cldr.EsSV ->
            Evergreen.V34.Cldr.EsSV

        Evergreen.V32.Cldr.EsUS ->
            Evergreen.V34.Cldr.EsUS

        Evergreen.V32.Cldr.EsUY ->
            Evergreen.V34.Cldr.EsUY

        Evergreen.V32.Cldr.EsVE ->
            Evergreen.V34.Cldr.EsVE

        Evergreen.V32.Cldr.Et ->
            Evergreen.V34.Cldr.Et

        Evergreen.V32.Cldr.Eu ->
            Evergreen.V34.Cldr.Eu

        Evergreen.V32.Cldr.Fa ->
            Evergreen.V34.Cldr.Fa

        Evergreen.V32.Cldr.FaAF ->
            Evergreen.V34.Cldr.FaAF

        Evergreen.V32.Cldr.Fi ->
            Evergreen.V34.Cldr.Fi

        Evergreen.V32.Cldr.Fil ->
            Evergreen.V34.Cldr.Fil

        Evergreen.V32.Cldr.Fr ->
            Evergreen.V34.Cldr.Fr

        Evergreen.V32.Cldr.FrBE ->
            Evergreen.V34.Cldr.FrBE

        Evergreen.V32.Cldr.FrBF ->
            Evergreen.V34.Cldr.FrBF

        Evergreen.V32.Cldr.FrBI ->
            Evergreen.V34.Cldr.FrBI

        Evergreen.V32.Cldr.FrBJ ->
            Evergreen.V34.Cldr.FrBJ

        Evergreen.V32.Cldr.FrBL ->
            Evergreen.V34.Cldr.FrBL

        Evergreen.V32.Cldr.FrCA ->
            Evergreen.V34.Cldr.FrCA

        Evergreen.V32.Cldr.FrCD ->
            Evergreen.V34.Cldr.FrCD

        Evergreen.V32.Cldr.FrCF ->
            Evergreen.V34.Cldr.FrCF

        Evergreen.V32.Cldr.FrCG ->
            Evergreen.V34.Cldr.FrCG

        Evergreen.V32.Cldr.FrCH ->
            Evergreen.V34.Cldr.FrCH

        Evergreen.V32.Cldr.FrCI ->
            Evergreen.V34.Cldr.FrCI

        Evergreen.V32.Cldr.FrCM ->
            Evergreen.V34.Cldr.FrCM

        Evergreen.V32.Cldr.FrDJ ->
            Evergreen.V34.Cldr.FrDJ

        Evergreen.V32.Cldr.FrDZ ->
            Evergreen.V34.Cldr.FrDZ

        Evergreen.V32.Cldr.FrGA ->
            Evergreen.V34.Cldr.FrGA

        Evergreen.V32.Cldr.FrGF ->
            Evergreen.V34.Cldr.FrGF

        Evergreen.V32.Cldr.FrGN ->
            Evergreen.V34.Cldr.FrGN

        Evergreen.V32.Cldr.FrGP ->
            Evergreen.V34.Cldr.FrGP

        Evergreen.V32.Cldr.FrGQ ->
            Evergreen.V34.Cldr.FrGQ

        Evergreen.V32.Cldr.FrHT ->
            Evergreen.V34.Cldr.FrHT

        Evergreen.V32.Cldr.FrKM ->
            Evergreen.V34.Cldr.FrKM

        Evergreen.V32.Cldr.FrLU ->
            Evergreen.V34.Cldr.FrLU

        Evergreen.V32.Cldr.FrMA ->
            Evergreen.V34.Cldr.FrMA

        Evergreen.V32.Cldr.FrMC ->
            Evergreen.V34.Cldr.FrMC

        Evergreen.V32.Cldr.FrMF ->
            Evergreen.V34.Cldr.FrMF

        Evergreen.V32.Cldr.FrMG ->
            Evergreen.V34.Cldr.FrMG

        Evergreen.V32.Cldr.FrML ->
            Evergreen.V34.Cldr.FrML

        Evergreen.V32.Cldr.FrMQ ->
            Evergreen.V34.Cldr.FrMQ

        Evergreen.V32.Cldr.FrMR ->
            Evergreen.V34.Cldr.FrMR

        Evergreen.V32.Cldr.FrMU ->
            Evergreen.V34.Cldr.FrMU

        Evergreen.V32.Cldr.FrNC ->
            Evergreen.V34.Cldr.FrNC

        Evergreen.V32.Cldr.FrNE ->
            Evergreen.V34.Cldr.FrNE

        Evergreen.V32.Cldr.FrPF ->
            Evergreen.V34.Cldr.FrPF

        Evergreen.V32.Cldr.FrPM ->
            Evergreen.V34.Cldr.FrPM

        Evergreen.V32.Cldr.FrRE ->
            Evergreen.V34.Cldr.FrRE

        Evergreen.V32.Cldr.FrRW ->
            Evergreen.V34.Cldr.FrRW

        Evergreen.V32.Cldr.FrSC ->
            Evergreen.V34.Cldr.FrSC

        Evergreen.V32.Cldr.FrSN ->
            Evergreen.V34.Cldr.FrSN

        Evergreen.V32.Cldr.FrSY ->
            Evergreen.V34.Cldr.FrSY

        Evergreen.V32.Cldr.FrTD ->
            Evergreen.V34.Cldr.FrTD

        Evergreen.V32.Cldr.FrTG ->
            Evergreen.V34.Cldr.FrTG

        Evergreen.V32.Cldr.FrTN ->
            Evergreen.V34.Cldr.FrTN

        Evergreen.V32.Cldr.FrVU ->
            Evergreen.V34.Cldr.FrVU

        Evergreen.V32.Cldr.FrWF ->
            Evergreen.V34.Cldr.FrWF

        Evergreen.V32.Cldr.FrYT ->
            Evergreen.V34.Cldr.FrYT

        Evergreen.V32.Cldr.Ga ->
            Evergreen.V34.Cldr.Ga

        Evergreen.V32.Cldr.GaGB ->
            Evergreen.V34.Cldr.GaGB

        Evergreen.V32.Cldr.Gd ->
            Evergreen.V34.Cldr.Gd

        Evergreen.V32.Cldr.Gl ->
            Evergreen.V34.Cldr.Gl

        Evergreen.V32.Cldr.Gu ->
            Evergreen.V34.Cldr.Gu

        Evergreen.V32.Cldr.Ha ->
            Evergreen.V34.Cldr.Ha

        Evergreen.V32.Cldr.HaGH ->
            Evergreen.V34.Cldr.HaGH

        Evergreen.V32.Cldr.HaNE ->
            Evergreen.V34.Cldr.HaNE

        Evergreen.V32.Cldr.He ->
            Evergreen.V34.Cldr.He

        Evergreen.V32.Cldr.Hi ->
            Evergreen.V34.Cldr.Hi

        Evergreen.V32.Cldr.HiLatn ->
            Evergreen.V34.Cldr.HiLatn

        Evergreen.V32.Cldr.Hr ->
            Evergreen.V34.Cldr.Hr

        Evergreen.V32.Cldr.HrBA ->
            Evergreen.V34.Cldr.HrBA

        Evergreen.V32.Cldr.Hu ->
            Evergreen.V34.Cldr.Hu

        Evergreen.V32.Cldr.Hy ->
            Evergreen.V34.Cldr.Hy

        Evergreen.V32.Cldr.Id ->
            Evergreen.V34.Cldr.Id

        Evergreen.V32.Cldr.Ig ->
            Evergreen.V34.Cldr.Ig

        Evergreen.V32.Cldr.Is ->
            Evergreen.V34.Cldr.Is

        Evergreen.V32.Cldr.It ->
            Evergreen.V34.Cldr.It

        Evergreen.V32.Cldr.ItCH ->
            Evergreen.V34.Cldr.ItCH

        Evergreen.V32.Cldr.ItSM ->
            Evergreen.V34.Cldr.ItSM

        Evergreen.V32.Cldr.ItVA ->
            Evergreen.V34.Cldr.ItVA

        Evergreen.V32.Cldr.Ja ->
            Evergreen.V34.Cldr.Ja

        Evergreen.V32.Cldr.Jv ->
            Evergreen.V34.Cldr.Jv

        Evergreen.V32.Cldr.Ka ->
            Evergreen.V34.Cldr.Ka

        Evergreen.V32.Cldr.Kk ->
            Evergreen.V34.Cldr.Kk

        Evergreen.V32.Cldr.Km ->
            Evergreen.V34.Cldr.Km

        Evergreen.V32.Cldr.Kn ->
            Evergreen.V34.Cldr.Kn

        Evergreen.V32.Cldr.Ko ->
            Evergreen.V34.Cldr.Ko

        Evergreen.V32.Cldr.KoKP ->
            Evergreen.V34.Cldr.KoKP

        Evergreen.V32.Cldr.Kok ->
            Evergreen.V34.Cldr.Kok

        Evergreen.V32.Cldr.Ky ->
            Evergreen.V34.Cldr.Ky

        Evergreen.V32.Cldr.Lo ->
            Evergreen.V34.Cldr.Lo

        Evergreen.V32.Cldr.Lt ->
            Evergreen.V34.Cldr.Lt

        Evergreen.V32.Cldr.Lv ->
            Evergreen.V34.Cldr.Lv

        Evergreen.V32.Cldr.Mk ->
            Evergreen.V34.Cldr.Mk

        Evergreen.V32.Cldr.Ml ->
            Evergreen.V34.Cldr.Ml

        Evergreen.V32.Cldr.Mn ->
            Evergreen.V34.Cldr.Mn

        Evergreen.V32.Cldr.Mr ->
            Evergreen.V34.Cldr.Mr

        Evergreen.V32.Cldr.Ms ->
            Evergreen.V34.Cldr.Ms

        Evergreen.V32.Cldr.MsBN ->
            Evergreen.V34.Cldr.MsBN

        Evergreen.V32.Cldr.MsID ->
            Evergreen.V34.Cldr.MsID

        Evergreen.V32.Cldr.MsSG ->
            Evergreen.V34.Cldr.MsSG

        Evergreen.V32.Cldr.My ->
            Evergreen.V34.Cldr.My

        Evergreen.V32.Cldr.Nb ->
            Evergreen.V34.Cldr.Nb

        Evergreen.V32.Cldr.NbSJ ->
            Evergreen.V34.Cldr.NbSJ

        Evergreen.V32.Cldr.Ne ->
            Evergreen.V34.Cldr.Ne

        Evergreen.V32.Cldr.NeIN ->
            Evergreen.V34.Cldr.NeIN

        Evergreen.V32.Cldr.Nl ->
            Evergreen.V34.Cldr.Nl

        Evergreen.V32.Cldr.NlAW ->
            Evergreen.V34.Cldr.NlAW

        Evergreen.V32.Cldr.NlBE ->
            Evergreen.V34.Cldr.NlBE

        Evergreen.V32.Cldr.NlBQ ->
            Evergreen.V34.Cldr.NlBQ

        Evergreen.V32.Cldr.NlCW ->
            Evergreen.V34.Cldr.NlCW

        Evergreen.V32.Cldr.NlSR ->
            Evergreen.V34.Cldr.NlSR

        Evergreen.V32.Cldr.NlSX ->
            Evergreen.V34.Cldr.NlSX

        Evergreen.V32.Cldr.Nn ->
            Evergreen.V34.Cldr.Nn

        Evergreen.V32.Cldr.No ->
            Evergreen.V34.Cldr.No

        Evergreen.V32.Cldr.Or ->
            Evergreen.V34.Cldr.Or

        Evergreen.V32.Cldr.Pa ->
            Evergreen.V34.Cldr.Pa

        Evergreen.V32.Cldr.PaGuru ->
            Evergreen.V34.Cldr.PaGuru

        Evergreen.V32.Cldr.Pcm ->
            Evergreen.V34.Cldr.Pcm

        Evergreen.V32.Cldr.Pl ->
            Evergreen.V34.Cldr.Pl

        Evergreen.V32.Cldr.Ps ->
            Evergreen.V34.Cldr.Ps

        Evergreen.V32.Cldr.PsPK ->
            Evergreen.V34.Cldr.PsPK

        Evergreen.V32.Cldr.Pt ->
            Evergreen.V34.Cldr.Pt

        Evergreen.V32.Cldr.PtAO ->
            Evergreen.V34.Cldr.PtAO

        Evergreen.V32.Cldr.PtCH ->
            Evergreen.V34.Cldr.PtCH

        Evergreen.V32.Cldr.PtCV ->
            Evergreen.V34.Cldr.PtCV

        Evergreen.V32.Cldr.PtGQ ->
            Evergreen.V34.Cldr.PtGQ

        Evergreen.V32.Cldr.PtGW ->
            Evergreen.V34.Cldr.PtGW

        Evergreen.V32.Cldr.PtLU ->
            Evergreen.V34.Cldr.PtLU

        Evergreen.V32.Cldr.PtMO ->
            Evergreen.V34.Cldr.PtMO

        Evergreen.V32.Cldr.PtMZ ->
            Evergreen.V34.Cldr.PtMZ

        Evergreen.V32.Cldr.PtPT ->
            Evergreen.V34.Cldr.PtPT

        Evergreen.V32.Cldr.PtST ->
            Evergreen.V34.Cldr.PtST

        Evergreen.V32.Cldr.PtTL ->
            Evergreen.V34.Cldr.PtTL

        Evergreen.V32.Cldr.Ro ->
            Evergreen.V34.Cldr.Ro

        Evergreen.V32.Cldr.RoMD ->
            Evergreen.V34.Cldr.RoMD

        Evergreen.V32.Cldr.Ru ->
            Evergreen.V34.Cldr.Ru

        Evergreen.V32.Cldr.RuBY ->
            Evergreen.V34.Cldr.RuBY

        Evergreen.V32.Cldr.RuKG ->
            Evergreen.V34.Cldr.RuKG

        Evergreen.V32.Cldr.RuKZ ->
            Evergreen.V34.Cldr.RuKZ

        Evergreen.V32.Cldr.RuMD ->
            Evergreen.V34.Cldr.RuMD

        Evergreen.V32.Cldr.RuUA ->
            Evergreen.V34.Cldr.RuUA

        Evergreen.V32.Cldr.Sd ->
            Evergreen.V34.Cldr.Sd

        Evergreen.V32.Cldr.SdArab ->
            Evergreen.V34.Cldr.SdArab

        Evergreen.V32.Cldr.Si ->
            Evergreen.V34.Cldr.Si

        Evergreen.V32.Cldr.Sk ->
            Evergreen.V34.Cldr.Sk

        Evergreen.V32.Cldr.Sl ->
            Evergreen.V34.Cldr.Sl

        Evergreen.V32.Cldr.So ->
            Evergreen.V34.Cldr.So

        Evergreen.V32.Cldr.SoDJ ->
            Evergreen.V34.Cldr.SoDJ

        Evergreen.V32.Cldr.SoET ->
            Evergreen.V34.Cldr.SoET

        Evergreen.V32.Cldr.SoKE ->
            Evergreen.V34.Cldr.SoKE

        Evergreen.V32.Cldr.Sq ->
            Evergreen.V34.Cldr.Sq

        Evergreen.V32.Cldr.SqMK ->
            Evergreen.V34.Cldr.SqMK

        Evergreen.V32.Cldr.SqXK ->
            Evergreen.V34.Cldr.SqXK

        Evergreen.V32.Cldr.Sr ->
            Evergreen.V34.Cldr.Sr

        Evergreen.V32.Cldr.SrCyrl ->
            Evergreen.V34.Cldr.SrCyrl

        Evergreen.V32.Cldr.SrCyrlBA ->
            Evergreen.V34.Cldr.SrCyrlBA

        Evergreen.V32.Cldr.SrCyrlME ->
            Evergreen.V34.Cldr.SrCyrlME

        Evergreen.V32.Cldr.SrCyrlXK ->
            Evergreen.V34.Cldr.SrCyrlXK

        Evergreen.V32.Cldr.SrLatn ->
            Evergreen.V34.Cldr.SrLatn

        Evergreen.V32.Cldr.SrLatnBA ->
            Evergreen.V34.Cldr.SrLatnBA

        Evergreen.V32.Cldr.SrLatnME ->
            Evergreen.V34.Cldr.SrLatnME

        Evergreen.V32.Cldr.SrLatnXK ->
            Evergreen.V34.Cldr.SrLatnXK

        Evergreen.V32.Cldr.Sv ->
            Evergreen.V34.Cldr.Sv

        Evergreen.V32.Cldr.SvAX ->
            Evergreen.V34.Cldr.SvAX

        Evergreen.V32.Cldr.SvFI ->
            Evergreen.V34.Cldr.SvFI

        Evergreen.V32.Cldr.Sw ->
            Evergreen.V34.Cldr.Sw

        Evergreen.V32.Cldr.SwCD ->
            Evergreen.V34.Cldr.SwCD

        Evergreen.V32.Cldr.SwKE ->
            Evergreen.V34.Cldr.SwKE

        Evergreen.V32.Cldr.SwUG ->
            Evergreen.V34.Cldr.SwUG

        Evergreen.V32.Cldr.Ta ->
            Evergreen.V34.Cldr.Ta

        Evergreen.V32.Cldr.TaLK ->
            Evergreen.V34.Cldr.TaLK

        Evergreen.V32.Cldr.TaMY ->
            Evergreen.V34.Cldr.TaMY

        Evergreen.V32.Cldr.TaSG ->
            Evergreen.V34.Cldr.TaSG

        Evergreen.V32.Cldr.Te ->
            Evergreen.V34.Cldr.Te

        Evergreen.V32.Cldr.Th ->
            Evergreen.V34.Cldr.Th

        Evergreen.V32.Cldr.Tk ->
            Evergreen.V34.Cldr.Tk

        Evergreen.V32.Cldr.Tr ->
            Evergreen.V34.Cldr.Tr

        Evergreen.V32.Cldr.TrCY ->
            Evergreen.V34.Cldr.TrCY

        Evergreen.V32.Cldr.Uk ->
            Evergreen.V34.Cldr.Uk

        Evergreen.V32.Cldr.Ur ->
            Evergreen.V34.Cldr.Ur

        Evergreen.V32.Cldr.UrIN ->
            Evergreen.V34.Cldr.UrIN

        Evergreen.V32.Cldr.Uz ->
            Evergreen.V34.Cldr.Uz

        Evergreen.V32.Cldr.UzLatn ->
            Evergreen.V34.Cldr.UzLatn

        Evergreen.V32.Cldr.Vi ->
            Evergreen.V34.Cldr.Vi

        Evergreen.V32.Cldr.Yo ->
            Evergreen.V34.Cldr.Yo

        Evergreen.V32.Cldr.YoBJ ->
            Evergreen.V34.Cldr.YoBJ

        Evergreen.V32.Cldr.Yue ->
            Evergreen.V34.Cldr.Yue

        Evergreen.V32.Cldr.YueHans ->
            Evergreen.V34.Cldr.YueHans

        Evergreen.V32.Cldr.YueHant ->
            Evergreen.V34.Cldr.YueHant

        Evergreen.V32.Cldr.Zh ->
            Evergreen.V34.Cldr.Zh

        Evergreen.V32.Cldr.ZhHans ->
            Evergreen.V34.Cldr.ZhHans

        Evergreen.V32.Cldr.ZhHansHK ->
            Evergreen.V34.Cldr.ZhHansHK

        Evergreen.V32.Cldr.ZhHansMO ->
            Evergreen.V34.Cldr.ZhHansMO

        Evergreen.V32.Cldr.ZhHansSG ->
            Evergreen.V34.Cldr.ZhHansSG

        Evergreen.V32.Cldr.ZhHant ->
            Evergreen.V34.Cldr.ZhHant

        Evergreen.V32.Cldr.ZhHantHK ->
            Evergreen.V34.Cldr.ZhHantHK

        Evergreen.V32.Cldr.ZhHantMO ->
            Evergreen.V34.Cldr.ZhHantMO

        Evergreen.V32.Cldr.Zu ->
            Evergreen.V34.Cldr.Zu


migrate_Pages_Home__Msg : Evergreen.V32.Pages.Home_.Msg -> Evergreen.V34.Pages.Home_.Msg
migrate_Pages_Home__Msg old =
    case old of
        Evergreen.V32.Pages.Home_.Play ->
            Evergreen.V34.Pages.Home_.Play

        Evergreen.V32.Pages.Home_.ChangeOptions p0 ->
            Evergreen.V34.Pages.Home_.ChangeOptions (p0 |> migrate_Shared_Model_GameOptions)

        Evergreen.V32.Pages.Home_.ChangingLocale p0 ->
            Evergreen.V34.Pages.Home_.ChangingLocale p0

        Evergreen.V32.Pages.Home_.Locale p0 ->
            Evergreen.V34.Pages.Home_.Locale (p0 |> migrate_Cldr_Locale)


migrate_Shared_Model_Country : Evergreen.V32.Shared.Model.Country -> Evergreen.V34.Shared.Model.Country
migrate_Shared_Model_Country old =
    case old of
        Evergreen.V32.Shared.Model.Iso3166 p0 ->
            Evergreen.V34.Shared.Model.Iso3166 (p0 |> migrate_Cldr_CountryCode)

        Evergreen.V32.Shared.Model.PartiallyRecognized p0 ->
            Evergreen.V34.Shared.Model.PartiallyRecognized p0


migrate_Shared_Model_Difficulty : Evergreen.V32.Shared.Model.Difficulty -> Evergreen.V34.Shared.Model.Difficulty
migrate_Shared_Model_Difficulty old =
    case old of
        Evergreen.V32.Shared.Model.Easy ->
            Evergreen.V34.Shared.Model.Easy

        Evergreen.V32.Shared.Model.Normal ->
            Evergreen.V34.Shared.Model.Normal

        Evergreen.V32.Shared.Model.Hard ->
            Evergreen.V34.Shared.Model.Hard


migrate_Shared_Model_GameOptions : Evergreen.V32.Shared.Model.GameOptions -> Evergreen.V34.Shared.Model.GameOptions
migrate_Shared_Model_GameOptions old =
    { gameLength = old.gameLength
    , difficulty = old.difficulty |> migrate_Shared_Model_Difficulty
    , answersPerCard = old.answersPerCard
    , guessPatterns = old.guessPatterns |> List.map (Tuple.mapBoth migrate_Shared_Model_Property migrate_Shared_Model_Property)
    , sovereignOnly = old.sovereignOnly
    }


migrate_Shared_Model_Property : Evergreen.V32.Shared.Model.Property -> Evergreen.V34.Shared.Model.Property
migrate_Shared_Model_Property old =
    case old of
        Evergreen.V32.Shared.Model.Flag ->
            Evergreen.V34.Shared.Model.Flag

        Evergreen.V32.Shared.Model.Name ->
            Evergreen.V34.Shared.Model.Name


migrate_Shared_Msg : Evergreen.V32.Shared.Msg -> Evergreen.V34.Shared.Msg
migrate_Shared_Msg old =
    old |> migrate_Shared_Msg_Msg


migrate_Shared_Msg_Msg : Evergreen.V32.Shared.Msg.Msg -> Evergreen.V34.Shared.Msg.Msg
migrate_Shared_Msg_Msg old =
    case old of
        Evergreen.V32.Shared.Msg.Seed p0 ->
            Evergreen.V34.Shared.Msg.Seed p0

        Evergreen.V32.Shared.Msg.Locale p0 ->
            Evergreen.V34.Shared.Msg.Locale (p0 |> migrate_Cldr_Locale)

        Evergreen.V32.Shared.Msg.ChangeOptions p0 ->
            Evergreen.V34.Shared.Msg.ChangeOptions (p0 |> migrate_Shared_Model_GameOptions)

        Evergreen.V32.Shared.Msg.Play ->
            Evergreen.V34.Shared.Msg.Play

        Evergreen.V32.Shared.Msg.Finished p0 ->
            Evergreen.V34.Shared.Msg.Finished p0
