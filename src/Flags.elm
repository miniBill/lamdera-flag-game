module Flags exposing (Continent(..), all, allCards, continentToString)

import Iso3166 exposing (CountryCode(..))
import List.Extra
import Random
import Random.List
import Types exposing (Card, Difficulty(..), GameOptions, Property(..))


allCards : GameOptions -> Random.Seed -> ( List Card, Random.Seed )
allCards options seed =
    let
        ( finalSeed, result ) =
            all
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


{-| List of countries, and for each one, list of similar flags.
-}
all : List ( CountryCode, List CountryCode, Continent )
all =
    [ ( AD, [ MD, RO, TD ], Europe )
    , ( AE, [ EH, JO, KW, PS, SD, SS ], Asia )
    , ( AF, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Asia )
    , ( AG, [ AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( AI, [ AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( AL, [ BA, CZ, HR, LU, ME, NL, RS, RU, SI, SK ], Europe )
    , ( AM, [ AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Asia )
    , ( AO, [ AM, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( AQ, [ AF, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Antartica )
    , ( AR, [ BO, CL, CO, EC, PE, PY, UY, VE ], SouthAmerica )
    , ( AS, [ AG, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( AT, [ ID, LV, MC, MT, PL, SG ], Europe )
    , ( AU, [ AI, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Oceania )
    , ( AW, [ AG, AS, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( AX, [ BV, DK, FI, FO, GG, IS, NO, SE, SJ ], Europe )
    , ( AZ, [ DZ, LY, MR, MV, PK, TN, TR ], Asia )
    , ( BA, [ AL, CZ, HR, LU, ME, NL, RS, RU, SI, SK ], Europe )
    , ( BB, [ AG, AS, AW, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( BD, [ AM, AO, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Asia )
    , ( BE, [ AF, AQ, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Europe )
    , ( BF, [ BI, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MA, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( BG, [ BY, CI, HU, IE, IT, MX ], Europe )
    , ( BH, [ QA ], Asia )
    , ( BI, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MA, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( BJ, [ BF, BI, CG, CM, ET, GD, GF, GH, GN, GW, MA, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( BL, [ AG, AS, AW, BB, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], NorthAmerica )
    , ( BM, [ AI, AU, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( BN, [ AG, AS, AW, BB, BL, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Asia )
    , ( BO, [ AR, CL, CO, EC, PE, PY, UY, VE ], SouthAmerica )
    , ( BQ, [ AG, AS, AW, BB, BL, BN, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], NorthAmerica )
    , ( BR, [ AF, AQ, BE, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], SouthAmerica )
    , ( BS, [ AM, AO, BD, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], SouthAmerica )
    , ( BT, [ KG, KZ, LB, LK, NP, TJ, TM, UZ ], Asia )
    , ( BV, [ AX, DK, FI, FO, GG, IS, NO, SE, SJ ], Antartica )
    , ( BW, [ AM, AO, BD, BS, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( BY, [ BG, CI, HU, IE, IT, MX ], Europe )
    , ( BZ, [ AG, AS, AW, BB, BL, BN, BQ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], NorthAmerica )
    , ( CA, [ AF, AQ, BE, BR, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], NorthAmerica )
    , ( CC, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Asia )
    , ( CD, [ AM, AO, BD, BS, BW, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( CF, [ AM, AO, BD, BS, BW, CD, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( CG, [ BF, BI, BJ, CM, ET, GD, GF, GH, GN, GW, MA, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( CH, [ AF, AQ, BE, BR, CA, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Europe )
    , ( CI, [ BG, BY, HU, IE, IT, MX ], Africa )
    , ( CK, [ AI, AU, BM, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Oceania )
    , ( CL, [ AR, BO, CO, EC, PE, PY, UY, VE ], SouthAmerica )
    , ( CM, [ BF, BI, BJ, CG, ET, GD, GF, GH, GN, GW, MA, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( CN, [ AF, AQ, BE, BR, CA, CH, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Asia )
    , ( CO, [ AR, BO, CL, EC, PE, PY, UY, VE ], SouthAmerica )
    , ( CR, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], NorthAmerica )
    , ( CU, [ PR ], SouthAmerica )
    , ( CV, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Africa )
    , ( CW, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( CX, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Asia )
    , ( CY, [ AF, AQ, BE, BR, CA, CH, CN, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Asia )
    , ( CZ, [ AL, BA, HR, LU, ME, NL, RS, RU, SI, SK ], Europe )
    , ( DE, [ AF, AQ, BE, BR, CA, CH, CN, CY, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Europe )
    , ( DJ, [ AM, AO, BD, BS, BW, CD, CF, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( DK, [ AX, BV, FI, FO, GG, IS, NO, SE, SJ ], Europe )
    , ( DM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( DO, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( DZ, [ AZ, LY, MR, MV, PK, TN, TR ], Africa )
    , ( EC, [ AR, BO, CL, CO, PE, PY, UY, VE ], SouthAmerica )
    , ( EE, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Europe )
    , ( EG, [ IQ, IR, SY, YE ], Africa )
    , ( EH, [ AE, JO, KW, PS, SD, SS ], Africa )
    , ( ER, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( ES, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Europe )
    , ( ET, [ BF, BI, BJ, CG, CM, GD, GF, GH, GN, GW, MA, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( FI, [ AX, BV, DK, FO, GG, IS, NO, SE, SJ ], Europe )
    , ( FJ, [ AI, AU, BM, CK, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Oceania )
    , ( FK, [ AI, AU, BM, CK, FJ, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( FM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( FO, [ AX, BV, DK, FI, GG, IS, NO, SE, SJ ], Europe )
    , ( FR, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Europe )
    , ( GA, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( GB, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Europe )
    , ( GD, [ BF, BI, BJ, CG, CM, ET, GF, GH, GN, GW, MA, ML, SN, SR, ST, TG, ZW ], SouthAmerica )
    , ( GE, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Asia )
    , ( GF, [ BF, BI, BJ, CG, CM, ET, GD, GH, GN, GW, MA, ML, SN, SR, ST, TG, ZW ], SouthAmerica )
    , ( GG, [ AX, BV, DK, FI, FO, IS, NO, SE, SJ ], Europe )
    , ( GH, [ BF, BI, BJ, CG, CM, ET, GD, GF, GN, GW, MA, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( GI, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Europe )
    , ( GL, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], NorthAmerica )
    , ( GM, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( GN, [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GW, MA, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( GP, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( GQ, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Africa )
    , ( GR, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Europe )
    , ( GS, [ AI, AU, BM, CK, FJ, FK, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Antartica )
    , ( GT_, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], NorthAmerica )
    , ( GU, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( GW, [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GN, MA, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( GY, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], SouthAmerica )
    , ( HK, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Asia )
    , ( HM, [ AI, AU, BM, CK, FJ, FK, GS, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Antartica )
    , ( HN, [ NI, SV ], NorthAmerica )
    , ( HR, [ AL, BA, CZ, LU, ME, NL, RS, RU, SI, SK ], Europe )
    , ( HT, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( HU, [ BG, BY, CI, IE, IT, MX ], Europe )
    , ( ID, [ AT, LV, MC, MT, PL, SG ], Asia )
    , ( IE, [ BG, BY, CI, HU, IT, MX ], Europe )
    , ( IL, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Asia )
    , ( IM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Europe )
    , ( IN, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Asia )
    , ( IO, [ AI, AU, BM, CK, FJ, FK, GS, HM, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Asia )
    , ( IQ, [ EG, IR, SY, YE ], Asia )
    , ( IR, [ EG, IQ, SY, YE ], Asia )
    , ( IS, [ AX, BV, DK, FI, FO, GG, NO, SE, SJ ], Europe )
    , ( IT, [ BG, BY, CI, HU, IE, MX ], Europe )
    , ( JE, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Europe )
    , ( JM, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], SouthAmerica )
    , ( JO, [ AE, EH, KW, PS, SD, SS ], Asia )
    , ( JP, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, KR, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Asia )
    , ( KE, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( KG, [ BT, KZ, LB, LK, NP, TJ, TM, UZ ], Asia )
    , ( KH, [ KP, MM, VN ], Asia )
    , ( KI, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( KM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Africa )
    , ( KN, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], SouthAmerica )
    , ( KP, [ KH, MM, VN ], Asia )
    , ( KR, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, MF, MK, PT, SA, SM, UA, VA, WF, ZA ], Asia )
    , ( KW, [ AE, EH, JO, PS, SD, SS ], Asia )
    , ( KY, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, MS, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( KZ, [ BT, KG, LB, LK, NP, TJ, TM, UZ ], Asia )
    , ( LA, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Asia )
    , ( LB, [ BT, KG, KZ, LK, NP, TJ, TM, UZ ], Asia )
    , ( LC, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( LI, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Europe )
    , ( LK, [ BT, KG, KZ, LB, NP, TJ, TM, UZ ], Asia )
    , ( LR, [ MY, TO, TW, UM, US, WS ], Africa )
    , ( LS, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( LT_, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Europe )
    , ( LU, [ AL, BA, CZ, HR, ME, NL, RS, RU, SI, SK ], Europe )
    , ( LV, [ AT, ID, MC, MT, PL, SG ], Europe )
    , ( LY, [ AZ, DZ, MR, MV, PK, TN, TR ], Africa )
    , ( MA, [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GN, GW, ML, SN, SR, ST, TG, ZW ], Africa )
    , ( MC, [ AT, ID, LV, MT, PL, SG ], Europe )
    , ( MD, [ AD, RO, TD ], Europe )
    , ( ME, [ AL, BA, CZ, HR, LU, NL, RS, RU, SI, SK ], Europe )
    , ( MF, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MK, PT, SA, SM, UA, VA, WF, ZA ], NorthAmerica )
    , ( MG, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( MH, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( MK, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SA, SM, UA, VA, WF, ZA ], Europe )
    , ( ML, [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MA, SN, SR, ST, TG, ZW ], Africa )
    , ( MM, [ KH, KP, VN ], Asia )
    , ( MN, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Asia )
    , ( MO, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Asia )
    , ( MP, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( MQ, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], SouthAmerica )
    , ( MR, [ AZ, DZ, LY, MV, PK, TN, TR ], Africa )
    , ( MS, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( MT, [ AT, ID, LV, MC, PL, SG ], Europe )
    , ( MU, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( MV, [ AZ, DZ, LY, MR, PK, TN, TR ], Asia )
    , ( MW, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( MX, [ BG, BY, CI, HU, IE, IT ], NorthAmerica )
    , ( MY, [ LR, TO, TW, UM, US, WS ], Asia )
    , ( MZ, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( NA, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( NC, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( NE, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( NF, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( NG, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, PA, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( NI, [ HN, SV ], NorthAmerica )
    , ( NL, [ AL, BA, CZ, HR, LU, ME, RS, RU, SI, SK ], Europe )
    , ( NO, [ AX, BV, DK, FI, FO, GG, IS, SE, SJ ], Europe )
    , ( NP, [ BT, KG, KZ, LB, LK, TJ, TM, UZ ], Asia )
    , ( NR, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( NU, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NZ, PN, SH, TC, TV, VG ], Oceania )
    , ( NZ, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, PN, SH, TC, TV, VG ], Oceania )
    , ( OM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Asia )
    , ( PA, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, RW, SL, SO, TH, TL, TT, TZ, UG, ZM ], NorthAmerica )
    , ( PE, [ AR, BO, CL, CO, EC, PY, UY, VE ], SouthAmerica )
    , ( PF, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( PG, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( PH, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Asia )
    , ( PK, [ AZ, DZ, LY, MR, MV, TN, TR ], Asia )
    , ( PL, [ AT, ID, LV, MC, MT, SG ], Europe )
    , ( PM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], NorthAmerica )
    , ( PN, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, SH, TC, TV, VG ], Oceania )
    , ( PR, [ CU ], SouthAmerica )
    , ( PS, [ AE, EH, JO, KW, SD, SS ], Asia )
    , ( PT, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, SA, SM, UA, VA, WF, ZA ], Europe )
    , ( PW, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( PY, [ AR, BO, CL, CO, EC, PE, UY, VE ], SouthAmerica )
    , ( QA, [ BH ], Asia )
    , ( RE, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, SB, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Africa )
    , ( RO, [ AD, MD, TD ], Europe )
    , ( RS, [ AL, BA, CZ, HR, LU, ME, NL, RU, SI, SK ], Europe )
    , ( RU, [ AL, BA, CZ, HR, LU, ME, NL, RS, SI, SK ], Asia )
    , ( RW, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, SL, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( SA, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SM, UA, VA, WF, ZA ], Asia )
    , ( SB, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SC, SX, SZ, TF, TK, VC, VI, VU, YT ], Oceania )
    , ( SC, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SX, SZ, TF, TK, VC, VI, VU, YT ], Africa )
    , ( SD, [ AE, EH, JO, KW, PS, SS ], Africa )
    , ( SE, [ AX, BV, DK, FI, FO, GG, IS, NO, SJ ], Europe )
    , ( SG, [ AT, ID, LV, MC, MT, PL ], Asia )
    , ( SH, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, TC, TV, VG ], Africa )
    , ( SI, [ AL, BA, CZ, HR, LU, ME, NL, RS, RU, SK ], Europe )
    , ( SJ, [ AX, BV, DK, FI, FO, GG, IS, NO, SE ], Europe )
    , ( SK, [ AL, BA, CZ, HR, LU, ME, NL, RS, RU, SI ], Europe )
    , ( SL, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SO, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( SM, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, UA, VA, WF, ZA ], Europe )
    , ( SN, [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MA, ML, SR, ST, TG, ZW ], Africa )
    , ( SO, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, TH, TL, TT, TZ, UG, ZM ], Africa )
    , ( SR, [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MA, ML, SN, ST, TG, ZW ], SouthAmerica )
    , ( SS, [ AE, EH, JO, KW, PS, SD ], Africa )
    , ( ST, [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MA, ML, SN, SR, TG, ZW ], Africa )
    , ( SV, [ HN, NI ], NorthAmerica )
    , ( SX, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SZ, TF, TK, VC, VI, VU, YT ], NorthAmerica )
    , ( SY, [ EG, IQ, IR, YE ], Asia )
    , ( SZ, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, TF, TK, VC, VI, VU, YT ], Africa )
    , ( TC, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TV, VG ], SouthAmerica )
    , ( TD, [ AD, MD, RO ], Africa )
    , ( TF, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TK, VC, VI, VU, YT ], Antartica )
    , ( TG, [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MA, ML, SN, SR, ST, ZW ], Africa )
    , ( TH, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TL, TT, TZ, UG, ZM ], Asia )
    , ( TJ, [ BT, KG, KZ, LB, LK, NP, TM, UZ ], Asia )
    , ( TK, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, VC, VI, VU, YT ], Oceania )
    , ( TL, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TT, TZ, UG, ZM ], Asia )
    , ( TM, [ BT, KG, KZ, LB, LK, NP, TJ, UZ ], Asia )
    , ( TN, [ AZ, DZ, LY, MR, MV, PK, TR ], Africa )
    , ( TO, [ LR, MY, TW, UM, US, WS ], Oceania )
    , ( TR, [ AZ, DZ, LY, MR, MV, PK, TN ], Asia )
    , ( TT, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TZ, UG, ZM ], SouthAmerica )
    , ( TV, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, VG ], Oceania )
    , ( TW, [ LR, MY, TO, UM, US, WS ], Asia )
    , ( TZ, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, UG, ZM ], Africa )
    , ( UA, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, VA, WF, ZA ], Europe )
    , ( UG, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, ZM ], Africa )
    , ( UM, [ LR, MY, TO, TW, US, WS ], NorthAmerica )
    , ( US, [ LR, MY, TO, TW, UM, WS ], NorthAmerica )
    , ( UY, [ AR, BO, CL, CO, EC, PE, PY, VE ], SouthAmerica )
    , ( UZ, [ BT, KG, KZ, LB, LK, NP, TJ, TM ], Asia )
    , ( VA, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, WF, ZA ], Europe )
    , ( VC, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VI, VU, YT ], SouthAmerica )
    , ( VE, [ AR, BO, CL, CO, EC, PE, PY, UY ], SouthAmerica )
    , ( VG, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV ], SouthAmerica )
    , ( VI, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VU, YT ], SouthAmerica )
    , ( VN, [ KH, KP, MM ], Asia )
    , ( VU, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, YT ], Oceania )
    , ( WF, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, ZA ], Oceania )
    , ( WS, [ LR, MY, TO, TW, UM, US ], Oceania )
    , ( YE, [ EG, IQ, IR, SY ], Asia )
    , ( YT, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HK, HT, IM, JE, KI, KM, LC, LI, MH, MN, MO, MP, MQ, NC, NF, NR, OM, PF, PG, PH, PM, PW, RE, SB, SC, SX, SZ, TF, TK, VC, VI, VU ], Africa )
    , ( ZA, [ AF, AQ, BE, BR, CA, CH, CN, CY, DE, ES, FR, GB, GE, GR, IL, IN, JM, JP, KR, MF, MK, PT, SA, SM, UA, VA, WF ], Africa )
    , ( ZM, [ AM, AO, BD, BS, BW, CD, CF, DJ, EE, ER, GA, GL, GM, GY, KE, KN, LA, LS, LT_, MG, MU, MW, MZ, NA, NE, NG, PA, RW, SL, SO, TH, TL, TT, TZ, UG ], Africa )
    , ( ZW, [ BF, BI, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MA, ML, SN, SR, ST, TG ], Africa )
    ]


toCard :
    GameOptions
    -> ( CountryCode, List CountryCode, Continent )
    -> Random.Seed
    -> ( Card, Random.Seed )
toCard options ( countryCode, similar, continent ) seed =
    let
        count : Int
        count =
            options.answersCount

        listGenerator : Random.Generator (List CountryCode)
        listGenerator =
            case options.difficulty of
                Easy ->
                    all
                        |> List.filter
                            (\( option, _, optionContinent ) ->
                                (option /= countryCode)
                                    && not (List.member option similar)
                                    && (continent /= optionContinent)
                            )
                        |> List.map (\( option, _, _ ) -> option)
                        |> Random.List.choices (count - 1)
                        |> Random.map Tuple.first

                Normal ->
                    all
                        |> List.filter
                            (\( option, _, optionContinent ) ->
                                (option /= countryCode)
                                    && not (List.member option similar)
                                    && (continent == optionContinent)
                            )
                        |> List.map (\( option, _, _ ) -> option)
                        |> Random.List.choices (count - 1)
                        |> Random.map Tuple.first

                Hard ->
                    if List.length similar < (count - 1) then
                        all
                            |> List.filter
                                (\( option, _, optionContinent ) ->
                                    (option /= countryCode)
                                        && not (List.member option similar)
                                        && (continent == optionContinent)
                                )
                            |> List.map (\( option, _, _ ) -> option)
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
