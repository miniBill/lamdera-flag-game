module Flags exposing (allCards)

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
    [ ( AD, [], Europe )
    , ( AE, [], Asia )
    , ( AF, [], Asia )
    , ( AG, [], SouthAmerica )
    , ( AI, [], SouthAmerica )
    , ( AL, [], Europe )
    , ( AM, [], Asia )
    , ( AO, [], Africa )
    , ( AQ, [], Antartica )
    , ( AR, [], SouthAmerica )
    , ( AS, [], Oceania )
    , ( AT, [], Europe )
    , ( AU, [], Oceania )
    , ( AW, [], SouthAmerica )
    , ( AX, [], Europe )
    , ( AZ, [], Asia )
    , ( BA, [], Europe )
    , ( BB, [], SouthAmerica )
    , ( BD, [], Asia )
    , ( BE, [], Europe )
    , ( BF, [], Africa )
    , ( BG, [], Europe )
    , ( BH, [], Asia )
    , ( BI, [], Africa )
    , ( BJ, [], Africa )
    , ( BL, [], NorthAmerica )
    , ( BM, [], SouthAmerica )
    , ( BN, [], Asia )
    , ( BO, [], SouthAmerica )
    , ( BQ, [], NorthAmerica )
    , ( BR, [], SouthAmerica )
    , ( BS, [], SouthAmerica )
    , ( BT, [], Asia )
    , ( BV, [], Antartica )
    , ( BW, [], Africa )
    , ( BY, [], Europe )
    , ( BZ, [], NorthAmerica )
    , ( CA, [], NorthAmerica )
    , ( CC, [], Asia )
    , ( CD, [], Africa )
    , ( CF, [], Africa )
    , ( CG, [], Africa )
    , ( CH, [], Europe )
    , ( CI, [], Africa )
    , ( CK, [], Oceania )
    , ( CL, [], SouthAmerica )
    , ( CM, [], Africa )
    , ( CN, [], Asia )
    , ( CO, [], SouthAmerica )
    , ( CR, [], NorthAmerica )
    , ( CU, [], SouthAmerica )
    , ( CV, [], Africa )
    , ( CW, [], SouthAmerica )
    , ( CX, [], Asia )
    , ( CY, [], Asia )
    , ( CZ, [], Europe )
    , ( DE, [], Europe )
    , ( DJ, [], Africa )
    , ( DK, [], Europe )
    , ( DM, [], SouthAmerica )
    , ( DO, [], SouthAmerica )
    , ( DZ, [], Africa )
    , ( EC, [], SouthAmerica )
    , ( EE, [], Europe )
    , ( EG, [], Africa )
    , ( EH, [], Africa )
    , ( ER, [], Africa )
    , ( ES, [], Europe )
    , ( ET, [], Africa )
    , ( FI, [], Europe )
    , ( FJ, [], Oceania )
    , ( FK, [], SouthAmerica )
    , ( FM, [], Oceania )
    , ( FO, [], Europe )
    , ( FR, [], Europe )
    , ( GA, [], Africa )
    , ( GB, [], Europe )
    , ( GB, [], Europe )
    , ( GD, [], SouthAmerica )
    , ( GE, [], Asia )
    , ( GF, [], SouthAmerica )
    , ( GG, [], Europe )
    , ( GH, [], Africa )
    , ( GI, [], Europe )
    , ( GL, [], NorthAmerica )
    , ( GM, [], Africa )
    , ( GN, [], Africa )
    , ( GP, [], SouthAmerica )
    , ( GQ, [], Africa )
    , ( GR, [], Europe )
    , ( GS, [], Antartica )
    , ( GT_, [], NorthAmerica )
    , ( GU, [], Oceania )
    , ( GW, [], Africa )
    , ( GY, [], SouthAmerica )
    , ( HK, [], Asia )
    , ( HM, [], Antartica )
    , ( HN, [], NorthAmerica )
    , ( HR, [], Europe )
    , ( HT, [], SouthAmerica )
    , ( HU, [], Europe )
    , ( ID, [], Asia )
    , ( IE, [], Europe )
    , ( IL, [], Asia )
    , ( IM, [], Europe )
    , ( IN, [], Asia )
    , ( IO, [], Asia )
    , ( IQ, [], Asia )
    , ( IR, [], Asia )
    , ( IS, [], Europe )
    , ( IT, [], Europe )
    , ( JE, [], Europe )
    , ( JM, [], SouthAmerica )
    , ( JO, [], Asia )
    , ( JP, [], Asia )
    , ( KE, [], Africa )
    , ( KG, [], Asia )
    , ( KH, [], Asia )
    , ( KI, [], Oceania )
    , ( KM, [], Africa )
    , ( KN, [], SouthAmerica )
    , ( KP, [], Asia )
    , ( KR, [], Asia )
    , ( KW, [], Asia )
    , ( KY, [], SouthAmerica )
    , ( KZ, [], Asia )
    , ( LA, [], Asia )
    , ( LB, [], Asia )
    , ( LC, [], SouthAmerica )
    , ( LI, [], Europe )
    , ( LK, [], Asia )
    , ( LR, [], Africa )
    , ( LS, [], Africa )
    , ( LT_, [], Europe )
    , ( LU, [], Europe )
    , ( LV, [], Europe )
    , ( LY, [], Africa )
    , ( MA, [], Africa )
    , ( MC, [], Europe )
    , ( MD, [], Europe )
    , ( ME, [], Europe )
    , ( MF, [], NorthAmerica )
    , ( MG, [], Africa )
    , ( MH, [], Oceania )
    , ( MK, [], Europe )
    , ( ML, [], Africa )
    , ( MM, [], Asia )
    , ( MN, [], Asia )
    , ( MO, [], Asia )
    , ( MP, [], Oceania )
    , ( MQ, [], SouthAmerica )
    , ( MR, [], Africa )
    , ( MS, [], SouthAmerica )
    , ( MT, [], Europe )
    , ( MU, [], Africa )
    , ( MV, [], Asia )
    , ( MW, [], Africa )
    , ( MX, [], NorthAmerica )
    , ( MY, [], Asia )
    , ( MZ, [], Africa )
    , ( NA, [], Africa )
    , ( NC, [], Oceania )
    , ( NE, [], Africa )
    , ( NF, [], Oceania )
    , ( NG, [], Africa )
    , ( NI, [], NorthAmerica )
    , ( NL, [], Europe )
    , ( NO, [], Europe )
    , ( NP, [], Asia )
    , ( NR, [], Oceania )
    , ( NU, [], Oceania )
    , ( NZ, [], Oceania )
    , ( OM, [], Asia )
    , ( PA, [], NorthAmerica )
    , ( PE, [], SouthAmerica )
    , ( PF, [], Oceania )
    , ( PG, [], Oceania )
    , ( PH, [], Asia )
    , ( PK, [], Asia )
    , ( PL, [], Europe )
    , ( PM, [], NorthAmerica )
    , ( PN, [], Oceania )
    , ( PR, [], SouthAmerica )
    , ( PS, [], Asia )
    , ( PT, [], Europe )
    , ( PW, [], Oceania )
    , ( PY, [], SouthAmerica )
    , ( QA, [], Asia )
    , ( RE, [], Africa )
    , ( RO, [], Europe )
    , ( RS, [], Europe )
    , ( RU, [], Asia )
    , ( RW, [], Africa )
    , ( SA, [], Asia )
    , ( SB, [], Oceania )
    , ( SC, [], Africa )
    , ( SD, [], Africa )
    , ( SE, [], Europe )
    , ( SG, [], Asia )
    , ( SH, [], Africa )
    , ( SI, [], Europe )
    , ( SJ, [], Europe )
    , ( SK, [], Europe )
    , ( SL, [], Africa )
    , ( SM, [], Europe )
    , ( SN, [], Africa )
    , ( SO, [], Africa )
    , ( SR, [], SouthAmerica )
    , ( SS, [], Africa )
    , ( ST, [], Africa )
    , ( SV, [], NorthAmerica )
    , ( SX, [], NorthAmerica )
    , ( SY, [], Asia )
    , ( SZ, [], Africa )
    , ( TC, [], SouthAmerica )
    , ( TD, [], Africa )
    , ( TF, [], Antartica )
    , ( TG, [], Africa )
    , ( TH, [], Asia )
    , ( TJ, [], Asia )
    , ( TK, [], Oceania )
    , ( TL, [], Asia )
    , ( TM, [], Asia )
    , ( TN, [], Africa )
    , ( TO, [], Oceania )
    , ( TR, [], Asia )
    , ( TT, [], SouthAmerica )
    , ( TV, [], Oceania )
    , ( TW, [], Asia )
    , ( TZ, [], Africa )
    , ( UA, [], Europe )
    , ( UG, [], Africa )
    , ( UM, [], NorthAmerica )
    , ( US, [], NorthAmerica )
    , ( UY, [], SouthAmerica )
    , ( UZ, [], Asia )
    , ( VA, [], Europe )
    , ( VC, [], SouthAmerica )
    , ( VE, [], SouthAmerica )
    , ( VG, [], SouthAmerica )
    , ( VI, [], SouthAmerica )
    , ( VN, [], Asia )
    , ( VU, [], Oceania )
    , ( WF, [], Oceania )
    , ( WS, [], Oceania )
    , ( YE, [], Asia )
    , ( YT, [], Africa )
    , ( ZA, [], Africa )
    , ( ZM, [], Africa )
    , ( ZW, [], Africa )
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
