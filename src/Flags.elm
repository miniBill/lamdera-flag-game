module Flags exposing (Continent(..), PerCountryData, allCards, continentToString, continents, getSimilarFlags, perCountryDataToFunction, similarityGroups, toContinent)

import Iso3166 exposing (CountryCode(..))
import List.Extra
import Random
import Random.List
import Types exposing (Card, Difficulty(..), GameOptions, Property(..))


allCards : GameOptions -> Random.Seed -> ( List Card, Random.Seed )
allCards options seed =
    let
        ( finalSeed, result ) =
            Iso3166.all
                |> List.foldl
                    (\input ( seedAcc, acc ) ->
                        let
                            ( card, newSeed ) =
                                toCard options input seedAcc
                        in
                        ( newSeed, card :: acc )
                    )
                    ( seed, [] )
    in
    Random.step
        (Random.List.shuffle result
            |> Random.map (List.take 20)
        )
        finalSeed


type alias PerCountryData b =
    { ad : b
    , ae : b
    , af : b
    , ag : b
    , ai : b
    , al : b
    , am : b
    , ao : b
    , aq : b
    , ar : b
    , as_ : b
    , at : b
    , au : b
    , aw : b
    , ax : b
    , az : b
    , ba : b
    , bb : b
    , bd : b
    , be : b
    , bf : b
    , bg : b
    , bh : b
    , bi : b
    , bj : b
    , bl : b
    , bm : b
    , bn : b
    , bo : b
    , bq : b
    , br : b
    , bs : b
    , bt : b
    , bv : b
    , bw : b
    , by : b
    , bz : b
    , ca : b
    , cc : b
    , cd : b
    , cf : b
    , cg : b
    , ch : b
    , ci : b
    , ck : b
    , cl : b
    , cm : b
    , cn : b
    , co : b
    , cr : b
    , cu : b
    , cv : b
    , cw : b
    , cx : b
    , cy : b
    , cz : b
    , de : b
    , dj : b
    , dk : b
    , dm : b
    , do : b
    , dz : b
    , ec : b
    , ee : b
    , eg : b
    , eh : b
    , er : b
    , es : b
    , et : b
    , fi : b
    , fj : b
    , fk : b
    , fm : b
    , fo : b
    , fr : b
    , ga : b
    , gb : b
    , gd : b
    , ge : b
    , gf : b
    , gg : b
    , gh : b
    , gi : b
    , gl : b
    , gm : b
    , gn : b
    , gp : b
    , gq : b
    , gr : b
    , gs : b
    , gt : b
    , gu : b
    , gw : b
    , gy : b
    , hk : b
    , hm : b
    , hn : b
    , hr : b
    , ht : b
    , hu : b
    , id : b
    , ie : b
    , il : b
    , im : b
    , in_ : b
    , io : b
    , iq : b
    , ir : b
    , is : b
    , it : b
    , je : b
    , jm : b
    , jo : b
    , jp : b
    , ke : b
    , kg : b
    , kh : b
    , ki : b
    , km : b
    , kn : b
    , kp : b
    , kr : b
    , kw : b
    , ky : b
    , kz : b
    , la : b
    , lb : b
    , lc : b
    , li : b
    , lk : b
    , lr : b
    , ls : b
    , lt : b
    , lu : b
    , lv : b
    , ly : b
    , ma : b
    , mc : b
    , md : b
    , me : b
    , mf : b
    , mg : b
    , mh : b
    , mk : b
    , ml : b
    , mm : b
    , mn : b
    , mo : b
    , mp : b
    , mq : b
    , mr : b
    , ms : b
    , mt : b
    , mu : b
    , mv : b
    , mw : b
    , mx : b
    , my : b
    , mz : b
    , na : b
    , nc : b
    , ne : b
    , nf : b
    , ng : b
    , ni : b
    , nl : b
    , no : b
    , np : b
    , nr : b
    , nu : b
    , nz : b
    , om : b
    , pa : b
    , pe : b
    , pf : b
    , pg : b
    , ph : b
    , pk : b
    , pl : b
    , pm : b
    , pn : b
    , pr : b
    , ps : b
    , pt : b
    , pw : b
    , py : b
    , qa : b
    , re : b
    , ro : b
    , rs : b
    , ru : b
    , rw : b
    , sa : b
    , sb : b
    , sc : b
    , sd : b
    , se : b
    , sg : b
    , sh : b
    , si : b
    , sj : b
    , sk : b
    , sl : b
    , sm : b
    , sn : b
    , so : b
    , sr : b
    , ss : b
    , st : b
    , sv : b
    , sx : b
    , sy : b
    , sz : b
    , tc : b
    , td : b
    , tf : b
    , tg : b
    , th : b
    , tj : b
    , tk : b
    , tl : b
    , tm : b
    , tn : b
    , to : b
    , tr : b
    , tt : b
    , tv : b
    , tw : b
    , tz : b
    , ua : b
    , ug : b
    , um : b
    , us : b
    , uy : b
    , uz : b
    , va : b
    , vc : b
    , ve : b
    , vg : b
    , vi : b
    , vn : b
    , vu : b
    , wf : b
    , ws : b
    , ye : b
    , yt : b
    , za : b
    , zm : b
    , zw : b
    }


functionToPerCountryData : (CountryCode -> a) -> PerCountryData a
functionToPerCountryData f =
    { ad = f AD
    , ae = f AE
    , af = f AF
    , ag = f AG
    , ai = f AI
    , al = f AL
    , am = f AM
    , ao = f AO
    , aq = f AQ
    , ar = f AR
    , as_ = f AS
    , at = f AT
    , au = f AU
    , aw = f AW
    , ax = f AX
    , az = f AZ
    , ba = f BA
    , bb = f BB
    , bd = f BD
    , be = f BE
    , bf = f BF
    , bg = f BG
    , bh = f BH
    , bi = f BI
    , bj = f BJ
    , bl = f BL
    , bm = f BM
    , bn = f BN
    , bo = f BO
    , bq = f BQ
    , br = f BR
    , bs = f BS
    , bt = f BT
    , bv = f BV
    , bw = f BW
    , by = f BY
    , bz = f BZ
    , ca = f CA
    , cc = f CC
    , cd = f CD
    , cf = f CF
    , cg = f CG
    , ch = f CH
    , ci = f CI
    , ck = f CK
    , cl = f CL
    , cm = f CM
    , cn = f CN
    , co = f CO
    , cr = f CR
    , cu = f CU
    , cv = f CV
    , cw = f CW
    , cx = f CX
    , cy = f CY
    , cz = f CZ
    , de = f DE
    , dj = f DJ
    , dk = f DK
    , dm = f DM
    , do = f DO
    , dz = f DZ
    , ec = f EC
    , ee = f EE
    , eg = f EG
    , eh = f EH
    , er = f ER
    , es = f ES
    , et = f ET
    , fi = f FI
    , fj = f FJ
    , fk = f FK
    , fm = f FM
    , fo = f FO
    , fr = f FR
    , ga = f GA
    , gb = f GB
    , gd = f GD
    , ge = f GE
    , gf = f GF
    , gg = f GG
    , gh = f GH
    , gi = f GI
    , gl = f GL
    , gm = f GM
    , gn = f GN
    , gp = f GP
    , gq = f GQ
    , gr = f GR
    , gs = f GS
    , gt = f GT_
    , gu = f GU
    , gw = f GW
    , gy = f GY
    , hk = f HK
    , hm = f HM
    , hn = f HN
    , hr = f HR
    , ht = f HT
    , hu = f HU
    , id = f ID
    , ie = f IE
    , il = f IL
    , im = f IM
    , in_ = f IN
    , io = f IO
    , iq = f IQ
    , ir = f IR
    , is = f IS
    , it = f IT
    , je = f JE
    , jm = f JM
    , jo = f JO
    , jp = f JP
    , ke = f KE
    , kg = f KG
    , kh = f KH
    , ki = f KI
    , km = f KM
    , kn = f KN
    , kp = f KP
    , kr = f KR
    , kw = f KW
    , ky = f KY
    , kz = f KZ
    , la = f LA
    , lb = f LB
    , lc = f LC
    , li = f LI
    , lk = f LK
    , lr = f LR
    , ls = f LS
    , lt = f LT_
    , lu = f LU
    , lv = f LV
    , ly = f LY
    , ma = f MA
    , mc = f MC
    , md = f MD
    , me = f ME
    , mf = f MF
    , mg = f MG
    , mh = f MH
    , mk = f MK
    , ml = f ML
    , mm = f MM
    , mn = f MN
    , mo = f MO
    , mp = f MP
    , mq = f MQ
    , mr = f MR
    , ms = f MS
    , mt = f MT
    , mu = f MU
    , mv = f MV
    , mw = f MW
    , mx = f MX
    , my = f MY
    , mz = f MZ
    , na = f NA
    , nc = f NC
    , ne = f NE
    , nf = f NF
    , ng = f NG
    , ni = f NI
    , nl = f NL
    , no = f NO
    , np = f NP
    , nr = f NR
    , nu = f NU
    , nz = f NZ
    , om = f OM
    , pa = f PA
    , pe = f PE
    , pf = f PF
    , pg = f PG
    , ph = f PH
    , pk = f PK
    , pl = f PL
    , pm = f PM
    , pn = f PN
    , pr = f PR
    , ps = f PS
    , pt = f PT
    , pw = f PW
    , py = f PY
    , qa = f QA
    , re = f RE
    , ro = f RO
    , rs = f RS
    , ru = f RU
    , rw = f RW
    , sa = f SA
    , sb = f SB
    , sc = f SC
    , sd = f SD
    , se = f SE
    , sg = f SG
    , sh = f SH
    , si = f SI
    , sj = f SJ
    , sk = f SK
    , sl = f SL
    , sm = f SM
    , sn = f SN
    , so = f SO
    , sr = f SR
    , ss = f SS
    , st = f ST
    , sv = f SV
    , sx = f SX
    , sy = f SY
    , sz = f SZ
    , tc = f TC
    , td = f TD
    , tf = f TF
    , tg = f TG
    , th = f TH
    , tj = f TJ
    , tk = f TK
    , tl = f TL
    , tm = f TM
    , tn = f TN
    , to = f TO
    , tr = f TR
    , tt = f TT
    , tv = f TV
    , tw = f TW
    , tz = f TZ
    , ua = f UA
    , ug = f UG
    , um = f UM
    , us = f US
    , uy = f UY
    , uz = f UZ
    , va = f VA
    , vc = f VC
    , ve = f VE
    , vg = f VG
    , vi = f VI
    , vn = f VN
    , vu = f VU
    , wf = f WF
    , ws = f WS
    , ye = f YE
    , yt = f YT
    , za = f ZA
    , zm = f ZM
    , zw = f ZW
    }


perCountryDataToFunction :
    PerCountryData a
    -> (CountryCode -> a)
perCountryDataToFunction data countryCode =
    case countryCode of
        AD ->
            data.ad

        AE ->
            data.ae

        AF ->
            data.af

        AG ->
            data.ag

        AI ->
            data.ai

        AL ->
            data.al

        AM ->
            data.am

        AO ->
            data.ao

        AQ ->
            data.aq

        AR ->
            data.ar

        AS ->
            data.as_

        AT ->
            data.at

        AU ->
            data.au

        AW ->
            data.aw

        AX ->
            data.ax

        AZ ->
            data.az

        BA ->
            data.ba

        BB ->
            data.bb

        BD ->
            data.bd

        BE ->
            data.be

        BF ->
            data.bf

        BG ->
            data.bg

        BH ->
            data.bh

        BI ->
            data.bi

        BJ ->
            data.bj

        BL ->
            data.bl

        BM ->
            data.bm

        BN ->
            data.bn

        BO ->
            data.bo

        BQ ->
            data.bq

        BR ->
            data.br

        BS ->
            data.bs

        BT ->
            data.bt

        BV ->
            data.bv

        BW ->
            data.bw

        BY ->
            data.by

        BZ ->
            data.bz

        CA ->
            data.ca

        CC ->
            data.cc

        CD ->
            data.cd

        CF ->
            data.cf

        CG ->
            data.cg

        CH ->
            data.ch

        CI ->
            data.ci

        CK ->
            data.ck

        CL ->
            data.cl

        CM ->
            data.cm

        CN ->
            data.cn

        CO ->
            data.co

        CR ->
            data.cr

        CU ->
            data.cu

        CV ->
            data.cv

        CW ->
            data.cw

        CX ->
            data.cx

        CY ->
            data.cy

        CZ ->
            data.cz

        DE ->
            data.de

        DJ ->
            data.dj

        DK ->
            data.dk

        DM ->
            data.dm

        DO ->
            data.do

        DZ ->
            data.dz

        EC ->
            data.ec

        EE ->
            data.ee

        EG ->
            data.eg

        EH ->
            data.eh

        ER ->
            data.er

        ES ->
            data.es

        ET ->
            data.et

        FI ->
            data.fi

        FJ ->
            data.fj

        FK ->
            data.fk

        FM ->
            data.fm

        FO ->
            data.fo

        FR ->
            data.fr

        GA ->
            data.ga

        GB ->
            data.gb

        GD ->
            data.gd

        GE ->
            data.ge

        GF ->
            data.gf

        GG ->
            data.gg

        GH ->
            data.gh

        GI ->
            data.gi

        GL ->
            data.gl

        GM ->
            data.gm

        GN ->
            data.gn

        GP ->
            data.gp

        GQ ->
            data.gq

        GR ->
            data.gr

        GS ->
            data.gs

        GT_ ->
            data.gt

        GU ->
            data.gu

        GW ->
            data.gw

        GY ->
            data.gy

        HK ->
            data.hk

        HM ->
            data.hm

        HN ->
            data.hn

        HR ->
            data.hr

        HT ->
            data.ht

        HU ->
            data.hu

        ID ->
            data.id

        IE ->
            data.ie

        IL ->
            data.il

        IM ->
            data.im

        IN ->
            data.in_

        IO ->
            data.io

        IQ ->
            data.iq

        IR ->
            data.ir

        IS ->
            data.is

        IT ->
            data.it

        JE ->
            data.je

        JM ->
            data.jm

        JO ->
            data.jo

        JP ->
            data.jp

        KE ->
            data.ke

        KG ->
            data.kg

        KH ->
            data.kh

        KI ->
            data.ki

        KM ->
            data.km

        KN ->
            data.kn

        KP ->
            data.kp

        KR ->
            data.kr

        KW ->
            data.kw

        KY ->
            data.ky

        KZ ->
            data.kz

        LA ->
            data.la

        LB ->
            data.lb

        LC ->
            data.lc

        LI ->
            data.li

        LK ->
            data.lk

        LR ->
            data.lr

        LS ->
            data.ls

        LT_ ->
            data.lt

        LU ->
            data.lu

        LV ->
            data.lv

        LY ->
            data.ly

        MA ->
            data.ma

        MC ->
            data.mc

        MD ->
            data.md

        ME ->
            data.me

        MF ->
            data.mf

        MG ->
            data.mg

        MH ->
            data.mh

        MK ->
            data.mk

        ML ->
            data.ml

        MM ->
            data.mm

        MN ->
            data.mn

        MO ->
            data.mo

        MP ->
            data.mp

        MQ ->
            data.mq

        MR ->
            data.mr

        MS ->
            data.ms

        MT ->
            data.mt

        MU ->
            data.mu

        MV ->
            data.mv

        MW ->
            data.mw

        MX ->
            data.mx

        MY ->
            data.my

        MZ ->
            data.mz

        NA ->
            data.na

        NC ->
            data.nc

        NE ->
            data.ne

        NF ->
            data.nf

        NG ->
            data.ng

        NI ->
            data.ni

        NL ->
            data.nl

        NO ->
            data.no

        NP ->
            data.np

        NR ->
            data.nr

        NU ->
            data.nu

        NZ ->
            data.nz

        OM ->
            data.om

        PA ->
            data.pa

        PE ->
            data.pe

        PF ->
            data.pf

        PG ->
            data.pg

        PH ->
            data.ph

        PK ->
            data.pk

        PL ->
            data.pl

        PM ->
            data.pm

        PN ->
            data.pn

        PR ->
            data.pr

        PS ->
            data.ps

        PT ->
            data.pt

        PW ->
            data.pw

        PY ->
            data.py

        QA ->
            data.qa

        RE ->
            data.re

        RO ->
            data.ro

        RS ->
            data.rs

        RU ->
            data.ru

        RW ->
            data.rw

        SA ->
            data.sa

        SB ->
            data.sb

        SC ->
            data.sc

        SD ->
            data.sd

        SE ->
            data.se

        SG ->
            data.sg

        SH ->
            data.sh

        SI ->
            data.si

        SJ ->
            data.sj

        SK ->
            data.sk

        SL ->
            data.sl

        SM ->
            data.sm

        SN ->
            data.sn

        SO ->
            data.so

        SR ->
            data.sr

        SS ->
            data.ss

        ST ->
            data.st

        SV ->
            data.sv

        SX ->
            data.sx

        SY ->
            data.sy

        SZ ->
            data.sz

        TC ->
            data.tc

        TD ->
            data.td

        TF ->
            data.tf

        TG ->
            data.tg

        TH ->
            data.th

        TJ ->
            data.tj

        TK ->
            data.tk

        TL ->
            data.tl

        TM ->
            data.tm

        TN ->
            data.tn

        TO ->
            data.to

        TR ->
            data.tr

        TT ->
            data.tt

        TV ->
            data.tv

        TW ->
            data.tw

        TZ ->
            data.tz

        UA ->
            data.ua

        UG ->
            data.ug

        UM ->
            data.um

        US ->
            data.us

        UY ->
            data.uy

        UZ ->
            data.uz

        VA ->
            data.va

        VC ->
            data.vc

        VE ->
            data.ve

        VG ->
            data.vg

        VI ->
            data.vi

        VN ->
            data.vn

        VU ->
            data.vu

        WF ->
            data.wf

        WS ->
            data.ws

        YE ->
            data.ye

        YT ->
            data.yt

        ZA ->
            data.za

        ZM ->
            data.zm

        ZW ->
            data.zw


similarityGroups : List (List CountryCode)
similarityGroups =
    [ [ AD, MD, RO, TD ]
    , [ AE, EH, JO, KW, PS, SD, SS ]
    , [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ]
    , [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ]
    , [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ]
    , [ AL, BA, CZ, HR, LU, ME, NL, RS, RU, SI, SK ]
    , [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ]
    , [ AR, BO, CL, CO, EC, PE, PY, UY, VE ]
    , [ AT, ID, LV, MC, MT, PL, SG ]
    , [ AX, BV, DK, FI, FO, GG, IS, NO, SE, SJ ]
    , [ AZ, DZ, LY, MR, MV, PK, TN, TR ]
    , [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MA, ML, SN, SR, ST, TG, ZW ]
    , [ BG, BY, CI, HU, IE, IT, MX ]
    , [ BH, QA ]
    , [ BT, KG, KZ, LB, LK, NP, TJ, TM, UZ ]
    , [ CU, PR ]
    , [ EG, IQ, IR, SY, YE ]
    , [ HN, NI, SV ]
    , [ KH, KP, MM, VN ]
    , [ LR, MY, TO, TW, UM, US, WS ]
    ]


getSimilarFlags : CountryCode -> List CountryCode
getSimilarFlags countryCode =
    similarityGroups
        |> List.Extra.find (\g -> List.member countryCode g)
        |> Maybe.withDefault []


toCard :
    GameOptions
    -> CountryCode
    -> Random.Seed
    -> ( Card, Random.Seed )
toCard options countryCode seed =
    let
        continent : Continent
        continent =
            toContinent countryCode

        similar : List CountryCode
        similar =
            getSimilarFlags countryCode

        count : Int
        count =
            options.answersCount

        listGenerator : Random.Generator (List CountryCode)
        listGenerator =
            case options.difficulty of
                Easy ->
                    Iso3166.all
                        |> List.filter
                            (\option ->
                                (option /= countryCode)
                                    && not (List.member option similar)
                                    && (continent /= toContinent option)
                            )
                        |> Random.List.choices (count - 1)
                        |> Random.map Tuple.first

                Normal ->
                    Iso3166.all
                        |> List.filter
                            (\option ->
                                (option /= countryCode)
                                    && not (List.member option similar)
                                    && (continent == toContinent option)
                            )
                        |> Random.List.choices (count - 1)
                        |> Random.map Tuple.first

                Hard ->
                    if List.length similar < (count - 1) then
                        Iso3166.all
                            |> List.filter
                                (\option ->
                                    (option /= countryCode)
                                        && not (List.member option similar)
                                        && (continent == toContinent option)
                                )
                            |> Random.List.choices (count - 1 - List.length similar)
                            |> Random.map (\( picked, _ ) -> similar ++ picked)

                    else
                        similar
                            |> Random.List.choices (count - 1)
                            |> Random.map Tuple.first

        generator : Random.Generator Card
        generator =
            Random.map2
                (\( guessFrom, guessTo ) countries ->
                    { guessing = countryCode
                    , answers = countries
                    , guessFrom = guessFrom
                    , guessTo = guessTo
                    }
                )
                (propertyGenerator options)
                (Random.andThen Random.List.shuffle <| Random.map ((::) countryCode) listGenerator)
    in
    Random.step generator seed


propertyGenerator : GameOptions -> Random.Generator ( Property, Property )
propertyGenerator { guessFrom, guessTo } =
    let
        pairs : List ( Property, Property )
        pairs =
            List.Extra.lift2 Tuple.pair guessFrom guessTo
                |> List.filter (\( f, t ) -> f /= t)
    in
    case pairs of
        [] ->
            Random.uniform ( Flag, Name ) [ ( Name, Flag ) ]

        phead :: ptail ->
            Random.uniform phead ptail


type Continent
    = Africa
    | Antartica
    | Asia
    | Europe
    | NorthAmerica
    | Oceania
    | SouthAmerica


continentToString : Continent -> String
continentToString continent =
    case continent of
        Africa ->
            "Africa"

        Antartica ->
            "Antartica"

        Asia ->
            "Asia"

        Europe ->
            "Europe"

        NorthAmerica ->
            "North America"

        Oceania ->
            "Oceania"

        SouthAmerica ->
            "South America"


continents : PerCountryData Continent
continents =
    { ad = Europe
    , ae = Asia
    , af = Asia
    , ag = SouthAmerica
    , ai = SouthAmerica
    , al = Europe
    , am = Asia
    , ao = Africa
    , aq = Antartica
    , ar = SouthAmerica
    , as_ = Oceania
    , at = Europe
    , au = Oceania
    , aw = SouthAmerica
    , ax = Europe
    , az = Asia
    , ba = Europe
    , bb = SouthAmerica
    , bd = Asia
    , be = Europe
    , bf = Africa
    , bg = Europe
    , bh = Asia
    , bi = Africa
    , bj = Africa
    , bl = NorthAmerica
    , bm = SouthAmerica
    , bn = Asia
    , bo = SouthAmerica
    , bq = NorthAmerica
    , br = SouthAmerica
    , bs = SouthAmerica
    , bt = Asia
    , bv = Antartica
    , bw = Africa
    , by = Europe
    , bz = NorthAmerica
    , ca = NorthAmerica
    , cc = Asia
    , cd = Africa
    , cf = Africa
    , cg = Africa
    , ch = Europe
    , ci = Africa
    , ck = Oceania
    , cl = SouthAmerica
    , cm = Africa
    , cn = Asia
    , co = SouthAmerica
    , cr = NorthAmerica
    , cu = SouthAmerica
    , cv = Africa
    , cw = SouthAmerica
    , cx = Asia
    , cy = Asia
    , cz = Europe
    , de = Europe
    , dj = Africa
    , dk = Europe
    , dm = SouthAmerica
    , do = SouthAmerica
    , dz = Africa
    , ec = SouthAmerica
    , ee = Europe
    , eg = Africa
    , eh = Africa
    , er = Africa
    , es = Europe
    , et = Africa
    , fi = Europe
    , fj = Oceania
    , fk = SouthAmerica
    , fm = Oceania
    , fo = Europe
    , fr = Europe
    , ga = Africa
    , gb = Europe
    , gd = SouthAmerica
    , ge = Asia
    , gf = SouthAmerica
    , gg = Europe
    , gh = Africa
    , gi = Europe
    , gl = NorthAmerica
    , gm = Africa
    , gn = Africa
    , gp = SouthAmerica
    , gq = Africa
    , gr = Europe
    , gs = Antartica
    , gt = NorthAmerica
    , gu = Oceania
    , gw = Africa
    , gy = SouthAmerica
    , hk = Asia
    , hm = Antartica
    , hn = NorthAmerica
    , hr = Europe
    , ht = SouthAmerica
    , hu = Europe
    , id = Asia
    , ie = Europe
    , il = Asia
    , im = Europe
    , in_ = Asia
    , io = Asia
    , iq = Asia
    , ir = Asia
    , is = Europe
    , it = Europe
    , je = Europe
    , jm = SouthAmerica
    , jo = Asia
    , jp = Asia
    , ke = Africa
    , kg = Asia
    , kh = Asia
    , ki = Oceania
    , km = Africa
    , kn = SouthAmerica
    , kp = Asia
    , kr = Asia
    , kw = Asia
    , ky = SouthAmerica
    , kz = Asia
    , la = Asia
    , lb = Asia
    , lc = SouthAmerica
    , li = Europe
    , lk = Asia
    , lr = Africa
    , ls = Africa
    , lt = Europe
    , lu = Europe
    , lv = Europe
    , ly = Africa
    , ma = Africa
    , mc = Europe
    , md = Europe
    , me = Europe
    , mf = NorthAmerica
    , mg = Africa
    , mh = Oceania
    , mk = Europe
    , ml = Africa
    , mm = Asia
    , mn = Asia
    , mo = Asia
    , mp = Oceania
    , mq = SouthAmerica
    , mr = Africa
    , ms = SouthAmerica
    , mt = Europe
    , mu = Africa
    , mv = Asia
    , mw = Africa
    , mx = NorthAmerica
    , my = Asia
    , mz = Africa
    , na = Africa
    , nc = Oceania
    , ne = Africa
    , nf = Oceania
    , ng = Africa
    , ni = NorthAmerica
    , nl = Europe
    , no = Europe
    , np = Asia
    , nr = Oceania
    , nu = Oceania
    , nz = Oceania
    , om = Asia
    , pa = NorthAmerica
    , pe = SouthAmerica
    , pf = Oceania
    , pg = Oceania
    , ph = Asia
    , pk = Asia
    , pl = Europe
    , pm = NorthAmerica
    , pn = Oceania
    , pr = SouthAmerica
    , ps = Asia
    , pt = Europe
    , pw = Oceania
    , py = SouthAmerica
    , qa = Asia
    , re = Africa
    , ro = Europe
    , rs = Europe
    , ru = Asia
    , rw = Africa
    , sa = Asia
    , sb = Oceania
    , sc = Africa
    , sd = Africa
    , se = Europe
    , sg = Asia
    , sh = Africa
    , si = Europe
    , sj = Europe
    , sk = Europe
    , sl = Africa
    , sm = Europe
    , sn = Africa
    , so = Africa
    , sr = SouthAmerica
    , ss = Africa
    , st = Africa
    , sv = NorthAmerica
    , sx = NorthAmerica
    , sy = Asia
    , sz = Africa
    , tc = SouthAmerica
    , td = Africa
    , tf = Antartica
    , tg = Africa
    , th = Asia
    , tj = Asia
    , tk = Oceania
    , tl = Asia
    , tm = Asia
    , tn = Africa
    , to = Oceania
    , tr = Asia
    , tt = SouthAmerica
    , tv = Oceania
    , tw = Asia
    , tz = Africa
    , ua = Europe
    , ug = Africa
    , um = NorthAmerica
    , us = NorthAmerica
    , uy = SouthAmerica
    , uz = Asia
    , va = Europe
    , vc = SouthAmerica
    , ve = SouthAmerica
    , vg = SouthAmerica
    , vi = SouthAmerica
    , vn = Asia
    , vu = Oceania
    , wf = Oceania
    , ws = Oceania
    , ye = Asia
    , yt = Africa
    , za = Africa
    , zm = Africa
    , zw = Africa
    }


toContinent : CountryCode -> Continent
toContinent countryCode =
    perCountryDataToFunction continents countryCode
