module Flags exposing (Continent(..), all, allCards, continentToString, toEmoji)

import Iso3166 exposing (CountryCode(..))
import Random
import Random.List
import Types exposing (Card, CardKind, Difficulty(..))


allCards : CardKind -> Difficulty -> Random.Seed -> ( List Card, Random.Seed )
allCards kind difficulty seed =
    let
        ( finalSeed, result ) =
            all
                |> List.foldl
                    (\input ( seedAcc, acc ) ->
                        let
                            ( card, newSeed ) =
                                toCard kind difficulty input seedAcc
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
    [ ( AD, [ CO, MD, RO, TD ], Europe )
    , ( AE, [ AF, EH, JO, KW, PS, SD, SS ], Asia )
    , ( AF, [ AE, EH, JO, KW, PS, SD, SS ], Asia )
    , ( AG, [ AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( AI, [ AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( AL, [ BA, CZ, FR, HR, LU, ME, MK, NL, PY, RS, RU, SI, SK, SX ], Europe )
    , ( AM, [ AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Asia )
    , ( AO, [ AM, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( AQ, [ BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Antartica )
    , ( AR, [ BO, EC, PE, UY, VE ], SouthAmerica )
    , ( AS, [ AG, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Oceania )
    , ( AT, [ EE, LB, LT_, LV, PF ], Europe )
    , ( AU, [ AI, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Oceania )
    , ( AW, [ AG, AS, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( AX, [ BV, DK, FI, FO, GG, IS, NO, SE, SJ ], Europe )
    , ( AZ, [ DZ, LY, MR, MV, PK, TN, TR ], Asia )
    , ( BA, [ AL, CZ, FR, HR, LU, ME, MK, NL, PY, RS, RU, SI, SK, SX ], Europe )
    , ( BB, [ AG, AS, AW, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( BD, [ AM, AO, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Asia )
    , ( BE, [ AQ, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Europe )
    , ( BF, [ BJ, CG, CM, ET, GD, GF, GH, GN, GW, ML, MM, SN, SR, ST, TG, VN, ZW ], Africa )
    , ( BG, [ BY, HU, IR, MG, TJ ], Europe )
    , ( BH, [ QA, SA ], Asia )
    , ( BI, [ BT, KG, KZ, LK, NP, TM, UZ ], Africa )
    , ( BJ, [ BF, CG, CM, ET, GD, GF, GH, GN, GW, ML, MM, SN, SR, ST, TG, VN, ZW ], Africa )
    , ( BL, [ AG, AS, AW, BB, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], NorthAmerica )
    , ( BM, [ AI, AU, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( BN, [ AG, AS, AW, BB, BL, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Asia )
    , ( BO, [ AR, EC, PE, UY, VE ], SouthAmerica )
    , ( BQ, [ AG, AS, AW, BB, BL, BN, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], NorthAmerica )
    , ( BR, [ AQ, BE, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], SouthAmerica )
    , ( BS, [ AM, AO, BD, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], SouthAmerica )
    , ( BT, [ BI, KG, KZ, LK, NP, TM, UZ ], Asia )
    , ( BV, [ AX, DK, FI, FO, GG, IS, NO, SE, SJ ], Antartica )
    , ( BW, [ AM, AO, BD, BS, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( BY, [ BG, HU, IR, MG, TJ ], Europe )
    , ( BZ, [ AG, AS, AW, BB, BL, BN, BQ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], NorthAmerica )
    , ( CA, [ AQ, BE, BR, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], NorthAmerica )
    , ( CC, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Asia )
    , ( CD, [ AM, AO, BD, BS, BW, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( CF, [ AM, AO, BD, BS, BW, CD, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( CG, [ BF, BJ, CM, ET, GD, GF, GH, GN, GW, ML, MM, SN, SR, ST, TG, VN, ZW ], Africa )
    , ( CH, [ AQ, BE, BR, CA, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Europe )
    , ( CI, [ IE, IT, MX ], Africa )
    , ( CK, [ AI, AU, BM, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Oceania )
    , ( CL, [ LR, MY, TO, TW, UM, US, WS ], SouthAmerica )
    , ( CM, [ BF, BJ, CG, ET, GD, GF, GH, GN, GW, ML, MM, SN, SR, ST, TG, VN, ZW ], Africa )
    , ( CN, [ AQ, BE, BR, CA, CH, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Asia )
    , ( CO, [ AD, MD, RO, TD ], SouthAmerica )
    , ( CR, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], NorthAmerica )
    , ( CU, [ PR ], SouthAmerica )
    , ( CV, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Africa )
    , ( CW, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( CX, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Asia )
    , ( CY, [ AQ, BE, BR, CA, CH, CN, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Asia )
    , ( CZ, [ AL, BA, FR, HR, LU, ME, MK, NL, PY, RS, RU, SI, SK, SX ], Europe )
    , ( DE, [ AQ, BE, BR, CA, CH, CN, CY, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Europe )
    , ( DJ, [ AM, AO, BD, BS, BW, CD, CF, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( DK, [ AX, BV, FI, FO, GG, IS, NO, SE, SJ ], Europe )
    , ( DM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( DO, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( DZ, [ AZ, LY, MR, MV, PK, TN, TR ], Africa )
    , ( EC, [ AR, BO, PE, UY, VE ], SouthAmerica )
    , ( EE, [ AT, LB, LT_, LV, PF ], Europe )
    , ( EG, [ IQ, SY, YE ], Africa )
    , ( EH, [ AE, AF, JO, KW, PS, SD, SS ], Africa )
    , ( ER, [ AM, AO, BD, BS, BW, CD, CF, DJ, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( ES, [ AQ, BE, BR, CA, CH, CN, CY, DE, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Europe )
    , ( ET, [ BF, BJ, CG, CM, GD, GF, GH, GN, GW, ML, MM, SN, SR, ST, TG, VN, ZW ], Africa )
    , ( FI, [ AX, BV, DK, FO, GG, IS, NO, SE, SJ ], Europe )
    , ( FJ, [ AI, AU, BM, CK, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Oceania )
    , ( FK, [ AI, AU, BM, CK, FJ, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( FM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Oceania )
    , ( FO, [ AX, BV, DK, FI, GG, IS, NO, SE, SJ ], Europe )
    , ( FR, [ AL, BA, CZ, HR, LU, ME, MK, NL, PY, RS, RU, SI, SK, SX ], Europe )
    , ( GA, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( GB, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Europe )
    , ( GD, [ BF, BJ, CG, CM, ET, GF, GH, GN, GW, ML, MM, SN, SR, ST, TG, VN, ZW ], SouthAmerica )
    , ( GE, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Asia )
    , ( GF, [ BF, BJ, CG, CM, ET, GD, GH, GN, GW, ML, MM, SN, SR, ST, TG, VN, ZW ], SouthAmerica )
    , ( GG, [ AX, BV, DK, FI, FO, IS, NO, SE, SJ ], Europe )
    , ( GH, [ BF, BJ, CG, CM, ET, GD, GF, GN, GW, ML, MM, SN, SR, ST, TG, VN, ZW ], Africa )
    , ( GI, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Europe )
    , ( GL, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], NorthAmerica )
    , ( GM, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( GN, [ BF, BJ, CG, CM, ET, GD, GF, GH, GW, ML, MM, SN, SR, ST, TG, VN, ZW ], Africa )
    , ( GP, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( GQ, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Africa )
    , ( GR, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Europe )
    , ( GS, [ AI, AU, BM, CK, FJ, FK, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Antartica )
    , ( GT_, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], NorthAmerica )
    , ( GU, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Oceania )
    , ( GW, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, ML, MM, SN, SR, ST, TG, VN, ZW ], Africa )
    , ( GY, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], SouthAmerica )
    , ( HK, [ IM, JE, MO ], Asia )
    , ( HM, [ AI, AU, BM, CK, FJ, FK, GS, IO, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Antartica )
    , ( HN, [ NI, SV ], NorthAmerica )
    , ( HR, [ AL, BA, CZ, FR, LU, ME, MK, NL, PY, RS, RU, SI, SK, SX ], Europe )
    , ( HT, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( HU, [ BG, BY, IR, MG, TJ ], Europe )
    , ( ID, [ MC, MT, PL, SG ], Asia )
    , ( IE, [ CI, IT, MX ], Europe )
    , ( IL, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Asia )
    , ( IM, [ HK, JE, MO ], Europe )
    , ( IN, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, JM, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], Asia )
    , ( IO, [ AI, AU, BM, CK, FJ, FK, GS, HM, KY, MS, NU, NZ, PN, SH, TC, TV, VG ], Asia )
    , ( IQ, [ EG, SY, YE ], Asia )
    , ( IR, [ BG, BY, HU, MG, TJ ], Asia )
    , ( IS, [ AX, BV, DK, FI, FO, GG, NO, SE, SJ ], Europe )
    , ( IT, [ CI, IE, MX ], Europe )
    , ( JE, [ HK, IM, MO ], Europe )
    , ( JM, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JP, KR, MF, PT, SM, UA, VA, WF, ZA ], SouthAmerica )
    , ( JO, [ AE, AF, EH, KW, PS, SD, SS ], Asia )
    , ( JP, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, KR, MF, PT, SM, UA, VA, WF, ZA ], Asia )
    , ( KE, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( KG, [ BI, BT, KZ, LK, NP, TM, UZ ], Asia )
    , ( KH, [ KP ], Asia )
    , ( KI, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Oceania )
    , ( KM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Africa )
    , ( KN, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], SouthAmerica )
    , ( KP, [ KH ], Asia )
    , ( KR, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, MF, PT, SM, UA, VA, WF, ZA ], Asia )
    , ( KW, [ AE, AF, EH, JO, PS, SD, SS ], Asia )
    , ( KY, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, MS, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( KZ, [ BI, BT, KG, LK, NP, TM, UZ ], Asia )
    , ( LA, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Asia )
    , ( LB, [ AT, EE, LT_, LV, PF ], Asia )
    , ( LC, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( LI, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Europe )
    , ( LK, [ BI, BT, KG, KZ, NP, TM, UZ ], Asia )
    , ( LR, [ CL, MY, TO, TW, UM, US, WS ], Africa )
    , ( LS, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( LT_, [ AT, EE, LB, LV, PF ], Europe )
    , ( LU, [ AL, BA, CZ, FR, HR, ME, MK, NL, PY, RS, RU, SI, SK, SX ], Europe )
    , ( LV, [ AT, EE, LB, LT_, PF ], Europe )
    , ( LY, [ AZ, DZ, MR, MV, PK, TN, TR ], Africa )
    , ( MA, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( MC, [ ID, MT, PL, SG ], Europe )
    , ( MD, [ AD, CO, RO, TD ], Europe )
    , ( ME, [ AL, BA, CZ, FR, HR, LU, MK, NL, PY, RS, RU, SI, SK, SX ], Europe )
    , ( MF, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, PT, SM, UA, VA, WF, ZA ], NorthAmerica )
    , ( MG, [ BG, BY, HU, IR, TJ ], Africa )
    , ( MH, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Oceania )
    , ( MK, [ AL, BA, CZ, FR, HR, LU, ME, NL, PY, RS, RU, SI, SK, SX ], Europe )
    , ( ML, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, GW, MM, SN, SR, ST, TG, VN, ZW ], Africa )
    , ( MM, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, GW, ML, SN, SR, ST, TG, VN, ZW ], Asia )
    , ( MN, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Asia )
    , ( MO, [ HK, IM, JE ], Asia )
    , ( MP, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Oceania )
    , ( MQ, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], SouthAmerica )
    , ( MR, [ AZ, DZ, LY, MV, PK, TN, TR ], Africa )
    , ( MS, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, NU, NZ, PN, SH, TC, TV, VG ], SouthAmerica )
    , ( MT, [ ID, MC, PL, SG ], Europe )
    , ( MU, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( MV, [ AZ, DZ, LY, MR, PK, TN, TR ], Asia )
    , ( MW, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( MX, [ CI, IE, IT ], NorthAmerica )
    , ( MY, [ CL, LR, TO, TW, UM, US, WS ], Asia )
    , ( MZ, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( NA, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( NC, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Oceania )
    , ( NE, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( NF, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Oceania )
    , ( NG, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( NI, [ HN, SV ], NorthAmerica )
    , ( NL, [ AL, BA, CZ, FR, HR, LU, ME, MK, PY, RS, RU, SI, SK, SX ], Europe )
    , ( NO, [ AX, BV, DK, FI, FO, GG, IS, SE, SJ ], Europe )
    , ( NP, [ BI, BT, KG, KZ, LK, TM, UZ ], Asia )
    , ( NR, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Oceania )
    , ( NU, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NZ, PN, SH, TC, TV, VG ], Oceania )
    , ( NZ, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, PN, SH, TC, TV, VG ], Oceania )
    , ( OM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Asia )
    , ( PA, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], NorthAmerica )
    , ( PE, [ AR, BO, EC, UY, VE ], SouthAmerica )
    , ( PF, [ AT, EE, LB, LT_, LV ], Oceania )
    , ( PG, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PH, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Oceania )
    , ( PH, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PM, RE, RW, SC, SZ, TF, TK, VI, YT ], Asia )
    , ( PK, [ AZ, DZ, LY, MR, MV, TN, TR ], Asia )
    , ( PL, [ ID, MC, MT, SG ], Europe )
    , ( PM, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, RE, RW, SC, SZ, TF, TK, VI, YT ], NorthAmerica )
    , ( PN, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, SH, TC, TV, VG ], Oceania )
    , ( PR, [ CU ], SouthAmerica )
    , ( PS, [ AE, AF, EH, JO, KW, SD, SS ], Asia )
    , ( PT, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, SM, UA, VA, WF, ZA ], Europe )
    , ( PW, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Oceania )
    , ( PY, [ AL, BA, CZ, FR, HR, LU, ME, MK, NL, RS, RU, SI, SK, SX ], SouthAmerica )
    , ( QA, [ BH, SA ], Asia )
    , ( RE, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RW, SC, SZ, TF, TK, VI, YT ], Africa )
    , ( RO, [ AD, CO, MD, TD ], Europe )
    , ( RS, [ AL, BA, CZ, FR, HR, LU, ME, MK, NL, PY, RU, SI, SK, SX ], Europe )
    , ( RU, [ AL, BA, CZ, FR, HR, LU, ME, MK, NL, PY, RS, SI, SK, SX ], Asia )
    , ( RW, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, SC, SZ, TF, TK, VI, YT ], Africa )
    , ( SA, [ BH, QA ], Asia )
    , ( SB, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SL, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Oceania )
    , ( SC, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SZ, TF, TK, VI, YT ], Africa )
    , ( SD, [ AE, AF, EH, JO, KW, PS, SS ], Africa )
    , ( SE, [ AX, BV, DK, FI, FO, GG, IS, NO, SJ ], Europe )
    , ( SG, [ ID, MC, MT, PL ], Asia )
    , ( SH, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, TC, TV, VG ], Africa )
    , ( SI, [ AL, BA, CZ, FR, HR, LU, ME, MK, NL, PY, RS, RU, SK, SX ], Europe )
    , ( SJ, [ AX, BV, DK, FI, FO, GG, IS, NO, SE ], Europe )
    , ( SK, [ AL, BA, CZ, FR, HR, LU, ME, MK, NL, PY, RS, RU, SI, SX ], Europe )
    , ( SL, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SO, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( SM, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, UA, VA, WF, ZA ], Europe )
    , ( SN, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, GW, ML, MM, SR, ST, TG, VN, ZW ], Africa )
    , ( SO, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, TH, TL, TT, TZ, UG, VC, VU, ZM ], Africa )
    , ( SR, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, GW, ML, MM, SN, ST, TG, VN, ZW ], SouthAmerica )
    , ( SS, [ AE, AF, EH, JO, KW, PS, SD ], Africa )
    , ( ST, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, GW, ML, MM, SN, SR, TG, VN, ZW ], Africa )
    , ( SV, [ HN, NI ], NorthAmerica )
    , ( SX, [ AL, BA, CZ, FR, HR, LU, ME, MK, NL, PY, RS, RU, SI, SK ], NorthAmerica )
    , ( SY, [ EG, IQ, YE ], Asia )
    , ( SZ, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, TF, TK, VI, YT ], Africa )
    , ( TC, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TV, VG ], SouthAmerica )
    , ( TD, [ AD, CO, MD, RO ], Africa )
    , ( TF, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TK, VI, YT ], Antartica )
    , ( TG, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, GW, ML, MM, SN, SR, ST, VN, ZW ], Africa )
    , ( TH, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TL, TT, TZ, UG, VC, VU, ZM ], Asia )
    , ( TJ, [ BG, BY, HU, IR, MG ], Asia )
    , ( TK, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, VI, YT ], Oceania )
    , ( TL, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TT, TZ, UG, VC, VU, ZM ], Asia )
    , ( TM, [ BI, BT, KG, KZ, LK, NP, UZ ], Asia )
    , ( TN, [ AZ, DZ, LY, MR, MV, PK, TR ], Africa )
    , ( TO, [ CL, LR, MY, TW, UM, US, WS ], Oceania )
    , ( TR, [ AZ, DZ, LY, MR, MV, PK, TN ], Asia )
    , ( TT, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TZ, UG, VC, VU, ZM ], SouthAmerica )
    , ( TV, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, VG ], Oceania )
    , ( TW, [ CL, LR, MY, TO, UM, US, WS ], Asia )
    , ( TZ, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, UG, VC, VU, ZM ], Africa )
    , ( UA, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, VA, WF, ZA ], Europe )
    , ( UG, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, VC, VU, ZM ], Africa )
    , ( UM, [ CL, LR, MY, TO, TW, US, WS ], NorthAmerica )
    , ( US, [ CL, LR, MY, TO, TW, UM, WS ], NorthAmerica )
    , ( UY, [ AR, BO, EC, PE, VE ], SouthAmerica )
    , ( UZ, [ BI, BT, KG, KZ, LK, NP, TM ], Asia )
    , ( VA, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, WF, ZA ], Europe )
    , ( VC, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VU, ZM ], SouthAmerica )
    , ( VE, [ AR, BO, EC, PE, UY ], SouthAmerica )
    , ( VG, [ AI, AU, BM, CK, FJ, FK, GS, HM, IO, KY, MS, NU, NZ, PN, SH, TC, TV ], SouthAmerica )
    , ( VI, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, YT ], SouthAmerica )
    , ( VN, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, GW, ML, MM, SN, SR, ST, TG, ZW ], Asia )
    , ( VU, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, ZM ], Oceania )
    , ( WF, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, ZA ], Oceania )
    , ( WS, [ CL, LR, MY, TO, TW, UM, US ], Oceania )
    , ( YE, [ EG, IQ, SY ], Asia )
    , ( YT, [ AG, AS, AW, BB, BL, BN, BQ, BZ, CC, CR, CV, CW, CX, DM, DO, FM, GI, GP, GQ, GT_, GU, HT, KI, KM, LC, LI, MH, MN, MP, MQ, NC, NR, OM, PG, PH, PM, RE, RW, SC, SZ, TF, TK, VI ], Africa )
    , ( ZA, [ AQ, BE, BR, CA, CH, CN, CY, DE, ES, GB, GE, GR, IL, IN, JM, JP, KR, MF, PT, SM, UA, VA, WF ], Africa )
    , ( ZM, [ AM, AO, BD, BS, BW, CD, CF, DJ, ER, GA, GL, GM, GY, KE, KN, LA, LS, MA, MU, MW, MZ, NA, NE, NF, NG, PA, PW, SB, SL, SO, TH, TL, TT, TZ, UG, VC, VU ], Africa )
    , ( ZW, [ BF, BJ, CG, CM, ET, GD, GF, GH, GN, GW, ML, MM, SN, SR, ST, TG, VN ], Africa )
    ]


toCard : CardKind -> Difficulty -> ( CountryCode, List CountryCode, Continent ) -> Random.Seed -> ( Card, Random.Seed )
toCard kind difficulty ( countryCode, similar, continent ) seed =
    let
        count : number
        count =
            case difficulty of
                Easy ->
                    4

                Normal ->
                    4

                Hard ->
                    6

        listGenerator : Random.Generator (List CountryCode)
        listGenerator =
            case difficulty of
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
            listGenerator
                |> Random.andThen
                    (\others ->
                        Random.List.shuffle (countryCode :: others)
                            |> Random.map
                                (\options ->
                                    { guessing = countryCode
                                    , options = options
                                    , kind = kind
                                    }
                                )
                    )
    in
    Random.step generator seed


type Continent
    = Africa
    | Antartica
    | Asia
    | Europe
    | NorthAmerica
    | Oceania
    | SouthAmerica


toEmoji : CountryCode -> String
toEmoji countryCode =
    countryCode
        |> Iso3166.toAlpha2
        |> String.toList
        |> List.map (\c -> Char.fromCode <| Char.toCode c - Char.toCode 'a' + 0x0001F1E6)
        |> String.fromList


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
