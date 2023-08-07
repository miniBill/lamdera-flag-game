module Evergreen.Migrate.V36 exposing (..)

import Evergreen.V34.Cldr
import Evergreen.V34.Main
import Evergreen.V34.Main.Pages.Model
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
import Evergreen.V36.Cldr
import Evergreen.V36.Main
import Evergreen.V36.Main.Pages.Model
import Evergreen.V36.Main.Pages.Msg
import Evergreen.V36.Pages.Finished
import Evergreen.V36.Pages.Home_
import Evergreen.V36.Pages.NotFound_
import Evergreen.V36.Pages.Play
import Evergreen.V36.Pages.Sort
import Evergreen.V36.Shared
import Evergreen.V36.Shared.Model
import Evergreen.V36.Shared.Msg
import Evergreen.V36.Types
import Lamdera.Migrations exposing (..)
import List
import Maybe


frontendModel : Evergreen.V34.Types.FrontendModel -> ModelMigration Evergreen.V36.Types.FrontendModel Evergreen.V36.Types.FrontendMsg
frontendModel old =
    ModelMigrated ( migrate_Types_FrontendModel old, Cmd.none )


backendModel : Evergreen.V34.Types.BackendModel -> ModelMigration Evergreen.V36.Types.BackendModel Evergreen.V36.Types.BackendMsg
backendModel old =
    ModelUnchanged


frontendMsg : Evergreen.V34.Types.FrontendMsg -> MsgMigration Evergreen.V36.Types.FrontendMsg Evergreen.V36.Types.FrontendMsg
frontendMsg old =
    MsgUnchanged


toBackend : Evergreen.V34.Types.ToBackend -> MsgMigration Evergreen.V36.Types.ToBackend Evergreen.V36.Types.BackendMsg
toBackend old =
    MsgUnchanged


backendMsg : Evergreen.V34.Types.BackendMsg -> MsgMigration Evergreen.V36.Types.BackendMsg Evergreen.V36.Types.BackendMsg
backendMsg old =
    MsgUnchanged


toFrontend : Evergreen.V34.Types.ToFrontend -> MsgMigration Evergreen.V36.Types.ToFrontend Evergreen.V36.Types.FrontendMsg
toFrontend old =
    MsgUnchanged


migrate_Types_FrontendModel : Evergreen.V34.Types.FrontendModel -> Evergreen.V36.Types.FrontendModel
migrate_Types_FrontendModel old =
    old |> migrate_Main_Model


migrate_Cldr_CountryCode : Evergreen.V34.Cldr.CountryCode -> Evergreen.V36.Cldr.CountryCode
migrate_Cldr_CountryCode old =
    case old of
        Evergreen.V34.Cldr.AD ->
            Evergreen.V36.Cldr.AD

        Evergreen.V34.Cldr.AE ->
            Evergreen.V36.Cldr.AE

        Evergreen.V34.Cldr.AF ->
            Evergreen.V36.Cldr.AF

        Evergreen.V34.Cldr.AG ->
            Evergreen.V36.Cldr.AG

        Evergreen.V34.Cldr.AI ->
            Evergreen.V36.Cldr.AI

        Evergreen.V34.Cldr.AL ->
            Evergreen.V36.Cldr.AL

        Evergreen.V34.Cldr.AM ->
            Evergreen.V36.Cldr.AM

        Evergreen.V34.Cldr.AO ->
            Evergreen.V36.Cldr.AO

        Evergreen.V34.Cldr.AQ ->
            Evergreen.V36.Cldr.AQ

        Evergreen.V34.Cldr.AR ->
            Evergreen.V36.Cldr.AR

        Evergreen.V34.Cldr.AS ->
            Evergreen.V36.Cldr.AS

        Evergreen.V34.Cldr.AT ->
            Evergreen.V36.Cldr.AT

        Evergreen.V34.Cldr.AU ->
            Evergreen.V36.Cldr.AU

        Evergreen.V34.Cldr.AW ->
            Evergreen.V36.Cldr.AW

        Evergreen.V34.Cldr.AX ->
            Evergreen.V36.Cldr.AX

        Evergreen.V34.Cldr.AZ ->
            Evergreen.V36.Cldr.AZ

        Evergreen.V34.Cldr.BA ->
            Evergreen.V36.Cldr.BA

        Evergreen.V34.Cldr.BB ->
            Evergreen.V36.Cldr.BB

        Evergreen.V34.Cldr.BD ->
            Evergreen.V36.Cldr.BD

        Evergreen.V34.Cldr.BE ->
            Evergreen.V36.Cldr.BE

        Evergreen.V34.Cldr.BF ->
            Evergreen.V36.Cldr.BF

        Evergreen.V34.Cldr.BG ->
            Evergreen.V36.Cldr.BG

        Evergreen.V34.Cldr.BH ->
            Evergreen.V36.Cldr.BH

        Evergreen.V34.Cldr.BI ->
            Evergreen.V36.Cldr.BI

        Evergreen.V34.Cldr.BJ ->
            Evergreen.V36.Cldr.BJ

        Evergreen.V34.Cldr.BL ->
            Evergreen.V36.Cldr.BL

        Evergreen.V34.Cldr.BM ->
            Evergreen.V36.Cldr.BM

        Evergreen.V34.Cldr.BN ->
            Evergreen.V36.Cldr.BN

        Evergreen.V34.Cldr.BO ->
            Evergreen.V36.Cldr.BO

        Evergreen.V34.Cldr.BQ ->
            Evergreen.V36.Cldr.BQ

        Evergreen.V34.Cldr.BR ->
            Evergreen.V36.Cldr.BR

        Evergreen.V34.Cldr.BS ->
            Evergreen.V36.Cldr.BS

        Evergreen.V34.Cldr.BT ->
            Evergreen.V36.Cldr.BT

        Evergreen.V34.Cldr.BV ->
            Evergreen.V36.Cldr.BV

        Evergreen.V34.Cldr.BW ->
            Evergreen.V36.Cldr.BW

        Evergreen.V34.Cldr.BY ->
            Evergreen.V36.Cldr.BY

        Evergreen.V34.Cldr.BZ ->
            Evergreen.V36.Cldr.BZ

        Evergreen.V34.Cldr.CA ->
            Evergreen.V36.Cldr.CA

        Evergreen.V34.Cldr.CC ->
            Evergreen.V36.Cldr.CC

        Evergreen.V34.Cldr.CD ->
            Evergreen.V36.Cldr.CD

        Evergreen.V34.Cldr.CF ->
            Evergreen.V36.Cldr.CF

        Evergreen.V34.Cldr.CG ->
            Evergreen.V36.Cldr.CG

        Evergreen.V34.Cldr.CH ->
            Evergreen.V36.Cldr.CH

        Evergreen.V34.Cldr.CI ->
            Evergreen.V36.Cldr.CI

        Evergreen.V34.Cldr.CK ->
            Evergreen.V36.Cldr.CK

        Evergreen.V34.Cldr.CL ->
            Evergreen.V36.Cldr.CL

        Evergreen.V34.Cldr.CM ->
            Evergreen.V36.Cldr.CM

        Evergreen.V34.Cldr.CN ->
            Evergreen.V36.Cldr.CN

        Evergreen.V34.Cldr.CO ->
            Evergreen.V36.Cldr.CO

        Evergreen.V34.Cldr.CR ->
            Evergreen.V36.Cldr.CR

        Evergreen.V34.Cldr.CU ->
            Evergreen.V36.Cldr.CU

        Evergreen.V34.Cldr.CV ->
            Evergreen.V36.Cldr.CV

        Evergreen.V34.Cldr.CW ->
            Evergreen.V36.Cldr.CW

        Evergreen.V34.Cldr.CX ->
            Evergreen.V36.Cldr.CX

        Evergreen.V34.Cldr.CY ->
            Evergreen.V36.Cldr.CY

        Evergreen.V34.Cldr.CZ ->
            Evergreen.V36.Cldr.CZ

        Evergreen.V34.Cldr.DE ->
            Evergreen.V36.Cldr.DE

        Evergreen.V34.Cldr.DJ ->
            Evergreen.V36.Cldr.DJ

        Evergreen.V34.Cldr.DK ->
            Evergreen.V36.Cldr.DK

        Evergreen.V34.Cldr.DM ->
            Evergreen.V36.Cldr.DM

        Evergreen.V34.Cldr.DO ->
            Evergreen.V36.Cldr.DO

        Evergreen.V34.Cldr.DZ ->
            Evergreen.V36.Cldr.DZ

        Evergreen.V34.Cldr.EC ->
            Evergreen.V36.Cldr.EC

        Evergreen.V34.Cldr.EE ->
            Evergreen.V36.Cldr.EE

        Evergreen.V34.Cldr.EG ->
            Evergreen.V36.Cldr.EG

        Evergreen.V34.Cldr.EH ->
            Evergreen.V36.Cldr.EH

        Evergreen.V34.Cldr.ER ->
            Evergreen.V36.Cldr.ER

        Evergreen.V34.Cldr.ES ->
            Evergreen.V36.Cldr.ES

        Evergreen.V34.Cldr.ET ->
            Evergreen.V36.Cldr.ET

        Evergreen.V34.Cldr.FI ->
            Evergreen.V36.Cldr.FI

        Evergreen.V34.Cldr.FJ ->
            Evergreen.V36.Cldr.FJ

        Evergreen.V34.Cldr.FK ->
            Evergreen.V36.Cldr.FK

        Evergreen.V34.Cldr.FM ->
            Evergreen.V36.Cldr.FM

        Evergreen.V34.Cldr.FO ->
            Evergreen.V36.Cldr.FO

        Evergreen.V34.Cldr.FR ->
            Evergreen.V36.Cldr.FR

        Evergreen.V34.Cldr.GA ->
            Evergreen.V36.Cldr.GA

        Evergreen.V34.Cldr.GB ->
            Evergreen.V36.Cldr.GB

        Evergreen.V34.Cldr.GD ->
            Evergreen.V36.Cldr.GD

        Evergreen.V34.Cldr.GE ->
            Evergreen.V36.Cldr.GE

        Evergreen.V34.Cldr.GF ->
            Evergreen.V36.Cldr.GF

        Evergreen.V34.Cldr.GG ->
            Evergreen.V36.Cldr.GG

        Evergreen.V34.Cldr.GH ->
            Evergreen.V36.Cldr.GH

        Evergreen.V34.Cldr.GI ->
            Evergreen.V36.Cldr.GI

        Evergreen.V34.Cldr.GL ->
            Evergreen.V36.Cldr.GL

        Evergreen.V34.Cldr.GM ->
            Evergreen.V36.Cldr.GM

        Evergreen.V34.Cldr.GN ->
            Evergreen.V36.Cldr.GN

        Evergreen.V34.Cldr.GP ->
            Evergreen.V36.Cldr.GP

        Evergreen.V34.Cldr.GQ ->
            Evergreen.V36.Cldr.GQ

        Evergreen.V34.Cldr.GR ->
            Evergreen.V36.Cldr.GR

        Evergreen.V34.Cldr.GS ->
            Evergreen.V36.Cldr.GS

        Evergreen.V34.Cldr.GT_ ->
            Evergreen.V36.Cldr.GT_

        Evergreen.V34.Cldr.GU ->
            Evergreen.V36.Cldr.GU

        Evergreen.V34.Cldr.GW ->
            Evergreen.V36.Cldr.GW

        Evergreen.V34.Cldr.GY ->
            Evergreen.V36.Cldr.GY

        Evergreen.V34.Cldr.HK ->
            Evergreen.V36.Cldr.HK

        Evergreen.V34.Cldr.HM ->
            Evergreen.V36.Cldr.HM

        Evergreen.V34.Cldr.HN ->
            Evergreen.V36.Cldr.HN

        Evergreen.V34.Cldr.HR ->
            Evergreen.V36.Cldr.HR

        Evergreen.V34.Cldr.HT ->
            Evergreen.V36.Cldr.HT

        Evergreen.V34.Cldr.HU ->
            Evergreen.V36.Cldr.HU

        Evergreen.V34.Cldr.ID ->
            Evergreen.V36.Cldr.ID

        Evergreen.V34.Cldr.IE ->
            Evergreen.V36.Cldr.IE

        Evergreen.V34.Cldr.IL ->
            Evergreen.V36.Cldr.IL

        Evergreen.V34.Cldr.IM ->
            Evergreen.V36.Cldr.IM

        Evergreen.V34.Cldr.IN ->
            Evergreen.V36.Cldr.IN

        Evergreen.V34.Cldr.IO ->
            Evergreen.V36.Cldr.IO

        Evergreen.V34.Cldr.IQ ->
            Evergreen.V36.Cldr.IQ

        Evergreen.V34.Cldr.IR ->
            Evergreen.V36.Cldr.IR

        Evergreen.V34.Cldr.IS ->
            Evergreen.V36.Cldr.IS

        Evergreen.V34.Cldr.IT ->
            Evergreen.V36.Cldr.IT

        Evergreen.V34.Cldr.JE ->
            Evergreen.V36.Cldr.JE

        Evergreen.V34.Cldr.JM ->
            Evergreen.V36.Cldr.JM

        Evergreen.V34.Cldr.JO ->
            Evergreen.V36.Cldr.JO

        Evergreen.V34.Cldr.JP ->
            Evergreen.V36.Cldr.JP

        Evergreen.V34.Cldr.KE ->
            Evergreen.V36.Cldr.KE

        Evergreen.V34.Cldr.KG ->
            Evergreen.V36.Cldr.KG

        Evergreen.V34.Cldr.KH ->
            Evergreen.V36.Cldr.KH

        Evergreen.V34.Cldr.KI ->
            Evergreen.V36.Cldr.KI

        Evergreen.V34.Cldr.KM ->
            Evergreen.V36.Cldr.KM

        Evergreen.V34.Cldr.KN ->
            Evergreen.V36.Cldr.KN

        Evergreen.V34.Cldr.KP ->
            Evergreen.V36.Cldr.KP

        Evergreen.V34.Cldr.KR ->
            Evergreen.V36.Cldr.KR

        Evergreen.V34.Cldr.KW ->
            Evergreen.V36.Cldr.KW

        Evergreen.V34.Cldr.KY ->
            Evergreen.V36.Cldr.KY

        Evergreen.V34.Cldr.KZ ->
            Evergreen.V36.Cldr.KZ

        Evergreen.V34.Cldr.LA ->
            Evergreen.V36.Cldr.LA

        Evergreen.V34.Cldr.LB ->
            Evergreen.V36.Cldr.LB

        Evergreen.V34.Cldr.LC ->
            Evergreen.V36.Cldr.LC

        Evergreen.V34.Cldr.LI ->
            Evergreen.V36.Cldr.LI

        Evergreen.V34.Cldr.LK ->
            Evergreen.V36.Cldr.LK

        Evergreen.V34.Cldr.LR ->
            Evergreen.V36.Cldr.LR

        Evergreen.V34.Cldr.LS ->
            Evergreen.V36.Cldr.LS

        Evergreen.V34.Cldr.LT_ ->
            Evergreen.V36.Cldr.LT_

        Evergreen.V34.Cldr.LU ->
            Evergreen.V36.Cldr.LU

        Evergreen.V34.Cldr.LV ->
            Evergreen.V36.Cldr.LV

        Evergreen.V34.Cldr.LY ->
            Evergreen.V36.Cldr.LY

        Evergreen.V34.Cldr.MA ->
            Evergreen.V36.Cldr.MA

        Evergreen.V34.Cldr.MC ->
            Evergreen.V36.Cldr.MC

        Evergreen.V34.Cldr.MD ->
            Evergreen.V36.Cldr.MD

        Evergreen.V34.Cldr.ME ->
            Evergreen.V36.Cldr.ME

        Evergreen.V34.Cldr.MF ->
            Evergreen.V36.Cldr.MF

        Evergreen.V34.Cldr.MG ->
            Evergreen.V36.Cldr.MG

        Evergreen.V34.Cldr.MH ->
            Evergreen.V36.Cldr.MH

        Evergreen.V34.Cldr.MK ->
            Evergreen.V36.Cldr.MK

        Evergreen.V34.Cldr.ML ->
            Evergreen.V36.Cldr.ML

        Evergreen.V34.Cldr.MM ->
            Evergreen.V36.Cldr.MM

        Evergreen.V34.Cldr.MN ->
            Evergreen.V36.Cldr.MN

        Evergreen.V34.Cldr.MO ->
            Evergreen.V36.Cldr.MO

        Evergreen.V34.Cldr.MP ->
            Evergreen.V36.Cldr.MP

        Evergreen.V34.Cldr.MQ ->
            Evergreen.V36.Cldr.MQ

        Evergreen.V34.Cldr.MR ->
            Evergreen.V36.Cldr.MR

        Evergreen.V34.Cldr.MS ->
            Evergreen.V36.Cldr.MS

        Evergreen.V34.Cldr.MT ->
            Evergreen.V36.Cldr.MT

        Evergreen.V34.Cldr.MU ->
            Evergreen.V36.Cldr.MU

        Evergreen.V34.Cldr.MV ->
            Evergreen.V36.Cldr.MV

        Evergreen.V34.Cldr.MW ->
            Evergreen.V36.Cldr.MW

        Evergreen.V34.Cldr.MX ->
            Evergreen.V36.Cldr.MX

        Evergreen.V34.Cldr.MY ->
            Evergreen.V36.Cldr.MY

        Evergreen.V34.Cldr.MZ ->
            Evergreen.V36.Cldr.MZ

        Evergreen.V34.Cldr.NA ->
            Evergreen.V36.Cldr.NA

        Evergreen.V34.Cldr.NC ->
            Evergreen.V36.Cldr.NC

        Evergreen.V34.Cldr.NE ->
            Evergreen.V36.Cldr.NE

        Evergreen.V34.Cldr.NF ->
            Evergreen.V36.Cldr.NF

        Evergreen.V34.Cldr.NG ->
            Evergreen.V36.Cldr.NG

        Evergreen.V34.Cldr.NI ->
            Evergreen.V36.Cldr.NI

        Evergreen.V34.Cldr.NL ->
            Evergreen.V36.Cldr.NL

        Evergreen.V34.Cldr.NO ->
            Evergreen.V36.Cldr.NO

        Evergreen.V34.Cldr.NP ->
            Evergreen.V36.Cldr.NP

        Evergreen.V34.Cldr.NR ->
            Evergreen.V36.Cldr.NR

        Evergreen.V34.Cldr.NU ->
            Evergreen.V36.Cldr.NU

        Evergreen.V34.Cldr.NZ ->
            Evergreen.V36.Cldr.NZ

        Evergreen.V34.Cldr.OM ->
            Evergreen.V36.Cldr.OM

        Evergreen.V34.Cldr.PA ->
            Evergreen.V36.Cldr.PA

        Evergreen.V34.Cldr.PE ->
            Evergreen.V36.Cldr.PE

        Evergreen.V34.Cldr.PF ->
            Evergreen.V36.Cldr.PF

        Evergreen.V34.Cldr.PG ->
            Evergreen.V36.Cldr.PG

        Evergreen.V34.Cldr.PH ->
            Evergreen.V36.Cldr.PH

        Evergreen.V34.Cldr.PK ->
            Evergreen.V36.Cldr.PK

        Evergreen.V34.Cldr.PL ->
            Evergreen.V36.Cldr.PL

        Evergreen.V34.Cldr.PM ->
            Evergreen.V36.Cldr.PM

        Evergreen.V34.Cldr.PN ->
            Evergreen.V36.Cldr.PN

        Evergreen.V34.Cldr.PR ->
            Evergreen.V36.Cldr.PR

        Evergreen.V34.Cldr.PS ->
            Evergreen.V36.Cldr.PS

        Evergreen.V34.Cldr.PT ->
            Evergreen.V36.Cldr.PT

        Evergreen.V34.Cldr.PW ->
            Evergreen.V36.Cldr.PW

        Evergreen.V34.Cldr.PY ->
            Evergreen.V36.Cldr.PY

        Evergreen.V34.Cldr.QA ->
            Evergreen.V36.Cldr.QA

        Evergreen.V34.Cldr.RE ->
            Evergreen.V36.Cldr.RE

        Evergreen.V34.Cldr.RO ->
            Evergreen.V36.Cldr.RO

        Evergreen.V34.Cldr.RS ->
            Evergreen.V36.Cldr.RS

        Evergreen.V34.Cldr.RU ->
            Evergreen.V36.Cldr.RU

        Evergreen.V34.Cldr.RW ->
            Evergreen.V36.Cldr.RW

        Evergreen.V34.Cldr.SA ->
            Evergreen.V36.Cldr.SA

        Evergreen.V34.Cldr.SB ->
            Evergreen.V36.Cldr.SB

        Evergreen.V34.Cldr.SC ->
            Evergreen.V36.Cldr.SC

        Evergreen.V34.Cldr.SD ->
            Evergreen.V36.Cldr.SD

        Evergreen.V34.Cldr.SE ->
            Evergreen.V36.Cldr.SE

        Evergreen.V34.Cldr.SG ->
            Evergreen.V36.Cldr.SG

        Evergreen.V34.Cldr.SH ->
            Evergreen.V36.Cldr.SH

        Evergreen.V34.Cldr.SI ->
            Evergreen.V36.Cldr.SI

        Evergreen.V34.Cldr.SJ ->
            Evergreen.V36.Cldr.SJ

        Evergreen.V34.Cldr.SK ->
            Evergreen.V36.Cldr.SK

        Evergreen.V34.Cldr.SL ->
            Evergreen.V36.Cldr.SL

        Evergreen.V34.Cldr.SM ->
            Evergreen.V36.Cldr.SM

        Evergreen.V34.Cldr.SN ->
            Evergreen.V36.Cldr.SN

        Evergreen.V34.Cldr.SO ->
            Evergreen.V36.Cldr.SO

        Evergreen.V34.Cldr.SR ->
            Evergreen.V36.Cldr.SR

        Evergreen.V34.Cldr.SS ->
            Evergreen.V36.Cldr.SS

        Evergreen.V34.Cldr.ST ->
            Evergreen.V36.Cldr.ST

        Evergreen.V34.Cldr.SV ->
            Evergreen.V36.Cldr.SV

        Evergreen.V34.Cldr.SX ->
            Evergreen.V36.Cldr.SX

        Evergreen.V34.Cldr.SY ->
            Evergreen.V36.Cldr.SY

        Evergreen.V34.Cldr.SZ ->
            Evergreen.V36.Cldr.SZ

        Evergreen.V34.Cldr.TC ->
            Evergreen.V36.Cldr.TC

        Evergreen.V34.Cldr.TD ->
            Evergreen.V36.Cldr.TD

        Evergreen.V34.Cldr.TF ->
            Evergreen.V36.Cldr.TF

        Evergreen.V34.Cldr.TG ->
            Evergreen.V36.Cldr.TG

        Evergreen.V34.Cldr.TH ->
            Evergreen.V36.Cldr.TH

        Evergreen.V34.Cldr.TJ ->
            Evergreen.V36.Cldr.TJ

        Evergreen.V34.Cldr.TK ->
            Evergreen.V36.Cldr.TK

        Evergreen.V34.Cldr.TL ->
            Evergreen.V36.Cldr.TL

        Evergreen.V34.Cldr.TM ->
            Evergreen.V36.Cldr.TM

        Evergreen.V34.Cldr.TN ->
            Evergreen.V36.Cldr.TN

        Evergreen.V34.Cldr.TO ->
            Evergreen.V36.Cldr.TO

        Evergreen.V34.Cldr.TR ->
            Evergreen.V36.Cldr.TR

        Evergreen.V34.Cldr.TT ->
            Evergreen.V36.Cldr.TT

        Evergreen.V34.Cldr.TV ->
            Evergreen.V36.Cldr.TV

        Evergreen.V34.Cldr.TW ->
            Evergreen.V36.Cldr.TW

        Evergreen.V34.Cldr.TZ ->
            Evergreen.V36.Cldr.TZ

        Evergreen.V34.Cldr.UA ->
            Evergreen.V36.Cldr.UA

        Evergreen.V34.Cldr.UG ->
            Evergreen.V36.Cldr.UG

        Evergreen.V34.Cldr.UM ->
            Evergreen.V36.Cldr.UM

        Evergreen.V34.Cldr.US ->
            Evergreen.V36.Cldr.US

        Evergreen.V34.Cldr.UY ->
            Evergreen.V36.Cldr.UY

        Evergreen.V34.Cldr.UZ ->
            Evergreen.V36.Cldr.UZ

        Evergreen.V34.Cldr.VA ->
            Evergreen.V36.Cldr.VA

        Evergreen.V34.Cldr.VC ->
            Evergreen.V36.Cldr.VC

        Evergreen.V34.Cldr.VE ->
            Evergreen.V36.Cldr.VE

        Evergreen.V34.Cldr.VG ->
            Evergreen.V36.Cldr.VG

        Evergreen.V34.Cldr.VI ->
            Evergreen.V36.Cldr.VI

        Evergreen.V34.Cldr.VN ->
            Evergreen.V36.Cldr.VN

        Evergreen.V34.Cldr.VU ->
            Evergreen.V36.Cldr.VU

        Evergreen.V34.Cldr.WF ->
            Evergreen.V36.Cldr.WF

        Evergreen.V34.Cldr.WS ->
            Evergreen.V36.Cldr.WS

        Evergreen.V34.Cldr.XK ->
            Evergreen.V36.Cldr.XK

        Evergreen.V34.Cldr.YE ->
            Evergreen.V36.Cldr.YE

        Evergreen.V34.Cldr.YT ->
            Evergreen.V36.Cldr.YT

        Evergreen.V34.Cldr.ZA ->
            Evergreen.V36.Cldr.ZA

        Evergreen.V34.Cldr.ZM ->
            Evergreen.V36.Cldr.ZM

        Evergreen.V34.Cldr.ZW ->
            Evergreen.V36.Cldr.ZW


migrate_Cldr_Locale : Evergreen.V34.Cldr.Locale -> Evergreen.V36.Cldr.Locale
migrate_Cldr_Locale old =
    case old of
        Evergreen.V34.Cldr.Af ->
            Evergreen.V36.Cldr.Af

        Evergreen.V34.Cldr.AfNA ->
            Evergreen.V36.Cldr.AfNA

        Evergreen.V34.Cldr.Am ->
            Evergreen.V36.Cldr.Am

        Evergreen.V34.Cldr.Ar ->
            Evergreen.V36.Cldr.Ar

        Evergreen.V34.Cldr.ArAE ->
            Evergreen.V36.Cldr.ArAE

        Evergreen.V34.Cldr.ArBH ->
            Evergreen.V36.Cldr.ArBH

        Evergreen.V34.Cldr.ArDJ ->
            Evergreen.V36.Cldr.ArDJ

        Evergreen.V34.Cldr.ArDZ ->
            Evergreen.V36.Cldr.ArDZ

        Evergreen.V34.Cldr.ArEG ->
            Evergreen.V36.Cldr.ArEG

        Evergreen.V34.Cldr.ArEH ->
            Evergreen.V36.Cldr.ArEH

        Evergreen.V34.Cldr.ArER ->
            Evergreen.V36.Cldr.ArER

        Evergreen.V34.Cldr.ArIL ->
            Evergreen.V36.Cldr.ArIL

        Evergreen.V34.Cldr.ArIQ ->
            Evergreen.V36.Cldr.ArIQ

        Evergreen.V34.Cldr.ArJO ->
            Evergreen.V36.Cldr.ArJO

        Evergreen.V34.Cldr.ArKM ->
            Evergreen.V36.Cldr.ArKM

        Evergreen.V34.Cldr.ArKW ->
            Evergreen.V36.Cldr.ArKW

        Evergreen.V34.Cldr.ArLB ->
            Evergreen.V36.Cldr.ArLB

        Evergreen.V34.Cldr.ArLY ->
            Evergreen.V36.Cldr.ArLY

        Evergreen.V34.Cldr.ArMA ->
            Evergreen.V36.Cldr.ArMA

        Evergreen.V34.Cldr.ArMR ->
            Evergreen.V36.Cldr.ArMR

        Evergreen.V34.Cldr.ArOM ->
            Evergreen.V36.Cldr.ArOM

        Evergreen.V34.Cldr.ArPS ->
            Evergreen.V36.Cldr.ArPS

        Evergreen.V34.Cldr.ArQA ->
            Evergreen.V36.Cldr.ArQA

        Evergreen.V34.Cldr.ArSA ->
            Evergreen.V36.Cldr.ArSA

        Evergreen.V34.Cldr.ArSD ->
            Evergreen.V36.Cldr.ArSD

        Evergreen.V34.Cldr.ArSO ->
            Evergreen.V36.Cldr.ArSO

        Evergreen.V34.Cldr.ArSS ->
            Evergreen.V36.Cldr.ArSS

        Evergreen.V34.Cldr.ArSY ->
            Evergreen.V36.Cldr.ArSY

        Evergreen.V34.Cldr.ArTD ->
            Evergreen.V36.Cldr.ArTD

        Evergreen.V34.Cldr.ArTN ->
            Evergreen.V36.Cldr.ArTN

        Evergreen.V34.Cldr.ArYE ->
            Evergreen.V36.Cldr.ArYE

        Evergreen.V34.Cldr.As ->
            Evergreen.V36.Cldr.As

        Evergreen.V34.Cldr.Az ->
            Evergreen.V36.Cldr.Az

        Evergreen.V34.Cldr.AzLatn ->
            Evergreen.V36.Cldr.AzLatn

        Evergreen.V34.Cldr.Be ->
            Evergreen.V36.Cldr.Be

        Evergreen.V34.Cldr.BeTarask ->
            Evergreen.V36.Cldr.BeTarask

        Evergreen.V34.Cldr.Bg ->
            Evergreen.V36.Cldr.Bg

        Evergreen.V34.Cldr.Bn ->
            Evergreen.V36.Cldr.Bn

        Evergreen.V34.Cldr.BnIN ->
            Evergreen.V36.Cldr.BnIN

        Evergreen.V34.Cldr.Bs ->
            Evergreen.V36.Cldr.Bs

        Evergreen.V34.Cldr.BsLatn ->
            Evergreen.V36.Cldr.BsLatn

        Evergreen.V34.Cldr.Ca ->
            Evergreen.V36.Cldr.Ca

        Evergreen.V34.Cldr.CaAD ->
            Evergreen.V36.Cldr.CaAD

        Evergreen.V34.Cldr.CaESValencia ->
            Evergreen.V36.Cldr.CaESValencia

        Evergreen.V34.Cldr.CaFR ->
            Evergreen.V36.Cldr.CaFR

        Evergreen.V34.Cldr.CaIT ->
            Evergreen.V36.Cldr.CaIT

        Evergreen.V34.Cldr.Cs ->
            Evergreen.V36.Cldr.Cs

        Evergreen.V34.Cldr.Cy ->
            Evergreen.V36.Cldr.Cy

        Evergreen.V34.Cldr.Da ->
            Evergreen.V36.Cldr.Da

        Evergreen.V34.Cldr.DaGL ->
            Evergreen.V36.Cldr.DaGL

        Evergreen.V34.Cldr.De ->
            Evergreen.V36.Cldr.De

        Evergreen.V34.Cldr.DeAT ->
            Evergreen.V36.Cldr.DeAT

        Evergreen.V34.Cldr.DeBE ->
            Evergreen.V36.Cldr.DeBE

        Evergreen.V34.Cldr.DeCH ->
            Evergreen.V36.Cldr.DeCH

        Evergreen.V34.Cldr.DeIT ->
            Evergreen.V36.Cldr.DeIT

        Evergreen.V34.Cldr.DeLI ->
            Evergreen.V36.Cldr.DeLI

        Evergreen.V34.Cldr.DeLU ->
            Evergreen.V36.Cldr.DeLU

        Evergreen.V34.Cldr.El ->
            Evergreen.V36.Cldr.El

        Evergreen.V34.Cldr.ElCY ->
            Evergreen.V36.Cldr.ElCY

        Evergreen.V34.Cldr.ElPolyton ->
            Evergreen.V36.Cldr.ElPolyton

        Evergreen.V34.Cldr.En ->
            Evergreen.V36.Cldr.En

        Evergreen.V34.Cldr.En001 ->
            Evergreen.V36.Cldr.En001

        Evergreen.V34.Cldr.En150 ->
            Evergreen.V36.Cldr.En150

        Evergreen.V34.Cldr.EnAE ->
            Evergreen.V36.Cldr.EnAE

        Evergreen.V34.Cldr.EnAG ->
            Evergreen.V36.Cldr.EnAG

        Evergreen.V34.Cldr.EnAI ->
            Evergreen.V36.Cldr.EnAI

        Evergreen.V34.Cldr.EnAS ->
            Evergreen.V36.Cldr.EnAS

        Evergreen.V34.Cldr.EnAT ->
            Evergreen.V36.Cldr.EnAT

        Evergreen.V34.Cldr.EnAU ->
            Evergreen.V36.Cldr.EnAU

        Evergreen.V34.Cldr.EnBB ->
            Evergreen.V36.Cldr.EnBB

        Evergreen.V34.Cldr.EnBE ->
            Evergreen.V36.Cldr.EnBE

        Evergreen.V34.Cldr.EnBI ->
            Evergreen.V36.Cldr.EnBI

        Evergreen.V34.Cldr.EnBM ->
            Evergreen.V36.Cldr.EnBM

        Evergreen.V34.Cldr.EnBS ->
            Evergreen.V36.Cldr.EnBS

        Evergreen.V34.Cldr.EnBW ->
            Evergreen.V36.Cldr.EnBW

        Evergreen.V34.Cldr.EnBZ ->
            Evergreen.V36.Cldr.EnBZ

        Evergreen.V34.Cldr.EnCA ->
            Evergreen.V36.Cldr.EnCA

        Evergreen.V34.Cldr.EnCC ->
            Evergreen.V36.Cldr.EnCC

        Evergreen.V34.Cldr.EnCH ->
            Evergreen.V36.Cldr.EnCH

        Evergreen.V34.Cldr.EnCK ->
            Evergreen.V36.Cldr.EnCK

        Evergreen.V34.Cldr.EnCM ->
            Evergreen.V36.Cldr.EnCM

        Evergreen.V34.Cldr.EnCX ->
            Evergreen.V36.Cldr.EnCX

        Evergreen.V34.Cldr.EnCY ->
            Evergreen.V36.Cldr.EnCY

        Evergreen.V34.Cldr.EnDE ->
            Evergreen.V36.Cldr.EnDE

        Evergreen.V34.Cldr.EnDG ->
            Evergreen.V36.Cldr.EnDG

        Evergreen.V34.Cldr.EnDK ->
            Evergreen.V36.Cldr.EnDK

        Evergreen.V34.Cldr.EnDM ->
            Evergreen.V36.Cldr.EnDM

        Evergreen.V34.Cldr.EnER ->
            Evergreen.V36.Cldr.EnER

        Evergreen.V34.Cldr.EnFI ->
            Evergreen.V36.Cldr.EnFI

        Evergreen.V34.Cldr.EnFJ ->
            Evergreen.V36.Cldr.EnFJ

        Evergreen.V34.Cldr.EnFK ->
            Evergreen.V36.Cldr.EnFK

        Evergreen.V34.Cldr.EnFM ->
            Evergreen.V36.Cldr.EnFM

        Evergreen.V34.Cldr.EnGB ->
            Evergreen.V36.Cldr.EnGB

        Evergreen.V34.Cldr.EnGD ->
            Evergreen.V36.Cldr.EnGD

        Evergreen.V34.Cldr.EnGG ->
            Evergreen.V36.Cldr.EnGG

        Evergreen.V34.Cldr.EnGH ->
            Evergreen.V36.Cldr.EnGH

        Evergreen.V34.Cldr.EnGI ->
            Evergreen.V36.Cldr.EnGI

        Evergreen.V34.Cldr.EnGM ->
            Evergreen.V36.Cldr.EnGM

        Evergreen.V34.Cldr.EnGU ->
            Evergreen.V36.Cldr.EnGU

        Evergreen.V34.Cldr.EnGY ->
            Evergreen.V36.Cldr.EnGY

        Evergreen.V34.Cldr.EnHK ->
            Evergreen.V36.Cldr.EnHK

        Evergreen.V34.Cldr.EnIE ->
            Evergreen.V36.Cldr.EnIE

        Evergreen.V34.Cldr.EnIL ->
            Evergreen.V36.Cldr.EnIL

        Evergreen.V34.Cldr.EnIM ->
            Evergreen.V36.Cldr.EnIM

        Evergreen.V34.Cldr.EnIN ->
            Evergreen.V36.Cldr.EnIN

        Evergreen.V34.Cldr.EnIO ->
            Evergreen.V36.Cldr.EnIO

        Evergreen.V34.Cldr.EnJE ->
            Evergreen.V36.Cldr.EnJE

        Evergreen.V34.Cldr.EnJM ->
            Evergreen.V36.Cldr.EnJM

        Evergreen.V34.Cldr.EnKE ->
            Evergreen.V36.Cldr.EnKE

        Evergreen.V34.Cldr.EnKI ->
            Evergreen.V36.Cldr.EnKI

        Evergreen.V34.Cldr.EnKN ->
            Evergreen.V36.Cldr.EnKN

        Evergreen.V34.Cldr.EnKY ->
            Evergreen.V36.Cldr.EnKY

        Evergreen.V34.Cldr.EnLC ->
            Evergreen.V36.Cldr.EnLC

        Evergreen.V34.Cldr.EnLR ->
            Evergreen.V36.Cldr.EnLR

        Evergreen.V34.Cldr.EnLS ->
            Evergreen.V36.Cldr.EnLS

        Evergreen.V34.Cldr.EnMG ->
            Evergreen.V36.Cldr.EnMG

        Evergreen.V34.Cldr.EnMH ->
            Evergreen.V36.Cldr.EnMH

        Evergreen.V34.Cldr.EnMO ->
            Evergreen.V36.Cldr.EnMO

        Evergreen.V34.Cldr.EnMP ->
            Evergreen.V36.Cldr.EnMP

        Evergreen.V34.Cldr.EnMS ->
            Evergreen.V36.Cldr.EnMS

        Evergreen.V34.Cldr.EnMT ->
            Evergreen.V36.Cldr.EnMT

        Evergreen.V34.Cldr.EnMU ->
            Evergreen.V36.Cldr.EnMU

        Evergreen.V34.Cldr.EnMV ->
            Evergreen.V36.Cldr.EnMV

        Evergreen.V34.Cldr.EnMW ->
            Evergreen.V36.Cldr.EnMW

        Evergreen.V34.Cldr.EnMY ->
            Evergreen.V36.Cldr.EnMY

        Evergreen.V34.Cldr.EnNA ->
            Evergreen.V36.Cldr.EnNA

        Evergreen.V34.Cldr.EnNF ->
            Evergreen.V36.Cldr.EnNF

        Evergreen.V34.Cldr.EnNG ->
            Evergreen.V36.Cldr.EnNG

        Evergreen.V34.Cldr.EnNL ->
            Evergreen.V36.Cldr.EnNL

        Evergreen.V34.Cldr.EnNR ->
            Evergreen.V36.Cldr.EnNR

        Evergreen.V34.Cldr.EnNU ->
            Evergreen.V36.Cldr.EnNU

        Evergreen.V34.Cldr.EnNZ ->
            Evergreen.V36.Cldr.EnNZ

        Evergreen.V34.Cldr.EnPG ->
            Evergreen.V36.Cldr.EnPG

        Evergreen.V34.Cldr.EnPH ->
            Evergreen.V36.Cldr.EnPH

        Evergreen.V34.Cldr.EnPK ->
            Evergreen.V36.Cldr.EnPK

        Evergreen.V34.Cldr.EnPN ->
            Evergreen.V36.Cldr.EnPN

        Evergreen.V34.Cldr.EnPR ->
            Evergreen.V36.Cldr.EnPR

        Evergreen.V34.Cldr.EnPW ->
            Evergreen.V36.Cldr.EnPW

        Evergreen.V34.Cldr.EnRW ->
            Evergreen.V36.Cldr.EnRW

        Evergreen.V34.Cldr.EnSB ->
            Evergreen.V36.Cldr.EnSB

        Evergreen.V34.Cldr.EnSC ->
            Evergreen.V36.Cldr.EnSC

        Evergreen.V34.Cldr.EnSD ->
            Evergreen.V36.Cldr.EnSD

        Evergreen.V34.Cldr.EnSE ->
            Evergreen.V36.Cldr.EnSE

        Evergreen.V34.Cldr.EnSG ->
            Evergreen.V36.Cldr.EnSG

        Evergreen.V34.Cldr.EnSH ->
            Evergreen.V36.Cldr.EnSH

        Evergreen.V34.Cldr.EnSI ->
            Evergreen.V36.Cldr.EnSI

        Evergreen.V34.Cldr.EnSL ->
            Evergreen.V36.Cldr.EnSL

        Evergreen.V34.Cldr.EnSS ->
            Evergreen.V36.Cldr.EnSS

        Evergreen.V34.Cldr.EnSX ->
            Evergreen.V36.Cldr.EnSX

        Evergreen.V34.Cldr.EnSZ ->
            Evergreen.V36.Cldr.EnSZ

        Evergreen.V34.Cldr.EnTC ->
            Evergreen.V36.Cldr.EnTC

        Evergreen.V34.Cldr.EnTK ->
            Evergreen.V36.Cldr.EnTK

        Evergreen.V34.Cldr.EnTO ->
            Evergreen.V36.Cldr.EnTO

        Evergreen.V34.Cldr.EnTT ->
            Evergreen.V36.Cldr.EnTT

        Evergreen.V34.Cldr.EnTV ->
            Evergreen.V36.Cldr.EnTV

        Evergreen.V34.Cldr.EnTZ ->
            Evergreen.V36.Cldr.EnTZ

        Evergreen.V34.Cldr.EnUG ->
            Evergreen.V36.Cldr.EnUG

        Evergreen.V34.Cldr.EnUM ->
            Evergreen.V36.Cldr.EnUM

        Evergreen.V34.Cldr.EnVC ->
            Evergreen.V36.Cldr.EnVC

        Evergreen.V34.Cldr.EnVG ->
            Evergreen.V36.Cldr.EnVG

        Evergreen.V34.Cldr.EnVI ->
            Evergreen.V36.Cldr.EnVI

        Evergreen.V34.Cldr.EnVU ->
            Evergreen.V36.Cldr.EnVU

        Evergreen.V34.Cldr.EnWS ->
            Evergreen.V36.Cldr.EnWS

        Evergreen.V34.Cldr.EnZA ->
            Evergreen.V36.Cldr.EnZA

        Evergreen.V34.Cldr.EnZM ->
            Evergreen.V36.Cldr.EnZM

        Evergreen.V34.Cldr.EnZW ->
            Evergreen.V36.Cldr.EnZW

        Evergreen.V34.Cldr.Es ->
            Evergreen.V36.Cldr.Es

        Evergreen.V34.Cldr.Es419 ->
            Evergreen.V36.Cldr.Es419

        Evergreen.V34.Cldr.EsAR ->
            Evergreen.V36.Cldr.EsAR

        Evergreen.V34.Cldr.EsBO ->
            Evergreen.V36.Cldr.EsBO

        Evergreen.V34.Cldr.EsBR ->
            Evergreen.V36.Cldr.EsBR

        Evergreen.V34.Cldr.EsBZ ->
            Evergreen.V36.Cldr.EsBZ

        Evergreen.V34.Cldr.EsCL ->
            Evergreen.V36.Cldr.EsCL

        Evergreen.V34.Cldr.EsCO ->
            Evergreen.V36.Cldr.EsCO

        Evergreen.V34.Cldr.EsCR ->
            Evergreen.V36.Cldr.EsCR

        Evergreen.V34.Cldr.EsCU ->
            Evergreen.V36.Cldr.EsCU

        Evergreen.V34.Cldr.EsDO ->
            Evergreen.V36.Cldr.EsDO

        Evergreen.V34.Cldr.EsEA ->
            Evergreen.V36.Cldr.EsEA

        Evergreen.V34.Cldr.EsEC ->
            Evergreen.V36.Cldr.EsEC

        Evergreen.V34.Cldr.EsGQ ->
            Evergreen.V36.Cldr.EsGQ

        Evergreen.V34.Cldr.EsGT ->
            Evergreen.V36.Cldr.EsGT

        Evergreen.V34.Cldr.EsHN ->
            Evergreen.V36.Cldr.EsHN

        Evergreen.V34.Cldr.EsIC ->
            Evergreen.V36.Cldr.EsIC

        Evergreen.V34.Cldr.EsMX ->
            Evergreen.V36.Cldr.EsMX

        Evergreen.V34.Cldr.EsNI ->
            Evergreen.V36.Cldr.EsNI

        Evergreen.V34.Cldr.EsPA ->
            Evergreen.V36.Cldr.EsPA

        Evergreen.V34.Cldr.EsPE ->
            Evergreen.V36.Cldr.EsPE

        Evergreen.V34.Cldr.EsPH ->
            Evergreen.V36.Cldr.EsPH

        Evergreen.V34.Cldr.EsPR ->
            Evergreen.V36.Cldr.EsPR

        Evergreen.V34.Cldr.EsPY ->
            Evergreen.V36.Cldr.EsPY

        Evergreen.V34.Cldr.EsSV ->
            Evergreen.V36.Cldr.EsSV

        Evergreen.V34.Cldr.EsUS ->
            Evergreen.V36.Cldr.EsUS

        Evergreen.V34.Cldr.EsUY ->
            Evergreen.V36.Cldr.EsUY

        Evergreen.V34.Cldr.EsVE ->
            Evergreen.V36.Cldr.EsVE

        Evergreen.V34.Cldr.Et ->
            Evergreen.V36.Cldr.Et

        Evergreen.V34.Cldr.Eu ->
            Evergreen.V36.Cldr.Eu

        Evergreen.V34.Cldr.Fa ->
            Evergreen.V36.Cldr.Fa

        Evergreen.V34.Cldr.FaAF ->
            Evergreen.V36.Cldr.FaAF

        Evergreen.V34.Cldr.Fi ->
            Evergreen.V36.Cldr.Fi

        Evergreen.V34.Cldr.Fil ->
            Evergreen.V36.Cldr.Fil

        Evergreen.V34.Cldr.Fr ->
            Evergreen.V36.Cldr.Fr

        Evergreen.V34.Cldr.FrBE ->
            Evergreen.V36.Cldr.FrBE

        Evergreen.V34.Cldr.FrBF ->
            Evergreen.V36.Cldr.FrBF

        Evergreen.V34.Cldr.FrBI ->
            Evergreen.V36.Cldr.FrBI

        Evergreen.V34.Cldr.FrBJ ->
            Evergreen.V36.Cldr.FrBJ

        Evergreen.V34.Cldr.FrBL ->
            Evergreen.V36.Cldr.FrBL

        Evergreen.V34.Cldr.FrCA ->
            Evergreen.V36.Cldr.FrCA

        Evergreen.V34.Cldr.FrCD ->
            Evergreen.V36.Cldr.FrCD

        Evergreen.V34.Cldr.FrCF ->
            Evergreen.V36.Cldr.FrCF

        Evergreen.V34.Cldr.FrCG ->
            Evergreen.V36.Cldr.FrCG

        Evergreen.V34.Cldr.FrCH ->
            Evergreen.V36.Cldr.FrCH

        Evergreen.V34.Cldr.FrCI ->
            Evergreen.V36.Cldr.FrCI

        Evergreen.V34.Cldr.FrCM ->
            Evergreen.V36.Cldr.FrCM

        Evergreen.V34.Cldr.FrDJ ->
            Evergreen.V36.Cldr.FrDJ

        Evergreen.V34.Cldr.FrDZ ->
            Evergreen.V36.Cldr.FrDZ

        Evergreen.V34.Cldr.FrGA ->
            Evergreen.V36.Cldr.FrGA

        Evergreen.V34.Cldr.FrGF ->
            Evergreen.V36.Cldr.FrGF

        Evergreen.V34.Cldr.FrGN ->
            Evergreen.V36.Cldr.FrGN

        Evergreen.V34.Cldr.FrGP ->
            Evergreen.V36.Cldr.FrGP

        Evergreen.V34.Cldr.FrGQ ->
            Evergreen.V36.Cldr.FrGQ

        Evergreen.V34.Cldr.FrHT ->
            Evergreen.V36.Cldr.FrHT

        Evergreen.V34.Cldr.FrKM ->
            Evergreen.V36.Cldr.FrKM

        Evergreen.V34.Cldr.FrLU ->
            Evergreen.V36.Cldr.FrLU

        Evergreen.V34.Cldr.FrMA ->
            Evergreen.V36.Cldr.FrMA

        Evergreen.V34.Cldr.FrMC ->
            Evergreen.V36.Cldr.FrMC

        Evergreen.V34.Cldr.FrMF ->
            Evergreen.V36.Cldr.FrMF

        Evergreen.V34.Cldr.FrMG ->
            Evergreen.V36.Cldr.FrMG

        Evergreen.V34.Cldr.FrML ->
            Evergreen.V36.Cldr.FrML

        Evergreen.V34.Cldr.FrMQ ->
            Evergreen.V36.Cldr.FrMQ

        Evergreen.V34.Cldr.FrMR ->
            Evergreen.V36.Cldr.FrMR

        Evergreen.V34.Cldr.FrMU ->
            Evergreen.V36.Cldr.FrMU

        Evergreen.V34.Cldr.FrNC ->
            Evergreen.V36.Cldr.FrNC

        Evergreen.V34.Cldr.FrNE ->
            Evergreen.V36.Cldr.FrNE

        Evergreen.V34.Cldr.FrPF ->
            Evergreen.V36.Cldr.FrPF

        Evergreen.V34.Cldr.FrPM ->
            Evergreen.V36.Cldr.FrPM

        Evergreen.V34.Cldr.FrRE ->
            Evergreen.V36.Cldr.FrRE

        Evergreen.V34.Cldr.FrRW ->
            Evergreen.V36.Cldr.FrRW

        Evergreen.V34.Cldr.FrSC ->
            Evergreen.V36.Cldr.FrSC

        Evergreen.V34.Cldr.FrSN ->
            Evergreen.V36.Cldr.FrSN

        Evergreen.V34.Cldr.FrSY ->
            Evergreen.V36.Cldr.FrSY

        Evergreen.V34.Cldr.FrTD ->
            Evergreen.V36.Cldr.FrTD

        Evergreen.V34.Cldr.FrTG ->
            Evergreen.V36.Cldr.FrTG

        Evergreen.V34.Cldr.FrTN ->
            Evergreen.V36.Cldr.FrTN

        Evergreen.V34.Cldr.FrVU ->
            Evergreen.V36.Cldr.FrVU

        Evergreen.V34.Cldr.FrWF ->
            Evergreen.V36.Cldr.FrWF

        Evergreen.V34.Cldr.FrYT ->
            Evergreen.V36.Cldr.FrYT

        Evergreen.V34.Cldr.Ga ->
            Evergreen.V36.Cldr.Ga

        Evergreen.V34.Cldr.GaGB ->
            Evergreen.V36.Cldr.GaGB

        Evergreen.V34.Cldr.Gd ->
            Evergreen.V36.Cldr.Gd

        Evergreen.V34.Cldr.Gl ->
            Evergreen.V36.Cldr.Gl

        Evergreen.V34.Cldr.Gu ->
            Evergreen.V36.Cldr.Gu

        Evergreen.V34.Cldr.Ha ->
            Evergreen.V36.Cldr.Ha

        Evergreen.V34.Cldr.HaGH ->
            Evergreen.V36.Cldr.HaGH

        Evergreen.V34.Cldr.HaNE ->
            Evergreen.V36.Cldr.HaNE

        Evergreen.V34.Cldr.He ->
            Evergreen.V36.Cldr.He

        Evergreen.V34.Cldr.Hi ->
            Evergreen.V36.Cldr.Hi

        Evergreen.V34.Cldr.HiLatn ->
            Evergreen.V36.Cldr.HiLatn

        Evergreen.V34.Cldr.Hr ->
            Evergreen.V36.Cldr.Hr

        Evergreen.V34.Cldr.HrBA ->
            Evergreen.V36.Cldr.HrBA

        Evergreen.V34.Cldr.Hu ->
            Evergreen.V36.Cldr.Hu

        Evergreen.V34.Cldr.Hy ->
            Evergreen.V36.Cldr.Hy

        Evergreen.V34.Cldr.Id ->
            Evergreen.V36.Cldr.Id

        Evergreen.V34.Cldr.Ig ->
            Evergreen.V36.Cldr.Ig

        Evergreen.V34.Cldr.Is ->
            Evergreen.V36.Cldr.Is

        Evergreen.V34.Cldr.It ->
            Evergreen.V36.Cldr.It

        Evergreen.V34.Cldr.ItCH ->
            Evergreen.V36.Cldr.ItCH

        Evergreen.V34.Cldr.ItSM ->
            Evergreen.V36.Cldr.ItSM

        Evergreen.V34.Cldr.ItVA ->
            Evergreen.V36.Cldr.ItVA

        Evergreen.V34.Cldr.Ja ->
            Evergreen.V36.Cldr.Ja

        Evergreen.V34.Cldr.Jv ->
            Evergreen.V36.Cldr.Jv

        Evergreen.V34.Cldr.Ka ->
            Evergreen.V36.Cldr.Ka

        Evergreen.V34.Cldr.Kk ->
            Evergreen.V36.Cldr.Kk

        Evergreen.V34.Cldr.Km ->
            Evergreen.V36.Cldr.Km

        Evergreen.V34.Cldr.Kn ->
            Evergreen.V36.Cldr.Kn

        Evergreen.V34.Cldr.Ko ->
            Evergreen.V36.Cldr.Ko

        Evergreen.V34.Cldr.KoKP ->
            Evergreen.V36.Cldr.KoKP

        Evergreen.V34.Cldr.Kok ->
            Evergreen.V36.Cldr.Kok

        Evergreen.V34.Cldr.Ky ->
            Evergreen.V36.Cldr.Ky

        Evergreen.V34.Cldr.Lo ->
            Evergreen.V36.Cldr.Lo

        Evergreen.V34.Cldr.Lt ->
            Evergreen.V36.Cldr.Lt

        Evergreen.V34.Cldr.Lv ->
            Evergreen.V36.Cldr.Lv

        Evergreen.V34.Cldr.Mk ->
            Evergreen.V36.Cldr.Mk

        Evergreen.V34.Cldr.Ml ->
            Evergreen.V36.Cldr.Ml

        Evergreen.V34.Cldr.Mn ->
            Evergreen.V36.Cldr.Mn

        Evergreen.V34.Cldr.Mr ->
            Evergreen.V36.Cldr.Mr

        Evergreen.V34.Cldr.Ms ->
            Evergreen.V36.Cldr.Ms

        Evergreen.V34.Cldr.MsBN ->
            Evergreen.V36.Cldr.MsBN

        Evergreen.V34.Cldr.MsID ->
            Evergreen.V36.Cldr.MsID

        Evergreen.V34.Cldr.MsSG ->
            Evergreen.V36.Cldr.MsSG

        Evergreen.V34.Cldr.My ->
            Evergreen.V36.Cldr.My

        Evergreen.V34.Cldr.Nb ->
            Evergreen.V36.Cldr.Nb

        Evergreen.V34.Cldr.NbSJ ->
            Evergreen.V36.Cldr.NbSJ

        Evergreen.V34.Cldr.Ne ->
            Evergreen.V36.Cldr.Ne

        Evergreen.V34.Cldr.NeIN ->
            Evergreen.V36.Cldr.NeIN

        Evergreen.V34.Cldr.Nl ->
            Evergreen.V36.Cldr.Nl

        Evergreen.V34.Cldr.NlAW ->
            Evergreen.V36.Cldr.NlAW

        Evergreen.V34.Cldr.NlBE ->
            Evergreen.V36.Cldr.NlBE

        Evergreen.V34.Cldr.NlBQ ->
            Evergreen.V36.Cldr.NlBQ

        Evergreen.V34.Cldr.NlCW ->
            Evergreen.V36.Cldr.NlCW

        Evergreen.V34.Cldr.NlSR ->
            Evergreen.V36.Cldr.NlSR

        Evergreen.V34.Cldr.NlSX ->
            Evergreen.V36.Cldr.NlSX

        Evergreen.V34.Cldr.Nn ->
            Evergreen.V36.Cldr.Nn

        Evergreen.V34.Cldr.No ->
            Evergreen.V36.Cldr.No

        Evergreen.V34.Cldr.Or ->
            Evergreen.V36.Cldr.Or

        Evergreen.V34.Cldr.Pa ->
            Evergreen.V36.Cldr.Pa

        Evergreen.V34.Cldr.PaGuru ->
            Evergreen.V36.Cldr.PaGuru

        Evergreen.V34.Cldr.Pcm ->
            Evergreen.V36.Cldr.Pcm

        Evergreen.V34.Cldr.Pl ->
            Evergreen.V36.Cldr.Pl

        Evergreen.V34.Cldr.Ps ->
            Evergreen.V36.Cldr.Ps

        Evergreen.V34.Cldr.PsPK ->
            Evergreen.V36.Cldr.PsPK

        Evergreen.V34.Cldr.Pt ->
            Evergreen.V36.Cldr.Pt

        Evergreen.V34.Cldr.PtAO ->
            Evergreen.V36.Cldr.PtAO

        Evergreen.V34.Cldr.PtCH ->
            Evergreen.V36.Cldr.PtCH

        Evergreen.V34.Cldr.PtCV ->
            Evergreen.V36.Cldr.PtCV

        Evergreen.V34.Cldr.PtGQ ->
            Evergreen.V36.Cldr.PtGQ

        Evergreen.V34.Cldr.PtGW ->
            Evergreen.V36.Cldr.PtGW

        Evergreen.V34.Cldr.PtLU ->
            Evergreen.V36.Cldr.PtLU

        Evergreen.V34.Cldr.PtMO ->
            Evergreen.V36.Cldr.PtMO

        Evergreen.V34.Cldr.PtMZ ->
            Evergreen.V36.Cldr.PtMZ

        Evergreen.V34.Cldr.PtPT ->
            Evergreen.V36.Cldr.PtPT

        Evergreen.V34.Cldr.PtST ->
            Evergreen.V36.Cldr.PtST

        Evergreen.V34.Cldr.PtTL ->
            Evergreen.V36.Cldr.PtTL

        Evergreen.V34.Cldr.Ro ->
            Evergreen.V36.Cldr.Ro

        Evergreen.V34.Cldr.RoMD ->
            Evergreen.V36.Cldr.RoMD

        Evergreen.V34.Cldr.Ru ->
            Evergreen.V36.Cldr.Ru

        Evergreen.V34.Cldr.RuBY ->
            Evergreen.V36.Cldr.RuBY

        Evergreen.V34.Cldr.RuKG ->
            Evergreen.V36.Cldr.RuKG

        Evergreen.V34.Cldr.RuKZ ->
            Evergreen.V36.Cldr.RuKZ

        Evergreen.V34.Cldr.RuMD ->
            Evergreen.V36.Cldr.RuMD

        Evergreen.V34.Cldr.RuUA ->
            Evergreen.V36.Cldr.RuUA

        Evergreen.V34.Cldr.Sd ->
            Evergreen.V36.Cldr.Sd

        Evergreen.V34.Cldr.SdArab ->
            Evergreen.V36.Cldr.SdArab

        Evergreen.V34.Cldr.Si ->
            Evergreen.V36.Cldr.Si

        Evergreen.V34.Cldr.Sk ->
            Evergreen.V36.Cldr.Sk

        Evergreen.V34.Cldr.Sl ->
            Evergreen.V36.Cldr.Sl

        Evergreen.V34.Cldr.So ->
            Evergreen.V36.Cldr.So

        Evergreen.V34.Cldr.SoDJ ->
            Evergreen.V36.Cldr.SoDJ

        Evergreen.V34.Cldr.SoET ->
            Evergreen.V36.Cldr.SoET

        Evergreen.V34.Cldr.SoKE ->
            Evergreen.V36.Cldr.SoKE

        Evergreen.V34.Cldr.Sq ->
            Evergreen.V36.Cldr.Sq

        Evergreen.V34.Cldr.SqMK ->
            Evergreen.V36.Cldr.SqMK

        Evergreen.V34.Cldr.SqXK ->
            Evergreen.V36.Cldr.SqXK

        Evergreen.V34.Cldr.Sr ->
            Evergreen.V36.Cldr.Sr

        Evergreen.V34.Cldr.SrCyrl ->
            Evergreen.V36.Cldr.SrCyrl

        Evergreen.V34.Cldr.SrCyrlBA ->
            Evergreen.V36.Cldr.SrCyrlBA

        Evergreen.V34.Cldr.SrCyrlME ->
            Evergreen.V36.Cldr.SrCyrlME

        Evergreen.V34.Cldr.SrCyrlXK ->
            Evergreen.V36.Cldr.SrCyrlXK

        Evergreen.V34.Cldr.SrLatn ->
            Evergreen.V36.Cldr.SrLatn

        Evergreen.V34.Cldr.SrLatnBA ->
            Evergreen.V36.Cldr.SrLatnBA

        Evergreen.V34.Cldr.SrLatnME ->
            Evergreen.V36.Cldr.SrLatnME

        Evergreen.V34.Cldr.SrLatnXK ->
            Evergreen.V36.Cldr.SrLatnXK

        Evergreen.V34.Cldr.Sv ->
            Evergreen.V36.Cldr.Sv

        Evergreen.V34.Cldr.SvAX ->
            Evergreen.V36.Cldr.SvAX

        Evergreen.V34.Cldr.SvFI ->
            Evergreen.V36.Cldr.SvFI

        Evergreen.V34.Cldr.Sw ->
            Evergreen.V36.Cldr.Sw

        Evergreen.V34.Cldr.SwCD ->
            Evergreen.V36.Cldr.SwCD

        Evergreen.V34.Cldr.SwKE ->
            Evergreen.V36.Cldr.SwKE

        Evergreen.V34.Cldr.SwUG ->
            Evergreen.V36.Cldr.SwUG

        Evergreen.V34.Cldr.Ta ->
            Evergreen.V36.Cldr.Ta

        Evergreen.V34.Cldr.TaLK ->
            Evergreen.V36.Cldr.TaLK

        Evergreen.V34.Cldr.TaMY ->
            Evergreen.V36.Cldr.TaMY

        Evergreen.V34.Cldr.TaSG ->
            Evergreen.V36.Cldr.TaSG

        Evergreen.V34.Cldr.Te ->
            Evergreen.V36.Cldr.Te

        Evergreen.V34.Cldr.Th ->
            Evergreen.V36.Cldr.Th

        Evergreen.V34.Cldr.Tk ->
            Evergreen.V36.Cldr.Tk

        Evergreen.V34.Cldr.Tr ->
            Evergreen.V36.Cldr.Tr

        Evergreen.V34.Cldr.TrCY ->
            Evergreen.V36.Cldr.TrCY

        Evergreen.V34.Cldr.Uk ->
            Evergreen.V36.Cldr.Uk

        Evergreen.V34.Cldr.Ur ->
            Evergreen.V36.Cldr.Ur

        Evergreen.V34.Cldr.UrIN ->
            Evergreen.V36.Cldr.UrIN

        Evergreen.V34.Cldr.Uz ->
            Evergreen.V36.Cldr.Uz

        Evergreen.V34.Cldr.UzLatn ->
            Evergreen.V36.Cldr.UzLatn

        Evergreen.V34.Cldr.Vi ->
            Evergreen.V36.Cldr.Vi

        Evergreen.V34.Cldr.Yo ->
            Evergreen.V36.Cldr.Yo

        Evergreen.V34.Cldr.YoBJ ->
            Evergreen.V36.Cldr.YoBJ

        Evergreen.V34.Cldr.Yue ->
            Evergreen.V36.Cldr.Yue

        Evergreen.V34.Cldr.YueHans ->
            Evergreen.V36.Cldr.YueHans

        Evergreen.V34.Cldr.YueHant ->
            Evergreen.V36.Cldr.YueHant

        Evergreen.V34.Cldr.Zh ->
            Evergreen.V36.Cldr.Zh

        Evergreen.V34.Cldr.ZhHans ->
            Evergreen.V36.Cldr.ZhHans

        Evergreen.V34.Cldr.ZhHansHK ->
            Evergreen.V36.Cldr.ZhHansHK

        Evergreen.V34.Cldr.ZhHansMO ->
            Evergreen.V36.Cldr.ZhHansMO

        Evergreen.V34.Cldr.ZhHansSG ->
            Evergreen.V36.Cldr.ZhHansSG

        Evergreen.V34.Cldr.ZhHant ->
            Evergreen.V36.Cldr.ZhHant

        Evergreen.V34.Cldr.ZhHantHK ->
            Evergreen.V36.Cldr.ZhHantHK

        Evergreen.V34.Cldr.ZhHantMO ->
            Evergreen.V36.Cldr.ZhHantMO

        Evergreen.V34.Cldr.Zu ->
            Evergreen.V36.Cldr.Zu


migrate_Main_Model : Evergreen.V34.Main.Model -> Evergreen.V36.Main.Model
migrate_Main_Model old =
    { key = old.key
    , url = old.url
    , page = old.page |> migrate_Main_Pages_Model_Model
    , layout = old.layout
    , shared = old.shared |> migrate_Shared_Model
    }


migrate_Main_Pages_Model_Model : Evergreen.V34.Main.Pages.Model.Model -> Evergreen.V36.Main.Pages.Model.Model
migrate_Main_Pages_Model_Model old =
    case old of
        Evergreen.V34.Main.Pages.Model.Home_ p0 ->
            Evergreen.V36.Main.Pages.Model.Home_ (p0 |> migrate_Pages_Home__Model)

        Evergreen.V34.Main.Pages.Model.Finished p0 ->
            Evergreen.V36.Main.Pages.Model.Finished p0

        Evergreen.V34.Main.Pages.Model.Play p0 ->
            Evergreen.V36.Main.Pages.Model.Play (p0 |> migrate_Pages_Play_Model)

        Evergreen.V34.Main.Pages.Model.Sort p0 ->
            Evergreen.V36.Main.Pages.Model.Sort (p0 |> migrate_Pages_Sort_Model)

        Evergreen.V34.Main.Pages.Model.NotFound_ p0 ->
            Evergreen.V36.Main.Pages.Model.NotFound_ (p0 |> migrate_Pages_NotFound__Model)

        Evergreen.V34.Main.Pages.Model.Redirecting_ ->
            Evergreen.V36.Main.Pages.Model.Redirecting_

        Evergreen.V34.Main.Pages.Model.Loading_ ->
            Evergreen.V36.Main.Pages.Model.Loading_


migrate_Pages_Home__Model : Evergreen.V34.Pages.Home_.Model -> Evergreen.V36.Pages.Home_.Model
migrate_Pages_Home__Model old =
    old


migrate_Pages_Home__Msg : Evergreen.V34.Pages.Home_.Msg -> Evergreen.V36.Pages.Home_.Msg
migrate_Pages_Home__Msg old =
    case old of
        Evergreen.V34.Pages.Home_.Play ->
            Evergreen.V36.Pages.Home_.Play

        Evergreen.V34.Pages.Home_.ChangeOptions p0 ->
            Evergreen.V36.Pages.Home_.ChangeOptions (p0 |> migrate_Shared_Model_GameOptions)

        Evergreen.V34.Pages.Home_.ChangingLocale p0 ->
            Evergreen.V36.Pages.Home_.ChangingLocale p0

        Evergreen.V34.Pages.Home_.Locale p0 ->
            Evergreen.V36.Pages.Home_.Locale (p0 |> migrate_Cldr_Locale)


migrate_Pages_NotFound__Model : Evergreen.V34.Pages.NotFound_.Model -> Evergreen.V36.Pages.NotFound_.Model
migrate_Pages_NotFound__Model old =
    old


migrate_Pages_Play_InnerModel : Evergreen.V34.Pages.Play.InnerModel -> Evergreen.V36.Pages.Play.InnerModel
migrate_Pages_Play_InnerModel old =
    { current = old.current |> migrate_Shared_Model_Card
    , picked = old.picked |> Maybe.map migrate_Shared_Model_Country
    , queue = old.queue |> List.map migrate_Shared_Model_Card
    , score = old.score
    }


migrate_Pages_Play_Model : Evergreen.V34.Pages.Play.Model -> Evergreen.V36.Pages.Play.Model
migrate_Pages_Play_Model old =
    old |> Maybe.map migrate_Pages_Play_InnerModel


migrate_Pages_Sort_Model : Evergreen.V34.Pages.Sort.Model -> Evergreen.V36.Pages.Sort.Model
migrate_Pages_Sort_Model old =
    { groups = old.groups |> List.map (List.map migrate_Shared_Model_Country)
    , selected = old.selected |> Maybe.map migrate_Shared_Model_Country
    }


migrate_Shared_Model : Evergreen.V34.Shared.Model -> Evergreen.V36.Shared.Model
migrate_Shared_Model old =
    old |> migrate_Shared_Model_Model


migrate_Shared_Model_Card : Evergreen.V34.Shared.Model.Card -> Evergreen.V36.Shared.Model.Card
migrate_Shared_Model_Card old =
    { guessing = old.guessing |> migrate_Shared_Model_Country
    , answers = old.answers |> List.map migrate_Shared_Model_Country
    , guessFrom = old.guessFrom |> migrate_Shared_Model_Property
    , guessTo = old.guessTo |> migrate_Shared_Model_Property
    }


migrate_Shared_Model_Context : Evergreen.V34.Shared.Model.Context -> Evergreen.V36.Shared.Model.Context
migrate_Shared_Model_Context old =
    { locale = old.locale |> migrate_Cldr_Locale
    }


migrate_Shared_Model_Country : Evergreen.V34.Shared.Model.Country -> Evergreen.V36.Shared.Model.Country
migrate_Shared_Model_Country old =
    case old of
        Evergreen.V34.Shared.Model.Iso3166 p0 ->
            Evergreen.V36.Shared.Model.Iso3166 (p0 |> migrate_Cldr_CountryCode)

        Evergreen.V34.Shared.Model.PartiallyRecognized p0 ->
            Evergreen.V36.Shared.Model.PartiallyRecognized p0


migrate_Shared_Model_Difficulty : Evergreen.V34.Shared.Model.Difficulty -> Evergreen.V36.Shared.Model.Difficulty
migrate_Shared_Model_Difficulty old =
    case old of
        Evergreen.V34.Shared.Model.Easy ->
            Evergreen.V36.Shared.Model.Easy

        Evergreen.V34.Shared.Model.Normal ->
            Evergreen.V36.Shared.Model.Normal

        Evergreen.V34.Shared.Model.Hard ->
            Evergreen.V36.Shared.Model.Hard


migrate_Shared_Model_GameOptions : Evergreen.V34.Shared.Model.GameOptions -> Evergreen.V36.Shared.Model.GameOptions
migrate_Shared_Model_GameOptions old =
    { gameLength = old.gameLength
    , difficulty = old.difficulty |> migrate_Shared_Model_Difficulty
    , answersPerCard = old.answersPerCard
    , guessPatterns = old.guessPatterns |> List.map (Tuple.mapBoth migrate_Shared_Model_Property migrate_Shared_Model_Property)
    , sovereignOnly = old.sovereignOnly
    , continents =
        [ Evergreen.V36.Shared.Model.Africa
        , Evergreen.V36.Shared.Model.Antartica
        , Evergreen.V36.Shared.Model.Asia
        , Evergreen.V36.Shared.Model.Europe
        , Evergreen.V36.Shared.Model.NorthAmerica
        , Evergreen.V36.Shared.Model.Oceania
        , Evergreen.V36.Shared.Model.SouthAmerica
        ]
    }


migrate_Shared_Model_Model : Evergreen.V34.Shared.Model.Model -> Evergreen.V36.Shared.Model.Model
migrate_Shared_Model_Model old =
    { context = old.context |> migrate_Shared_Model_Context
    , options = old.options |> migrate_Shared_Model_GameOptions
    , seed = old.seed
    }


migrate_Shared_Model_Property : Evergreen.V34.Shared.Model.Property -> Evergreen.V36.Shared.Model.Property
migrate_Shared_Model_Property old =
    case old of
        Evergreen.V34.Shared.Model.Flag ->
            Evergreen.V36.Shared.Model.Flag

        Evergreen.V34.Shared.Model.Name ->
            Evergreen.V36.Shared.Model.Name


migrate_Shared_Msg : Evergreen.V34.Shared.Msg -> Evergreen.V36.Shared.Msg
migrate_Shared_Msg old =
    old |> migrate_Shared_Msg_Msg


migrate_Shared_Msg_Msg : Evergreen.V34.Shared.Msg.Msg -> Evergreen.V36.Shared.Msg.Msg
migrate_Shared_Msg_Msg old =
    case old of
        Evergreen.V34.Shared.Msg.Seed p0 ->
            Evergreen.V36.Shared.Msg.Seed p0

        Evergreen.V34.Shared.Msg.Locale p0 ->
            Evergreen.V36.Shared.Msg.Locale (p0 |> migrate_Cldr_Locale)

        Evergreen.V34.Shared.Msg.ChangeOptions p0 ->
            Evergreen.V36.Shared.Msg.ChangeOptions (p0 |> migrate_Shared_Model_GameOptions)

        Evergreen.V34.Shared.Msg.Play ->
            Evergreen.V36.Shared.Msg.Play

        Evergreen.V34.Shared.Msg.Finished p0 ->
            Evergreen.V36.Shared.Msg.Finished p0

        Evergreen.V34.Shared.Msg.Nop ->
            Evergreen.V36.Shared.Msg.Nop
