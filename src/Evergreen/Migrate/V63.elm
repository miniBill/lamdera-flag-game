module Evergreen.Migrate.V63 exposing (..)

import Evergreen.V62.Cldr
import Evergreen.V62.Main
import Evergreen.V62.Main.Pages.Model
import Evergreen.V62.Main.Pages.Msg
import Evergreen.V62.Pages.Finished
import Evergreen.V62.Pages.Home_
import Evergreen.V62.Pages.NotFound_
import Evergreen.V62.Pages.Play
import Evergreen.V62.Pages.Sort
import Evergreen.V62.Shared
import Evergreen.V62.Shared.Model
import Evergreen.V62.Shared.Msg
import Evergreen.V62.Types
import Evergreen.V63.Cldr
import Evergreen.V63.Main
import Evergreen.V63.Main.Pages.Model
import Evergreen.V63.Main.Pages.Msg
import Evergreen.V63.Pages.Finished
import Evergreen.V63.Pages.Home_
import Evergreen.V63.Pages.NotFound_
import Evergreen.V63.Pages.Play
import Evergreen.V63.Pages.Sort
import Evergreen.V63.Shared
import Evergreen.V63.Shared.Model
import Evergreen.V63.Shared.Msg
import Evergreen.V63.Types
import Lamdera.Migrations exposing (..)
import List
import Maybe


frontendModel : Evergreen.V62.Types.FrontendModel -> ModelMigration Evergreen.V63.Types.FrontendModel Evergreen.V63.Types.FrontendMsg
frontendModel old =
    ModelMigrated ( migrate_Types_FrontendModel old, Cmd.none )


backendModel : Evergreen.V62.Types.BackendModel -> ModelMigration Evergreen.V63.Types.BackendModel Evergreen.V63.Types.BackendMsg
backendModel old =
    ModelUnchanged


frontendMsg : Evergreen.V62.Types.FrontendMsg -> MsgMigration Evergreen.V63.Types.FrontendMsg Evergreen.V63.Types.FrontendMsg
frontendMsg old =
    MsgMigrated ( migrate_Types_FrontendMsg old, Cmd.none )


toBackend : Evergreen.V62.Types.ToBackend -> MsgMigration Evergreen.V63.Types.ToBackend Evergreen.V63.Types.BackendMsg
toBackend old =
    MsgUnchanged


backendMsg : Evergreen.V62.Types.BackendMsg -> MsgMigration Evergreen.V63.Types.BackendMsg Evergreen.V63.Types.BackendMsg
backendMsg old =
    MsgUnchanged


toFrontend : Evergreen.V62.Types.ToFrontend -> MsgMigration Evergreen.V63.Types.ToFrontend Evergreen.V63.Types.FrontendMsg
toFrontend old =
    MsgUnchanged


migrate_Types_FrontendModel : Evergreen.V62.Types.FrontendModel -> Evergreen.V63.Types.FrontendModel
migrate_Types_FrontendModel old =
    old |> migrate_Main_Model


migrate_Types_FrontendMsg : Evergreen.V62.Types.FrontendMsg -> Evergreen.V63.Types.FrontendMsg
migrate_Types_FrontendMsg old =
    old |> migrate_Main_Msg


migrate_Cldr_CountryCode : Evergreen.V62.Cldr.CountryCode -> Evergreen.V63.Cldr.CountryCode
migrate_Cldr_CountryCode old =
    case old of
        Evergreen.V62.Cldr.AD ->
            Evergreen.V63.Cldr.AD

        Evergreen.V62.Cldr.AE ->
            Evergreen.V63.Cldr.AE

        Evergreen.V62.Cldr.AF ->
            Evergreen.V63.Cldr.AF

        Evergreen.V62.Cldr.AG ->
            Evergreen.V63.Cldr.AG

        Evergreen.V62.Cldr.AI ->
            Evergreen.V63.Cldr.AI

        Evergreen.V62.Cldr.AL ->
            Evergreen.V63.Cldr.AL

        Evergreen.V62.Cldr.AM ->
            Evergreen.V63.Cldr.AM

        Evergreen.V62.Cldr.AO ->
            Evergreen.V63.Cldr.AO

        Evergreen.V62.Cldr.AQ ->
            Evergreen.V63.Cldr.AQ

        Evergreen.V62.Cldr.AR ->
            Evergreen.V63.Cldr.AR

        Evergreen.V62.Cldr.AS ->
            Evergreen.V63.Cldr.AS

        Evergreen.V62.Cldr.AT ->
            Evergreen.V63.Cldr.AT

        Evergreen.V62.Cldr.AU ->
            Evergreen.V63.Cldr.AU

        Evergreen.V62.Cldr.AW ->
            Evergreen.V63.Cldr.AW

        Evergreen.V62.Cldr.AX ->
            Evergreen.V63.Cldr.AX

        Evergreen.V62.Cldr.AZ ->
            Evergreen.V63.Cldr.AZ

        Evergreen.V62.Cldr.BA ->
            Evergreen.V63.Cldr.BA

        Evergreen.V62.Cldr.BB ->
            Evergreen.V63.Cldr.BB

        Evergreen.V62.Cldr.BD ->
            Evergreen.V63.Cldr.BD

        Evergreen.V62.Cldr.BE ->
            Evergreen.V63.Cldr.BE

        Evergreen.V62.Cldr.BF ->
            Evergreen.V63.Cldr.BF

        Evergreen.V62.Cldr.BG ->
            Evergreen.V63.Cldr.BG

        Evergreen.V62.Cldr.BH ->
            Evergreen.V63.Cldr.BH

        Evergreen.V62.Cldr.BI ->
            Evergreen.V63.Cldr.BI

        Evergreen.V62.Cldr.BJ ->
            Evergreen.V63.Cldr.BJ

        Evergreen.V62.Cldr.BL ->
            Evergreen.V63.Cldr.BL

        Evergreen.V62.Cldr.BM ->
            Evergreen.V63.Cldr.BM

        Evergreen.V62.Cldr.BN ->
            Evergreen.V63.Cldr.BN

        Evergreen.V62.Cldr.BO ->
            Evergreen.V63.Cldr.BO

        Evergreen.V62.Cldr.BQ ->
            Evergreen.V63.Cldr.BQ

        Evergreen.V62.Cldr.BR ->
            Evergreen.V63.Cldr.BR

        Evergreen.V62.Cldr.BS ->
            Evergreen.V63.Cldr.BS

        Evergreen.V62.Cldr.BT ->
            Evergreen.V63.Cldr.BT

        Evergreen.V62.Cldr.BV ->
            Evergreen.V63.Cldr.BV

        Evergreen.V62.Cldr.BW ->
            Evergreen.V63.Cldr.BW

        Evergreen.V62.Cldr.BY ->
            Evergreen.V63.Cldr.BY

        Evergreen.V62.Cldr.BZ ->
            Evergreen.V63.Cldr.BZ

        Evergreen.V62.Cldr.CA ->
            Evergreen.V63.Cldr.CA

        Evergreen.V62.Cldr.CC ->
            Evergreen.V63.Cldr.CC

        Evergreen.V62.Cldr.CD ->
            Evergreen.V63.Cldr.CD

        Evergreen.V62.Cldr.CF ->
            Evergreen.V63.Cldr.CF

        Evergreen.V62.Cldr.CG ->
            Evergreen.V63.Cldr.CG

        Evergreen.V62.Cldr.CH ->
            Evergreen.V63.Cldr.CH

        Evergreen.V62.Cldr.CI ->
            Evergreen.V63.Cldr.CI

        Evergreen.V62.Cldr.CK ->
            Evergreen.V63.Cldr.CK

        Evergreen.V62.Cldr.CL ->
            Evergreen.V63.Cldr.CL

        Evergreen.V62.Cldr.CM ->
            Evergreen.V63.Cldr.CM

        Evergreen.V62.Cldr.CN ->
            Evergreen.V63.Cldr.CN

        Evergreen.V62.Cldr.CO ->
            Evergreen.V63.Cldr.CO

        Evergreen.V62.Cldr.CR ->
            Evergreen.V63.Cldr.CR

        Evergreen.V62.Cldr.CU ->
            Evergreen.V63.Cldr.CU

        Evergreen.V62.Cldr.CV ->
            Evergreen.V63.Cldr.CV

        Evergreen.V62.Cldr.CW ->
            Evergreen.V63.Cldr.CW

        Evergreen.V62.Cldr.CX ->
            Evergreen.V63.Cldr.CX

        Evergreen.V62.Cldr.CY ->
            Evergreen.V63.Cldr.CY

        Evergreen.V62.Cldr.CZ ->
            Evergreen.V63.Cldr.CZ

        Evergreen.V62.Cldr.DE ->
            Evergreen.V63.Cldr.DE

        Evergreen.V62.Cldr.DJ ->
            Evergreen.V63.Cldr.DJ

        Evergreen.V62.Cldr.DK ->
            Evergreen.V63.Cldr.DK

        Evergreen.V62.Cldr.DM ->
            Evergreen.V63.Cldr.DM

        Evergreen.V62.Cldr.DO ->
            Evergreen.V63.Cldr.DO

        Evergreen.V62.Cldr.DZ ->
            Evergreen.V63.Cldr.DZ

        Evergreen.V62.Cldr.EC ->
            Evergreen.V63.Cldr.EC

        Evergreen.V62.Cldr.EE ->
            Evergreen.V63.Cldr.EE

        Evergreen.V62.Cldr.EG ->
            Evergreen.V63.Cldr.EG

        Evergreen.V62.Cldr.EH ->
            Evergreen.V63.Cldr.EH

        Evergreen.V62.Cldr.ER ->
            Evergreen.V63.Cldr.ER

        Evergreen.V62.Cldr.ES ->
            Evergreen.V63.Cldr.ES

        Evergreen.V62.Cldr.ET ->
            Evergreen.V63.Cldr.ET

        Evergreen.V62.Cldr.FI ->
            Evergreen.V63.Cldr.FI

        Evergreen.V62.Cldr.FJ ->
            Evergreen.V63.Cldr.FJ

        Evergreen.V62.Cldr.FK ->
            Evergreen.V63.Cldr.FK

        Evergreen.V62.Cldr.FM ->
            Evergreen.V63.Cldr.FM

        Evergreen.V62.Cldr.FO ->
            Evergreen.V63.Cldr.FO

        Evergreen.V62.Cldr.FR ->
            Evergreen.V63.Cldr.FR

        Evergreen.V62.Cldr.GA ->
            Evergreen.V63.Cldr.GA

        Evergreen.V62.Cldr.GB ->
            Evergreen.V63.Cldr.GB

        Evergreen.V62.Cldr.GD ->
            Evergreen.V63.Cldr.GD

        Evergreen.V62.Cldr.GE ->
            Evergreen.V63.Cldr.GE

        Evergreen.V62.Cldr.GF ->
            Evergreen.V63.Cldr.GF

        Evergreen.V62.Cldr.GG ->
            Evergreen.V63.Cldr.GG

        Evergreen.V62.Cldr.GH ->
            Evergreen.V63.Cldr.GH

        Evergreen.V62.Cldr.GI ->
            Evergreen.V63.Cldr.GI

        Evergreen.V62.Cldr.GL ->
            Evergreen.V63.Cldr.GL

        Evergreen.V62.Cldr.GM ->
            Evergreen.V63.Cldr.GM

        Evergreen.V62.Cldr.GN ->
            Evergreen.V63.Cldr.GN

        Evergreen.V62.Cldr.GP ->
            Evergreen.V63.Cldr.GP

        Evergreen.V62.Cldr.GQ ->
            Evergreen.V63.Cldr.GQ

        Evergreen.V62.Cldr.GR ->
            Evergreen.V63.Cldr.GR

        Evergreen.V62.Cldr.GS ->
            Evergreen.V63.Cldr.GS

        Evergreen.V62.Cldr.GT_ ->
            Evergreen.V63.Cldr.GT_

        Evergreen.V62.Cldr.GU ->
            Evergreen.V63.Cldr.GU

        Evergreen.V62.Cldr.GW ->
            Evergreen.V63.Cldr.GW

        Evergreen.V62.Cldr.GY ->
            Evergreen.V63.Cldr.GY

        Evergreen.V62.Cldr.HK ->
            Evergreen.V63.Cldr.HK

        Evergreen.V62.Cldr.HM ->
            Evergreen.V63.Cldr.HM

        Evergreen.V62.Cldr.HN ->
            Evergreen.V63.Cldr.HN

        Evergreen.V62.Cldr.HR ->
            Evergreen.V63.Cldr.HR

        Evergreen.V62.Cldr.HT ->
            Evergreen.V63.Cldr.HT

        Evergreen.V62.Cldr.HU ->
            Evergreen.V63.Cldr.HU

        Evergreen.V62.Cldr.ID ->
            Evergreen.V63.Cldr.ID

        Evergreen.V62.Cldr.IE ->
            Evergreen.V63.Cldr.IE

        Evergreen.V62.Cldr.IL ->
            Evergreen.V63.Cldr.IL

        Evergreen.V62.Cldr.IM ->
            Evergreen.V63.Cldr.IM

        Evergreen.V62.Cldr.IN ->
            Evergreen.V63.Cldr.IN

        Evergreen.V62.Cldr.IO ->
            Evergreen.V63.Cldr.IO

        Evergreen.V62.Cldr.IQ ->
            Evergreen.V63.Cldr.IQ

        Evergreen.V62.Cldr.IR ->
            Evergreen.V63.Cldr.IR

        Evergreen.V62.Cldr.IS ->
            Evergreen.V63.Cldr.IS

        Evergreen.V62.Cldr.IT ->
            Evergreen.V63.Cldr.IT

        Evergreen.V62.Cldr.JE ->
            Evergreen.V63.Cldr.JE

        Evergreen.V62.Cldr.JM ->
            Evergreen.V63.Cldr.JM

        Evergreen.V62.Cldr.JO ->
            Evergreen.V63.Cldr.JO

        Evergreen.V62.Cldr.JP ->
            Evergreen.V63.Cldr.JP

        Evergreen.V62.Cldr.KE ->
            Evergreen.V63.Cldr.KE

        Evergreen.V62.Cldr.KG ->
            Evergreen.V63.Cldr.KG

        Evergreen.V62.Cldr.KH ->
            Evergreen.V63.Cldr.KH

        Evergreen.V62.Cldr.KI ->
            Evergreen.V63.Cldr.KI

        Evergreen.V62.Cldr.KM ->
            Evergreen.V63.Cldr.KM

        Evergreen.V62.Cldr.KN ->
            Evergreen.V63.Cldr.KN

        Evergreen.V62.Cldr.KP ->
            Evergreen.V63.Cldr.KP

        Evergreen.V62.Cldr.KR ->
            Evergreen.V63.Cldr.KR

        Evergreen.V62.Cldr.KW ->
            Evergreen.V63.Cldr.KW

        Evergreen.V62.Cldr.KY ->
            Evergreen.V63.Cldr.KY

        Evergreen.V62.Cldr.KZ ->
            Evergreen.V63.Cldr.KZ

        Evergreen.V62.Cldr.LA ->
            Evergreen.V63.Cldr.LA

        Evergreen.V62.Cldr.LB ->
            Evergreen.V63.Cldr.LB

        Evergreen.V62.Cldr.LC ->
            Evergreen.V63.Cldr.LC

        Evergreen.V62.Cldr.LI ->
            Evergreen.V63.Cldr.LI

        Evergreen.V62.Cldr.LK ->
            Evergreen.V63.Cldr.LK

        Evergreen.V62.Cldr.LR ->
            Evergreen.V63.Cldr.LR

        Evergreen.V62.Cldr.LS ->
            Evergreen.V63.Cldr.LS

        Evergreen.V62.Cldr.LT_ ->
            Evergreen.V63.Cldr.LT_

        Evergreen.V62.Cldr.LU ->
            Evergreen.V63.Cldr.LU

        Evergreen.V62.Cldr.LV ->
            Evergreen.V63.Cldr.LV

        Evergreen.V62.Cldr.LY ->
            Evergreen.V63.Cldr.LY

        Evergreen.V62.Cldr.MA ->
            Evergreen.V63.Cldr.MA

        Evergreen.V62.Cldr.MC ->
            Evergreen.V63.Cldr.MC

        Evergreen.V62.Cldr.MD ->
            Evergreen.V63.Cldr.MD

        Evergreen.V62.Cldr.ME ->
            Evergreen.V63.Cldr.ME

        Evergreen.V62.Cldr.MF ->
            Evergreen.V63.Cldr.MF

        Evergreen.V62.Cldr.MG ->
            Evergreen.V63.Cldr.MG

        Evergreen.V62.Cldr.MH ->
            Evergreen.V63.Cldr.MH

        Evergreen.V62.Cldr.MK ->
            Evergreen.V63.Cldr.MK

        Evergreen.V62.Cldr.ML ->
            Evergreen.V63.Cldr.ML

        Evergreen.V62.Cldr.MM ->
            Evergreen.V63.Cldr.MM

        Evergreen.V62.Cldr.MN ->
            Evergreen.V63.Cldr.MN

        Evergreen.V62.Cldr.MO ->
            Evergreen.V63.Cldr.MO

        Evergreen.V62.Cldr.MP ->
            Evergreen.V63.Cldr.MP

        Evergreen.V62.Cldr.MQ ->
            Evergreen.V63.Cldr.MQ

        Evergreen.V62.Cldr.MR ->
            Evergreen.V63.Cldr.MR

        Evergreen.V62.Cldr.MS ->
            Evergreen.V63.Cldr.MS

        Evergreen.V62.Cldr.MT ->
            Evergreen.V63.Cldr.MT

        Evergreen.V62.Cldr.MU ->
            Evergreen.V63.Cldr.MU

        Evergreen.V62.Cldr.MV ->
            Evergreen.V63.Cldr.MV

        Evergreen.V62.Cldr.MW ->
            Evergreen.V63.Cldr.MW

        Evergreen.V62.Cldr.MX ->
            Evergreen.V63.Cldr.MX

        Evergreen.V62.Cldr.MY ->
            Evergreen.V63.Cldr.MY

        Evergreen.V62.Cldr.MZ ->
            Evergreen.V63.Cldr.MZ

        Evergreen.V62.Cldr.NA ->
            Evergreen.V63.Cldr.NA

        Evergreen.V62.Cldr.NC ->
            Evergreen.V63.Cldr.NC

        Evergreen.V62.Cldr.NE ->
            Evergreen.V63.Cldr.NE

        Evergreen.V62.Cldr.NF ->
            Evergreen.V63.Cldr.NF

        Evergreen.V62.Cldr.NG ->
            Evergreen.V63.Cldr.NG

        Evergreen.V62.Cldr.NI ->
            Evergreen.V63.Cldr.NI

        Evergreen.V62.Cldr.NL ->
            Evergreen.V63.Cldr.NL

        Evergreen.V62.Cldr.NO ->
            Evergreen.V63.Cldr.NO

        Evergreen.V62.Cldr.NP ->
            Evergreen.V63.Cldr.NP

        Evergreen.V62.Cldr.NR ->
            Evergreen.V63.Cldr.NR

        Evergreen.V62.Cldr.NU ->
            Evergreen.V63.Cldr.NU

        Evergreen.V62.Cldr.NZ ->
            Evergreen.V63.Cldr.NZ

        Evergreen.V62.Cldr.OM ->
            Evergreen.V63.Cldr.OM

        Evergreen.V62.Cldr.PA ->
            Evergreen.V63.Cldr.PA

        Evergreen.V62.Cldr.PE ->
            Evergreen.V63.Cldr.PE

        Evergreen.V62.Cldr.PF ->
            Evergreen.V63.Cldr.PF

        Evergreen.V62.Cldr.PG ->
            Evergreen.V63.Cldr.PG

        Evergreen.V62.Cldr.PH ->
            Evergreen.V63.Cldr.PH

        Evergreen.V62.Cldr.PK ->
            Evergreen.V63.Cldr.PK

        Evergreen.V62.Cldr.PL ->
            Evergreen.V63.Cldr.PL

        Evergreen.V62.Cldr.PM ->
            Evergreen.V63.Cldr.PM

        Evergreen.V62.Cldr.PN ->
            Evergreen.V63.Cldr.PN

        Evergreen.V62.Cldr.PR ->
            Evergreen.V63.Cldr.PR

        Evergreen.V62.Cldr.PS ->
            Evergreen.V63.Cldr.PS

        Evergreen.V62.Cldr.PT ->
            Evergreen.V63.Cldr.PT

        Evergreen.V62.Cldr.PW ->
            Evergreen.V63.Cldr.PW

        Evergreen.V62.Cldr.PY ->
            Evergreen.V63.Cldr.PY

        Evergreen.V62.Cldr.QA ->
            Evergreen.V63.Cldr.QA

        Evergreen.V62.Cldr.RE ->
            Evergreen.V63.Cldr.RE

        Evergreen.V62.Cldr.RO ->
            Evergreen.V63.Cldr.RO

        Evergreen.V62.Cldr.RS ->
            Evergreen.V63.Cldr.RS

        Evergreen.V62.Cldr.RU ->
            Evergreen.V63.Cldr.RU

        Evergreen.V62.Cldr.RW ->
            Evergreen.V63.Cldr.RW

        Evergreen.V62.Cldr.SA ->
            Evergreen.V63.Cldr.SA

        Evergreen.V62.Cldr.SB ->
            Evergreen.V63.Cldr.SB

        Evergreen.V62.Cldr.SC ->
            Evergreen.V63.Cldr.SC

        Evergreen.V62.Cldr.SD ->
            Evergreen.V63.Cldr.SD

        Evergreen.V62.Cldr.SE ->
            Evergreen.V63.Cldr.SE

        Evergreen.V62.Cldr.SG ->
            Evergreen.V63.Cldr.SG

        Evergreen.V62.Cldr.SH ->
            Evergreen.V63.Cldr.SH

        Evergreen.V62.Cldr.SI ->
            Evergreen.V63.Cldr.SI

        Evergreen.V62.Cldr.SJ ->
            Evergreen.V63.Cldr.SJ

        Evergreen.V62.Cldr.SK ->
            Evergreen.V63.Cldr.SK

        Evergreen.V62.Cldr.SL ->
            Evergreen.V63.Cldr.SL

        Evergreen.V62.Cldr.SM ->
            Evergreen.V63.Cldr.SM

        Evergreen.V62.Cldr.SN ->
            Evergreen.V63.Cldr.SN

        Evergreen.V62.Cldr.SO ->
            Evergreen.V63.Cldr.SO

        Evergreen.V62.Cldr.SR ->
            Evergreen.V63.Cldr.SR

        Evergreen.V62.Cldr.SS ->
            Evergreen.V63.Cldr.SS

        Evergreen.V62.Cldr.ST ->
            Evergreen.V63.Cldr.ST

        Evergreen.V62.Cldr.SV ->
            Evergreen.V63.Cldr.SV

        Evergreen.V62.Cldr.SX ->
            Evergreen.V63.Cldr.SX

        Evergreen.V62.Cldr.SY ->
            Evergreen.V63.Cldr.SY

        Evergreen.V62.Cldr.SZ ->
            Evergreen.V63.Cldr.SZ

        Evergreen.V62.Cldr.TC ->
            Evergreen.V63.Cldr.TC

        Evergreen.V62.Cldr.TD ->
            Evergreen.V63.Cldr.TD

        Evergreen.V62.Cldr.TF ->
            Evergreen.V63.Cldr.TF

        Evergreen.V62.Cldr.TG ->
            Evergreen.V63.Cldr.TG

        Evergreen.V62.Cldr.TH ->
            Evergreen.V63.Cldr.TH

        Evergreen.V62.Cldr.TJ ->
            Evergreen.V63.Cldr.TJ

        Evergreen.V62.Cldr.TK ->
            Evergreen.V63.Cldr.TK

        Evergreen.V62.Cldr.TL ->
            Evergreen.V63.Cldr.TL

        Evergreen.V62.Cldr.TM ->
            Evergreen.V63.Cldr.TM

        Evergreen.V62.Cldr.TN ->
            Evergreen.V63.Cldr.TN

        Evergreen.V62.Cldr.TO ->
            Evergreen.V63.Cldr.TO

        Evergreen.V62.Cldr.TR ->
            Evergreen.V63.Cldr.TR

        Evergreen.V62.Cldr.TT ->
            Evergreen.V63.Cldr.TT

        Evergreen.V62.Cldr.TV ->
            Evergreen.V63.Cldr.TV

        Evergreen.V62.Cldr.TW ->
            Evergreen.V63.Cldr.TW

        Evergreen.V62.Cldr.TZ ->
            Evergreen.V63.Cldr.TZ

        Evergreen.V62.Cldr.UA ->
            Evergreen.V63.Cldr.UA

        Evergreen.V62.Cldr.UG ->
            Evergreen.V63.Cldr.UG

        Evergreen.V62.Cldr.UM ->
            Evergreen.V63.Cldr.UM

        Evergreen.V62.Cldr.US ->
            Evergreen.V63.Cldr.US

        Evergreen.V62.Cldr.UY ->
            Evergreen.V63.Cldr.UY

        Evergreen.V62.Cldr.UZ ->
            Evergreen.V63.Cldr.UZ

        Evergreen.V62.Cldr.VA ->
            Evergreen.V63.Cldr.VA

        Evergreen.V62.Cldr.VC ->
            Evergreen.V63.Cldr.VC

        Evergreen.V62.Cldr.VE ->
            Evergreen.V63.Cldr.VE

        Evergreen.V62.Cldr.VG ->
            Evergreen.V63.Cldr.VG

        Evergreen.V62.Cldr.VI ->
            Evergreen.V63.Cldr.VI

        Evergreen.V62.Cldr.VN ->
            Evergreen.V63.Cldr.VN

        Evergreen.V62.Cldr.VU ->
            Evergreen.V63.Cldr.VU

        Evergreen.V62.Cldr.WF ->
            Evergreen.V63.Cldr.WF

        Evergreen.V62.Cldr.WS ->
            Evergreen.V63.Cldr.WS

        Evergreen.V62.Cldr.XK ->
            Evergreen.V63.Cldr.XK

        Evergreen.V62.Cldr.YE ->
            Evergreen.V63.Cldr.YE

        Evergreen.V62.Cldr.YT ->
            Evergreen.V63.Cldr.YT

        Evergreen.V62.Cldr.ZA ->
            Evergreen.V63.Cldr.ZA

        Evergreen.V62.Cldr.ZM ->
            Evergreen.V63.Cldr.ZM

        Evergreen.V62.Cldr.ZW ->
            Evergreen.V63.Cldr.ZW


migrate_Main_Model : Evergreen.V62.Main.Model -> Evergreen.V63.Main.Model
migrate_Main_Model old =
    { key = old.key
    , url = old.url
    , page = old.page |> migrate_Main_Pages_Model_Model
    , layout = old.layout
    , shared = old.shared |> migrate_Shared_Model
    }


migrate_Main_Msg : Evergreen.V62.Main.Msg -> Evergreen.V63.Main.Msg
migrate_Main_Msg old =
    case old of
        Evergreen.V62.Main.UrlRequested p0 ->
            Evergreen.V63.Main.UrlRequested p0

        Evergreen.V62.Main.UrlChanged p0 ->
            Evergreen.V63.Main.UrlChanged p0

        Evergreen.V62.Main.Page p0 ->
            Evergreen.V63.Main.Page (p0 |> migrate_Main_Pages_Msg_Msg)

        Evergreen.V62.Main.Layout p0 ->
            Evergreen.V63.Main.Layout p0

        Evergreen.V62.Main.Shared p0 ->
            Evergreen.V63.Main.Shared (p0 |> migrate_Shared_Msg)

        Evergreen.V62.Main.Batch p0 ->
            Evergreen.V63.Main.Batch (p0 |> List.map migrate_Main_Msg)


migrate_Main_Pages_Model_Model : Evergreen.V62.Main.Pages.Model.Model -> Evergreen.V63.Main.Pages.Model.Model
migrate_Main_Pages_Model_Model old =
    case old of
        Evergreen.V62.Main.Pages.Model.Home_ p0 ->
            Evergreen.V63.Main.Pages.Model.Home_ (p0 |> migrate_Pages_Home__Model)

        Evergreen.V62.Main.Pages.Model.Finished p0 ->
            Evergreen.V63.Main.Pages.Model.Finished p0

        Evergreen.V62.Main.Pages.Model.Play p0 ->
            Evergreen.V63.Main.Pages.Model.Play (p0 |> migrate_Pages_Play_Model)

        Evergreen.V62.Main.Pages.Model.Sort p0 ->
            Evergreen.V63.Main.Pages.Model.Sort (p0 |> migrate_Pages_Sort_Model)

        Evergreen.V62.Main.Pages.Model.NotFound_ p0 ->
            Evergreen.V63.Main.Pages.Model.NotFound_ (p0 |> migrate_Pages_NotFound__Model)

        Evergreen.V62.Main.Pages.Model.Redirecting_ ->
            Evergreen.V63.Main.Pages.Model.Redirecting_

        Evergreen.V62.Main.Pages.Model.Loading_ ->
            Evergreen.V63.Main.Pages.Model.Loading_


migrate_Main_Pages_Msg_Msg : Evergreen.V62.Main.Pages.Msg.Msg -> Evergreen.V63.Main.Pages.Msg.Msg
migrate_Main_Pages_Msg_Msg old =
    case old of
        Evergreen.V62.Main.Pages.Msg.Home_ p0 ->
            Evergreen.V63.Main.Pages.Msg.Home_ (p0 |> migrate_Pages_Home__Msg)

        Evergreen.V62.Main.Pages.Msg.Finished p0 ->
            Evergreen.V63.Main.Pages.Msg.Finished (p0 |> migrate_Pages_Finished_Msg)

        Evergreen.V62.Main.Pages.Msg.Play p0 ->
            Evergreen.V63.Main.Pages.Msg.Play (p0 |> migrate_Pages_Play_Msg)

        Evergreen.V62.Main.Pages.Msg.Sort p0 ->
            Evergreen.V63.Main.Pages.Msg.Sort (p0 |> migrate_Pages_Sort_Msg)

        Evergreen.V62.Main.Pages.Msg.NotFound_ p0 ->
            Evergreen.V63.Main.Pages.Msg.NotFound_ (p0 |> migrate_Pages_NotFound__Msg)


migrate_Pages_Finished_Msg : Evergreen.V62.Pages.Finished.Msg -> Evergreen.V63.Pages.Finished.Msg
migrate_Pages_Finished_Msg old =
    case old of
        Evergreen.V62.Pages.Finished.Play ->
            Evergreen.V63.Pages.Finished.Play


migrate_Pages_Home__Model : Evergreen.V62.Pages.Home_.Model -> Evergreen.V63.Pages.Home_.Model
migrate_Pages_Home__Model old =
    old


migrate_Pages_Home__Msg : Evergreen.V62.Pages.Home_.Msg -> Evergreen.V63.Pages.Home_.Msg
migrate_Pages_Home__Msg old =
    case old of
        Evergreen.V62.Pages.Home_.Play ->
            Evergreen.V63.Pages.Home_.Play

        Evergreen.V62.Pages.Home_.ChangeOptions p0 ->
            Evergreen.V63.Pages.Home_.ChangeOptions (p0 |> migrate_Shared_Model_GameOptions)

        Evergreen.V62.Pages.Home_.ChangingLocale p0 ->
            Evergreen.V63.Pages.Home_.ChangingLocale p0

        Evergreen.V62.Pages.Home_.Locale p0 ->
            Evergreen.V63.Pages.Home_.Locale p0


migrate_Pages_NotFound__Model : Evergreen.V62.Pages.NotFound_.Model -> Evergreen.V63.Pages.NotFound_.Model
migrate_Pages_NotFound__Model old =
    old


migrate_Pages_NotFound__Msg : Evergreen.V62.Pages.NotFound_.Msg -> Evergreen.V63.Pages.NotFound_.Msg
migrate_Pages_NotFound__Msg old =
    case old of
        Evergreen.V62.Pages.NotFound_.ExampleMsgReplaceMe ->
            Evergreen.V63.Pages.NotFound_.ExampleMsgReplaceMe


migrate_Pages_Play_InnerModel : Evergreen.V62.Pages.Play.InnerModel -> Evergreen.V63.Pages.Play.InnerModel
migrate_Pages_Play_InnerModel old =
    { current = old.current |> migrate_Shared_Model_Card
    , picked = old.picked |> Maybe.map migrate_Shared_Model_Country
    , queue = old.queue |> List.map migrate_Shared_Model_Card
    , score = old.score
    }


migrate_Pages_Play_Model : Evergreen.V62.Pages.Play.Model -> Evergreen.V63.Pages.Play.Model
migrate_Pages_Play_Model old =
    old |> Maybe.map migrate_Pages_Play_InnerModel


migrate_Pages_Play_Msg : Evergreen.V62.Pages.Play.Msg -> Evergreen.V63.Pages.Play.Msg
migrate_Pages_Play_Msg old =
    case old of
        Evergreen.V62.Pages.Play.Pick p0 ->
            Evergreen.V63.Pages.Play.Pick (p0 |> migrate_Shared_Model_Country)

        Evergreen.V62.Pages.Play.Next ->
            Evergreen.V63.Pages.Play.Next


migrate_Pages_Sort_Model : Evergreen.V62.Pages.Sort.Model -> Evergreen.V63.Pages.Sort.Model
migrate_Pages_Sort_Model old =
    { groups = old.groups |> List.map (List.map migrate_Shared_Model_Country)
    , selected = old.selected |> Maybe.map migrate_Shared_Model_Country
    }


migrate_Pages_Sort_Msg : Evergreen.V62.Pages.Sort.Msg -> Evergreen.V63.Pages.Sort.Msg
migrate_Pages_Sort_Msg old =
    case old of
        Evergreen.V62.Pages.Sort.Move p0 p1 ->
            Evergreen.V63.Pages.Sort.Move (p0 |> migrate_Shared_Model_Country) p1

        Evergreen.V62.Pages.Sort.SelectForMove p0 ->
            Evergreen.V63.Pages.Sort.SelectForMove (p0 |> migrate_Shared_Model_Country)


migrate_Shared_Model : Evergreen.V62.Shared.Model -> Evergreen.V63.Shared.Model
migrate_Shared_Model old =
    old |> migrate_Shared_Model_Model


migrate_Shared_Model_Card : Evergreen.V62.Shared.Model.Card -> Evergreen.V63.Shared.Model.Card
migrate_Shared_Model_Card old =
    { guessing = old.guessing |> migrate_Shared_Model_Country
    , answers = old.answers |> List.map migrate_Shared_Model_Country
    , guessFrom = old.guessFrom |> migrate_Shared_Model_Property
    , guessTo = old.guessTo |> migrate_Shared_Model_Property
    }


migrate_Shared_Model_Context : Evergreen.V62.Shared.Model.Context -> Evergreen.V63.Shared.Model.Context
migrate_Shared_Model_Context old =
    old


migrate_Shared_Model_Continent : Evergreen.V62.Shared.Model.Continent -> Evergreen.V63.Shared.Model.Continent
migrate_Shared_Model_Continent old =
    case old of
        Evergreen.V62.Shared.Model.Africa ->
            Evergreen.V63.Shared.Model.Africa

        Evergreen.V62.Shared.Model.Antarctica ->
            Evergreen.V63.Shared.Model.Antarctica

        Evergreen.V62.Shared.Model.Asia ->
            Evergreen.V63.Shared.Model.Asia

        Evergreen.V62.Shared.Model.Europe ->
            Evergreen.V63.Shared.Model.Europe

        Evergreen.V62.Shared.Model.NorthAmerica ->
            Evergreen.V63.Shared.Model.NorthAmerica

        Evergreen.V62.Shared.Model.Oceania ->
            Evergreen.V63.Shared.Model.Oceania

        Evergreen.V62.Shared.Model.SouthAmerica ->
            Evergreen.V63.Shared.Model.SouthAmerica


migrate_Shared_Model_Country : Evergreen.V62.Shared.Model.Country -> Evergreen.V63.Shared.Model.Country
migrate_Shared_Model_Country old =
    case old of
        Evergreen.V62.Shared.Model.Iso3166 p0 ->
            Evergreen.V63.Shared.Model.Iso3166 (p0 |> migrate_Cldr_CountryCode)

        Evergreen.V62.Shared.Model.NonIso3166 p0 ->
            Evergreen.V63.Shared.Model.NonIso3166 (p0 |> migrate_Shared_Model_NonIso3166)


migrate_Shared_Model_Difficulty : Evergreen.V62.Shared.Model.Difficulty -> Evergreen.V63.Shared.Model.Difficulty
migrate_Shared_Model_Difficulty old =
    case old of
        Evergreen.V62.Shared.Model.Easy ->
            Evergreen.V63.Shared.Model.Easy

        Evergreen.V62.Shared.Model.Normal ->
            Evergreen.V63.Shared.Model.Normal

        Evergreen.V62.Shared.Model.Hard ->
            Evergreen.V63.Shared.Model.Hard


migrate_Shared_Model_GameOptions : Evergreen.V62.Shared.Model.GameOptions -> Evergreen.V63.Shared.Model.GameOptions
migrate_Shared_Model_GameOptions old =
    { gameLength = old.gameLength
    , difficulty = old.difficulty |> migrate_Shared_Model_Difficulty
    , answersPerCard = old.answersPerCard
    , guessPatterns = old.guessPatterns |> List.map (Tuple.mapBoth migrate_Shared_Model_Property migrate_Shared_Model_Property)
    , categories = [ Evergreen.V63.Shared.Model.State ]
    , continents = old.continents |> List.map migrate_Shared_Model_Continent
    }


migrate_Shared_Model_Model : Evergreen.V62.Shared.Model.Model -> Evergreen.V63.Shared.Model.Model
migrate_Shared_Model_Model old =
    { context = old.context |> migrate_Shared_Model_Context
    , options = old.options |> migrate_Shared_Model_GameOptions
    , seed = old.seed
    , screen = old.screen |> migrate_Shared_Model_Screen
    }


migrate_Shared_Model_NonIso3166 : Evergreen.V62.Shared.Model.NonIso3166 -> Evergreen.V63.Shared.Model.NonIso3166
migrate_Shared_Model_NonIso3166 old =
    case old of
        Evergreen.V62.Shared.Model.Abkhazia ->
            Evergreen.V63.Shared.Model.Abkhazia

        Evergreen.V62.Shared.Model.NorthernCyprus ->
            Evergreen.V63.Shared.Model.NorthernCyprus

        Evergreen.V62.Shared.Model.Somaliland ->
            Evergreen.V63.Shared.Model.Somaliland

        Evergreen.V62.Shared.Model.SouthOssetia ->
            Evergreen.V63.Shared.Model.SouthOssetia

        Evergreen.V62.Shared.Model.Transnistria ->
            Evergreen.V63.Shared.Model.Transnistria


migrate_Shared_Model_Property : Evergreen.V62.Shared.Model.Property -> Evergreen.V63.Shared.Model.Property
migrate_Shared_Model_Property old =
    case old of
        Evergreen.V62.Shared.Model.Flag ->
            Evergreen.V63.Shared.Model.Flag

        Evergreen.V62.Shared.Model.Name ->
            Evergreen.V63.Shared.Model.Name


migrate_Shared_Model_Screen : Evergreen.V62.Shared.Model.Screen -> Evergreen.V63.Shared.Model.Screen
migrate_Shared_Model_Screen old =
    old


migrate_Shared_Msg : Evergreen.V62.Shared.Msg -> Evergreen.V63.Shared.Msg
migrate_Shared_Msg old =
    old |> migrate_Shared_Msg_Msg


migrate_Shared_Msg_Msg : Evergreen.V62.Shared.Msg.Msg -> Evergreen.V63.Shared.Msg.Msg
migrate_Shared_Msg_Msg old =
    case old of
        Evergreen.V62.Shared.Msg.Seed p0 ->
            Evergreen.V63.Shared.Msg.Seed p0

        Evergreen.V62.Shared.Msg.Locale p0 ->
            Evergreen.V63.Shared.Msg.Locale p0

        Evergreen.V62.Shared.Msg.ChangeOptions p0 ->
            Evergreen.V63.Shared.Msg.ChangeOptions (p0 |> migrate_Shared_Model_GameOptions)

        Evergreen.V62.Shared.Msg.Play ->
            Evergreen.V63.Shared.Msg.Play

        Evergreen.V62.Shared.Msg.Finished p0 ->
            Evergreen.V63.Shared.Msg.Finished p0

        Evergreen.V62.Shared.Msg.Nop ->
            Evergreen.V63.Shared.Msg.Nop

        Evergreen.V62.Shared.Msg.Resized p0 p1 ->
            Evergreen.V63.Shared.Msg.Resized p0 p1
