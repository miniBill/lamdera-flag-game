module Flags exposing (Continent(..), allCards, continentToString, getSimilarFlags, toContinent)

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
        |> List.filter ((/=) countryCode)


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


toContinent : CountryCode -> Continent
toContinent countryCode =
    case countryCode of
        AD ->
            Europe

        AE ->
            Asia

        AF ->
            Asia

        AG ->
            SouthAmerica

        AI ->
            SouthAmerica

        AL ->
            Europe

        AM ->
            Asia

        AO ->
            Africa

        AQ ->
            Antartica

        AR ->
            SouthAmerica

        AS ->
            Oceania

        AT ->
            Europe

        AU ->
            Oceania

        AW ->
            SouthAmerica

        AX ->
            Europe

        AZ ->
            Asia

        BA ->
            Europe

        BB ->
            SouthAmerica

        BD ->
            Asia

        BE ->
            Europe

        BF ->
            Africa

        BG ->
            Europe

        BH ->
            Asia

        BI ->
            Africa

        BJ ->
            Africa

        BL ->
            NorthAmerica

        BM ->
            SouthAmerica

        BN ->
            Asia

        BO ->
            SouthAmerica

        BQ ->
            NorthAmerica

        BR ->
            SouthAmerica

        BS ->
            SouthAmerica

        BT ->
            Asia

        BV ->
            Antartica

        BW ->
            Africa

        BY ->
            Europe

        BZ ->
            NorthAmerica

        CA ->
            NorthAmerica

        CC ->
            Asia

        CD ->
            Africa

        CF ->
            Africa

        CG ->
            Africa

        CH ->
            Europe

        CI ->
            Africa

        CK ->
            Oceania

        CL ->
            SouthAmerica

        CM ->
            Africa

        CN ->
            Asia

        CO ->
            SouthAmerica

        CR ->
            NorthAmerica

        CU ->
            SouthAmerica

        CV ->
            Africa

        CW ->
            SouthAmerica

        CX ->
            Asia

        CY ->
            Asia

        CZ ->
            Europe

        DE ->
            Europe

        DJ ->
            Africa

        DK ->
            Europe

        DM ->
            SouthAmerica

        DO ->
            SouthAmerica

        DZ ->
            Africa

        EC ->
            SouthAmerica

        EE ->
            Europe

        EG ->
            Africa

        EH ->
            Africa

        ER ->
            Africa

        ES ->
            Europe

        ET ->
            Africa

        FI ->
            Europe

        FJ ->
            Oceania

        FK ->
            SouthAmerica

        FM ->
            Oceania

        FO ->
            Europe

        FR ->
            Europe

        GA ->
            Africa

        GB ->
            Europe

        GD ->
            SouthAmerica

        GE ->
            Asia

        GF ->
            SouthAmerica

        GG ->
            Europe

        GH ->
            Africa

        GI ->
            Europe

        GL ->
            NorthAmerica

        GM ->
            Africa

        GN ->
            Africa

        GP ->
            SouthAmerica

        GQ ->
            Africa

        GR ->
            Europe

        GS ->
            Antartica

        GT_ ->
            NorthAmerica

        GU ->
            Oceania

        GW ->
            Africa

        GY ->
            SouthAmerica

        HK ->
            Asia

        HM ->
            Antartica

        HN ->
            NorthAmerica

        HR ->
            Europe

        HT ->
            SouthAmerica

        HU ->
            Europe

        ID ->
            Asia

        IE ->
            Europe

        IL ->
            Asia

        IM ->
            Europe

        IN ->
            Asia

        IO ->
            Asia

        IQ ->
            Asia

        IR ->
            Asia

        IS ->
            Europe

        IT ->
            Europe

        JE ->
            Europe

        JM ->
            SouthAmerica

        JO ->
            Asia

        JP ->
            Asia

        KE ->
            Africa

        KG ->
            Asia

        KH ->
            Asia

        KI ->
            Oceania

        KM ->
            Africa

        KN ->
            SouthAmerica

        KP ->
            Asia

        KR ->
            Asia

        KW ->
            Asia

        KY ->
            SouthAmerica

        KZ ->
            Asia

        LA ->
            Asia

        LB ->
            Asia

        LC ->
            SouthAmerica

        LI ->
            Europe

        LK ->
            Asia

        LR ->
            Africa

        LS ->
            Africa

        LT_ ->
            Europe

        LU ->
            Europe

        LV ->
            Europe

        LY ->
            Africa

        MA ->
            Africa

        MC ->
            Europe

        MD ->
            Europe

        ME ->
            Europe

        MF ->
            NorthAmerica

        MG ->
            Africa

        MH ->
            Oceania

        MK ->
            Europe

        ML ->
            Africa

        MM ->
            Asia

        MN ->
            Asia

        MO ->
            Asia

        MP ->
            Oceania

        MQ ->
            SouthAmerica

        MR ->
            Africa

        MS ->
            SouthAmerica

        MT ->
            Europe

        MU ->
            Africa

        MV ->
            Asia

        MW ->
            Africa

        MX ->
            NorthAmerica

        MY ->
            Asia

        MZ ->
            Africa

        NA ->
            Africa

        NC ->
            Oceania

        NE ->
            Africa

        NF ->
            Oceania

        NG ->
            Africa

        NI ->
            NorthAmerica

        NL ->
            Europe

        NO ->
            Europe

        NP ->
            Asia

        NR ->
            Oceania

        NU ->
            Oceania

        NZ ->
            Oceania

        OM ->
            Asia

        PA ->
            NorthAmerica

        PE ->
            SouthAmerica

        PF ->
            Oceania

        PG ->
            Oceania

        PH ->
            Asia

        PK ->
            Asia

        PL ->
            Europe

        PM ->
            NorthAmerica

        PN ->
            Oceania

        PR ->
            SouthAmerica

        PS ->
            Asia

        PT ->
            Europe

        PW ->
            Oceania

        PY ->
            SouthAmerica

        QA ->
            Asia

        RE ->
            Africa

        RO ->
            Europe

        RS ->
            Europe

        RU ->
            Asia

        RW ->
            Africa

        SA ->
            Asia

        SB ->
            Oceania

        SC ->
            Africa

        SD ->
            Africa

        SE ->
            Europe

        SG ->
            Asia

        SH ->
            Africa

        SI ->
            Europe

        SJ ->
            Europe

        SK ->
            Europe

        SL ->
            Africa

        SM ->
            Europe

        SN ->
            Africa

        SO ->
            Africa

        SR ->
            SouthAmerica

        SS ->
            Africa

        ST ->
            Africa

        SV ->
            NorthAmerica

        SX ->
            NorthAmerica

        SY ->
            Asia

        SZ ->
            Africa

        TC ->
            SouthAmerica

        TD ->
            Africa

        TF ->
            Antartica

        TG ->
            Africa

        TH ->
            Asia

        TJ ->
            Asia

        TK ->
            Oceania

        TL ->
            Asia

        TM ->
            Asia

        TN ->
            Africa

        TO ->
            Oceania

        TR ->
            Asia

        TT ->
            SouthAmerica

        TV ->
            Oceania

        TW ->
            Asia

        TZ ->
            Africa

        UA ->
            Europe

        UG ->
            Africa

        UM ->
            NorthAmerica

        US ->
            NorthAmerica

        UY ->
            SouthAmerica

        UZ ->
            Asia

        VA ->
            Europe

        VC ->
            SouthAmerica

        VE ->
            SouthAmerica

        VG ->
            SouthAmerica

        VI ->
            SouthAmerica

        VN ->
            Asia

        VU ->
            Oceania

        WF ->
            Oceania

        WS ->
            Oceania

        YE ->
            Asia

        YT ->
            Africa

        ZA ->
            Africa

        ZM ->
            Africa

        ZW ->
            Africa
