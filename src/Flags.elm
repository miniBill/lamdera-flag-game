module Flags exposing (Continent(..), Sovereignity, all, allCards, continentToString, getSimilarFlags, toContinent)

import Cldr exposing (CountryCode(..))
import List.Extra
import Random
import Random.List
import Types exposing (Card, Country(..), Difficulty(..), GameOptions, Property(..))


allCards : GameOptions -> Random.Seed -> ( List Card, Random.Seed )
allCards options seed =
    let
        ( finalSeed, result ) =
            all options
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
            |> Random.map (List.take options.gameLength)
        )
        finalSeed


similarityGroups : List (List Country)
similarityGroups =
    [ [ Iso3166 AD, Iso3166 MD, Iso3166 RO, Iso3166 TD ]
    , [ Iso3166 AE, Iso3166 EH, Iso3166 JO, Iso3166 KW, Iso3166 PS, Iso3166 SD, Iso3166 SS ]
    , [ Iso3166 AF, Iso3166 AQ, Iso3166 BE, Iso3166 BR, Iso3166 CA, Iso3166 CH, Iso3166 CN, Iso3166 CY, Iso3166 DE, Iso3166 ES, Iso3166 FR, Iso3166 GB, Iso3166 GE, Iso3166 GR, Iso3166 IL, Iso3166 IN, Iso3166 JM, Iso3166 JP, Iso3166 KR, Iso3166 MF, Iso3166 MK, Iso3166 PT, Iso3166 SA, Iso3166 SM, Iso3166 UA, Iso3166 VA, Iso3166 WF, Iso3166 XK, Iso3166 ZA ]
    , [ Iso3166 AG, Iso3166 AS, Iso3166 AW, Iso3166 BB, Iso3166 BL, Iso3166 BN, Iso3166 BQ, Iso3166 BZ, Iso3166 CC, Iso3166 CR, Iso3166 CV, Iso3166 CW, Iso3166 CX, Iso3166 DM, Iso3166 DO, Iso3166 FM, Iso3166 GI, Iso3166 GP, Iso3166 GQ, Iso3166 GT_, Iso3166 GU, Iso3166 HK, Iso3166 HT, Iso3166 IM, Iso3166 JE, Iso3166 KI, Iso3166 KM, Iso3166 LC, Iso3166 LI, Iso3166 MH, Iso3166 MN, Iso3166 MO, Iso3166 MP, Iso3166 MQ, Iso3166 NC, Iso3166 NF, Iso3166 NR, Iso3166 OM, Iso3166 PF, Iso3166 PG, Iso3166 PH, Iso3166 PM, Iso3166 PW, Iso3166 RE, Iso3166 SB, Iso3166 SC, Iso3166 SX, Iso3166 SZ, Iso3166 TF, Iso3166 TK, Iso3166 VC, Iso3166 VI, Iso3166 VU, Iso3166 YT ]
    , [ Iso3166 AI, Iso3166 AU, Iso3166 BM, Iso3166 CK, Iso3166 FJ, Iso3166 FK, Iso3166 GS, Iso3166 HM, Iso3166 IO, Iso3166 KY, Iso3166 MS, Iso3166 NU, Iso3166 NZ, Iso3166 PN, Iso3166 SH, Iso3166 TC, Iso3166 TV, Iso3166 VG ]
    , [ Iso3166 AL, Iso3166 BA, Iso3166 CZ, Iso3166 HR, Iso3166 LU, Iso3166 ME, Iso3166 NL, Iso3166 RS, Iso3166 RU, Iso3166 SI, Iso3166 SK ]
    , [ Iso3166 AM, Iso3166 AO, Iso3166 BD, Iso3166 BS, Iso3166 BW, Iso3166 CD, Iso3166 CF, Iso3166 DJ, Iso3166 EE, Iso3166 ER, Iso3166 GA, Iso3166 GL, Iso3166 GM, Iso3166 GY, Iso3166 KE, Iso3166 KN, Iso3166 LA, Iso3166 LS, Iso3166 LT_, Iso3166 MG, Iso3166 MU, Iso3166 MW, Iso3166 MZ, Iso3166 NA, Iso3166 NE, Iso3166 NG, Iso3166 PA, Iso3166 RW, Iso3166 SL, Iso3166 SO, Iso3166 TH, Iso3166 TL, Iso3166 TT, Iso3166 TZ, Iso3166 UG, Iso3166 ZM ]
    , [ Iso3166 AR, Iso3166 BO, Iso3166 CL, Iso3166 CO, Iso3166 EC, Iso3166 PE, Iso3166 PY, Iso3166 UY, Iso3166 VE ]
    , [ Iso3166 AT, Iso3166 ID, Iso3166 LV, Iso3166 MC, Iso3166 MT, Iso3166 PL, Iso3166 SG ]
    , [ Iso3166 AX, Iso3166 BV, Iso3166 DK, Iso3166 FI, Iso3166 FO, Iso3166 GG, Iso3166 IS, Iso3166 NO, Iso3166 SE, Iso3166 SJ ]
    , [ Iso3166 AZ, Iso3166 DZ, Iso3166 LY, Iso3166 MR, Iso3166 MV, Iso3166 PK, Iso3166 TN, Iso3166 TR ]
    , [ Iso3166 BF, Iso3166 BI, Iso3166 BJ, Iso3166 CG, Iso3166 CM, Iso3166 ET, Iso3166 GD, Iso3166 GF, Iso3166 GH, Iso3166 GN, Iso3166 GW, Iso3166 MA, Iso3166 ML, Iso3166 SN, Iso3166 SR, Iso3166 ST, Iso3166 TG, Iso3166 ZW ]
    , [ Iso3166 BG, Iso3166 BY, Iso3166 CI, Iso3166 HU, Iso3166 IE, Iso3166 IT, Iso3166 MX ]
    , [ Iso3166 BH, Iso3166 QA ]
    , [ Iso3166 BT, Iso3166 KG, Iso3166 KZ, Iso3166 LB, Iso3166 LK, Iso3166 NP, Iso3166 TJ, Iso3166 TM, Iso3166 UZ ]
    , [ Iso3166 CU, Iso3166 PR ]
    , [ Iso3166 EG, Iso3166 IQ, Iso3166 IR, Iso3166 SY, Iso3166 YE ]
    , [ Iso3166 HN, Iso3166 NI, Iso3166 SV ]
    , [ Iso3166 KH, Iso3166 KP, Iso3166 MM, Iso3166 VN ]
    , [ Iso3166 LR, Iso3166 MY, Iso3166 TO, Iso3166 TW, Iso3166 UM, Iso3166 US, Iso3166 WS ]
    ]


getSimilarFlags : { a | sovereignOnly : Bool } -> Country -> List Country
getSimilarFlags { sovereignOnly } countryCode =
    similarityGroups
        |> List.Extra.find (\g -> List.member countryCode g)
        |> Maybe.withDefault []
        |> List.filter
            (\cc ->
                (cc /= countryCode)
                    && (not sovereignOnly || isSovereign cc)
            )


toCard :
    GameOptions
    -> Country
    -> Random.Seed
    -> ( Card, Random.Seed )
toCard options country seed =
    let
        continent : Continent
        continent =
            toContinent country

        similar : List Country
        similar =
            getSimilarFlags options country

        count : Int
        count =
            options.answersPerCard

        listGenerator : Random.Generator (List Country)
        listGenerator =
            case options.difficulty of
                Easy ->
                    all options
                        |> List.filter
                            (\option ->
                                (option /= country)
                                    && not (List.member option similar)
                                    && (continent /= toContinent option)
                            )
                        |> Random.List.choices (count - 1)
                        |> Random.map Tuple.first

                Normal ->
                    all options
                        |> List.filter
                            (\option ->
                                (option /= country)
                                    && not (List.member option similar)
                                    && (continent == toContinent option)
                            )
                        |> Random.List.choices (count - 1)
                        |> Random.map Tuple.first

                Hard ->
                    if List.length similar < (count - 1) then
                        all options
                            |> List.filter
                                (\option ->
                                    (option /= country)
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
                    { guessing = country
                    , answers = countries
                    , guessFrom = guessFrom
                    , guessTo = guessTo
                    }
                )
                (propertyGenerator options)
                (Random.andThen Random.List.shuffle <| Random.map ((::) country) listGenerator)
    in
    Random.step generator seed


propertyGenerator : GameOptions -> Random.Generator ( Property, Property )
propertyGenerator { guessPatterns } =
    let
        pairs : List ( Property, Property )
        pairs =
            List.filter
                (\( f, t ) -> f /= t)
                guessPatterns
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


toContinent : Country -> Continent
toContinent country =
    case country of
        PartiallyRecognized ever ->
            never ever

        Iso3166 countryCode ->
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

                XK ->
                    Europe

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


type Sovereignity
    = Sovereign
    | NotSovereign


toSovereignity : Country -> Sovereignity
toSovereignity country =
    case country of
        PartiallyRecognized ever ->
            never ever

        Iso3166 countryCode ->
            case countryCode of
                -- Afghanistan
                AF ->
                    Sovereign

                -- Åland Islands
                AX ->
                    NotSovereign

                -- Albania
                AL ->
                    Sovereign

                -- Algeria
                DZ ->
                    Sovereign

                -- American Samoa
                AS ->
                    NotSovereign

                -- Andorra
                AD ->
                    Sovereign

                -- Angola
                AO ->
                    Sovereign

                -- Anguilla
                AI ->
                    NotSovereign

                -- Antarctica
                AQ ->
                    NotSovereign

                -- Antigua and Barbuda
                AG ->
                    Sovereign

                -- Argentina
                AR ->
                    Sovereign

                -- Armenia
                AM ->
                    Sovereign

                -- Aruba
                AW ->
                    NotSovereign

                -- Australia
                AU ->
                    Sovereign

                -- Austria
                AT ->
                    Sovereign

                -- Azerbaijan
                AZ ->
                    Sovereign

                -- Bahamas
                BS ->
                    Sovereign

                -- Bahrain
                BH ->
                    Sovereign

                -- Bangladesh
                BD ->
                    Sovereign

                -- Barbados
                BB ->
                    Sovereign

                -- Belarus
                BY ->
                    Sovereign

                -- Belgium
                BE ->
                    Sovereign

                -- Belize
                BZ ->
                    Sovereign

                -- Benin
                BJ ->
                    Sovereign

                -- Bermuda
                BM ->
                    NotSovereign

                -- Bhutan
                BT ->
                    Sovereign

                -- Bolivia (Plurinational State of)
                BO ->
                    Sovereign

                -- Bonaire, Sint Eustatius and Saba
                BQ ->
                    NotSovereign

                -- Bosnia and Herzegovina
                BA ->
                    Sovereign

                -- Botswana
                BW ->
                    Sovereign

                -- Bouvet Island
                BV ->
                    NotSovereign

                -- Brazil
                BR ->
                    Sovereign

                -- British Indian Ocean Territory
                IO ->
                    NotSovereign

                -- Brunei Darussalam
                BN ->
                    Sovereign

                -- Bulgaria
                BG ->
                    Sovereign

                -- Burkina Faso
                BF ->
                    Sovereign

                -- Burundi
                BI ->
                    Sovereign

                -- Cabo Verde
                CV ->
                    Sovereign

                -- Cambodia
                KH ->
                    Sovereign

                -- Cameroon
                CM ->
                    Sovereign

                -- Canada
                CA ->
                    Sovereign

                -- Cayman Islands
                KY ->
                    NotSovereign

                -- Central African Republic
                CF ->
                    Sovereign

                -- Chad
                TD ->
                    Sovereign

                -- Chile
                CL ->
                    Sovereign

                -- China
                CN ->
                    Sovereign

                -- Christmas Island
                CX ->
                    NotSovereign

                -- Cocos (Keeling) Islands
                CC ->
                    NotSovereign

                -- Colombia
                CO ->
                    Sovereign

                -- Comoros
                KM ->
                    Sovereign

                -- Congo, Democratic Republic of the
                CD ->
                    Sovereign

                -- Congo
                CG ->
                    Sovereign

                -- Cook Islands
                CK ->
                    NotSovereign

                -- Costa Rica
                CR ->
                    Sovereign

                -- Côte d'Ivoire
                CI ->
                    Sovereign

                -- Croatia
                HR ->
                    Sovereign

                -- Cuba
                CU ->
                    Sovereign

                -- Curaçao
                CW ->
                    NotSovereign

                -- Cyprus
                CY ->
                    Sovereign

                -- Czechia
                CZ ->
                    Sovereign

                -- Denmark
                DK ->
                    Sovereign

                -- Djibouti
                DJ ->
                    Sovereign

                -- Dominica
                DM ->
                    Sovereign

                -- Dominican Republic
                DO ->
                    Sovereign

                -- Ecuador
                EC ->
                    Sovereign

                -- Egypt
                EG ->
                    Sovereign

                -- El Salvador
                SV ->
                    Sovereign

                -- Equatorial Guinea
                GQ ->
                    Sovereign

                -- Eritrea
                ER ->
                    Sovereign

                -- Estonia
                EE ->
                    Sovereign

                -- Eswatini
                SZ ->
                    Sovereign

                -- Ethiopia
                ET ->
                    Sovereign

                -- Falkland Islands (Malvinas)
                FK ->
                    NotSovereign

                -- Faroe Islands
                FO ->
                    NotSovereign

                -- Fiji
                FJ ->
                    Sovereign

                -- Finland
                FI ->
                    Sovereign

                -- France
                FR ->
                    Sovereign

                -- French Guiana
                GF ->
                    NotSovereign

                -- French Polynesia
                PF ->
                    NotSovereign

                -- French Southern Territories
                TF ->
                    NotSovereign

                -- Gabon
                GA ->
                    Sovereign

                -- Gambia
                GM ->
                    Sovereign

                -- Georgia
                GE ->
                    Sovereign

                -- Germany
                DE ->
                    Sovereign

                -- Ghana
                GH ->
                    Sovereign

                -- Gibraltar
                GI ->
                    NotSovereign

                -- Greece
                GR ->
                    Sovereign

                -- Greenland
                GL ->
                    NotSovereign

                -- Grenada
                GD ->
                    Sovereign

                -- Guadeloupe
                GP ->
                    NotSovereign

                -- Guam
                GU ->
                    NotSovereign

                --Guatemala
                GT_ ->
                    Sovereign

                -- Guernsey
                GG ->
                    NotSovereign

                -- Guinea-Bissau
                GW ->
                    Sovereign

                -- Guinea
                GN ->
                    Sovereign

                -- Guyana
                GY ->
                    Sovereign

                -- Haiti
                HT ->
                    Sovereign

                -- Heard Island and McDonald Islands
                HM ->
                    NotSovereign

                -- Holy See
                VA ->
                    Sovereign

                -- Honduras
                HN ->
                    Sovereign

                -- Hong Kong
                HK ->
                    NotSovereign

                -- Hungary
                HU ->
                    Sovereign

                -- Iceland
                IS ->
                    Sovereign

                -- India
                IN ->
                    Sovereign

                -- Indonesia
                ID ->
                    Sovereign

                -- Iran (Islamic Republic of)
                IR ->
                    Sovereign

                -- Iraq
                IQ ->
                    Sovereign

                -- Ireland
                IE ->
                    Sovereign

                -- Isle of Man
                IM ->
                    NotSovereign

                -- Israel
                IL ->
                    Sovereign

                -- Italy
                IT ->
                    Sovereign

                -- Jamaica
                JM ->
                    Sovereign

                -- Japan
                JP ->
                    Sovereign

                -- Jersey
                JE ->
                    NotSovereign

                -- Jordan
                JO ->
                    Sovereign

                -- Kazakhstan
                KZ ->
                    Sovereign

                -- Kenya
                KE ->
                    Sovereign

                -- Kiribati
                KI ->
                    Sovereign

                -- Korea (Democratic People's Republic of)
                KP ->
                    Sovereign

                -- Korea, Republic of
                KR ->
                    Sovereign

                -- Kosovo
                XK ->
                    Sovereign

                -- Kuwait
                KW ->
                    Sovereign

                -- Kyrgyzstan
                KG ->
                    Sovereign

                -- Lao People's Democratic Republic
                LA ->
                    Sovereign

                -- Latvia
                LV ->
                    Sovereign

                -- Lebanon
                LB ->
                    Sovereign

                -- Lesotho
                LS ->
                    Sovereign

                -- Liberia
                LR ->
                    Sovereign

                -- Libya
                LY ->
                    Sovereign

                -- Liechtenstein
                LI ->
                    Sovereign

                -- Lithuania
                LT_ ->
                    Sovereign

                -- Luxembourg
                LU ->
                    Sovereign

                -- Macao
                MO ->
                    NotSovereign

                -- Madagascar
                MG ->
                    Sovereign

                -- Malawi
                MW ->
                    Sovereign

                -- Malaysia
                MY ->
                    Sovereign

                -- Maldives
                MV ->
                    Sovereign

                -- Mali
                ML ->
                    Sovereign

                -- Malta
                MT ->
                    Sovereign

                -- Marshall Islands
                MH ->
                    Sovereign

                -- Martinique
                MQ ->
                    NotSovereign

                -- Mauritania
                MR ->
                    Sovereign

                -- Mauritius
                MU ->
                    Sovereign

                -- Mayotte
                YT ->
                    NotSovereign

                -- Mexico
                MX ->
                    Sovereign

                -- Micronesia (Federated States of)
                FM ->
                    Sovereign

                -- Moldova, Republic of
                MD ->
                    Sovereign

                -- Monaco
                MC ->
                    Sovereign

                -- Mongolia
                MN ->
                    Sovereign

                -- Montenegro
                ME ->
                    Sovereign

                -- Montserrat
                MS ->
                    NotSovereign

                -- Morocco
                MA ->
                    Sovereign

                -- Mozambique
                MZ ->
                    Sovereign

                -- Myanmar
                MM ->
                    Sovereign

                -- Namibia
                NA ->
                    Sovereign

                -- Nauru
                NR ->
                    Sovereign

                -- Nepal
                NP ->
                    Sovereign

                -- Netherlands
                NL ->
                    Sovereign

                -- New Caledonia
                NC ->
                    NotSovereign

                -- New Zealand
                NZ ->
                    Sovereign

                -- Nicaragua
                NI ->
                    Sovereign

                -- Niger
                NE ->
                    Sovereign

                -- Nigeria
                NG ->
                    Sovereign

                -- Niue
                NU ->
                    NotSovereign

                -- Norfolk Island
                NF ->
                    NotSovereign

                -- North Macedonia
                MK ->
                    Sovereign

                -- Northern Mariana Islands
                MP ->
                    NotSovereign

                -- Norway
                NO ->
                    Sovereign

                -- Oman
                OM ->
                    Sovereign

                -- Pakistan
                PK ->
                    Sovereign

                -- Palau
                PW ->
                    Sovereign

                -- Palestine, State of
                PS ->
                    Sovereign

                -- Panama
                PA ->
                    Sovereign

                -- Papua New Guinea
                PG ->
                    Sovereign

                -- Paraguay
                PY ->
                    Sovereign

                -- Peru
                PE ->
                    Sovereign

                -- Philippines
                PH ->
                    Sovereign

                -- Pitcairn
                PN ->
                    NotSovereign

                -- Poland
                PL ->
                    Sovereign

                -- Portugal
                PT ->
                    Sovereign

                -- Puerto Rico
                PR ->
                    NotSovereign

                -- Qatar
                QA ->
                    Sovereign

                -- Réunion
                RE ->
                    NotSovereign

                -- Romania
                RO ->
                    Sovereign

                -- Russian Federation
                RU ->
                    Sovereign

                -- Rwanda
                RW ->
                    Sovereign

                -- Saint Barthélemy
                BL ->
                    NotSovereign

                -- Saint Helena, Ascension and Tristan da Cunha
                SH ->
                    NotSovereign

                -- Saint Kitts and Nevis
                KN ->
                    Sovereign

                -- Saint Lucia
                LC ->
                    Sovereign

                -- Saint Martin (French part)
                MF ->
                    NotSovereign

                -- Saint Pierre and Miquelon
                PM ->
                    NotSovereign

                -- Saint Vincent and the Grenadines
                VC ->
                    Sovereign

                -- Samoa
                WS ->
                    Sovereign

                -- San Marino
                SM ->
                    Sovereign

                -- Sao Tome and Principe
                ST ->
                    Sovereign

                -- Saudi Arabia
                SA ->
                    Sovereign

                -- Senegal
                SN ->
                    Sovereign

                -- Serbia
                RS ->
                    Sovereign

                -- Seychelles
                SC ->
                    Sovereign

                -- Sierra Leone
                SL ->
                    Sovereign

                -- Singapore
                SG ->
                    Sovereign

                -- Sint Maarten (Dutch part)
                SX ->
                    NotSovereign

                -- Slovakia
                SK ->
                    Sovereign

                -- Slovenia
                SI ->
                    Sovereign

                -- Solomon Islands
                SB ->
                    Sovereign

                -- Somalia
                SO ->
                    Sovereign

                -- South Africa
                ZA ->
                    Sovereign

                -- South Georgia and the South Sandwich Islands
                GS ->
                    NotSovereign

                -- South Sudan
                SS ->
                    Sovereign

                -- Spain
                ES ->
                    Sovereign

                -- Sri Lanka
                LK ->
                    Sovereign

                -- Sudan
                SD ->
                    Sovereign

                -- Suriname
                SR ->
                    Sovereign

                -- Svalbard and Jan Mayen
                SJ ->
                    NotSovereign

                -- Sweden
                SE ->
                    Sovereign

                -- Switzerland
                CH ->
                    Sovereign

                -- Syrian Arab Republic
                SY ->
                    Sovereign

                -- Taiwan, Province of China
                TW ->
                    Sovereign

                -- Tajikistan
                TJ ->
                    Sovereign

                -- Tanzania, United Republic of
                TZ ->
                    Sovereign

                -- Thailand
                TH ->
                    Sovereign

                -- Timor-Leste
                TL ->
                    Sovereign

                -- Togo
                TG ->
                    Sovereign

                -- Tokelau
                TK ->
                    NotSovereign

                -- Tonga
                TO ->
                    Sovereign

                -- Trinidad and Tobago
                TT ->
                    Sovereign

                -- Tunisia
                TN ->
                    Sovereign

                -- Türkiye
                TR ->
                    Sovereign

                -- Turkmenistan
                TM ->
                    Sovereign

                -- Turks and Caicos Islands
                TC ->
                    NotSovereign

                -- Tuvalu
                TV ->
                    Sovereign

                -- Uganda
                UG ->
                    Sovereign

                -- Ukraine
                UA ->
                    Sovereign

                -- United Arab Emirates
                AE ->
                    Sovereign

                -- United Kingdom of Great Britain and Northern Ireland
                GB ->
                    Sovereign

                -- United States Minor Outlying Islands
                UM ->
                    NotSovereign

                -- United States of America
                US ->
                    Sovereign

                -- Uruguay
                UY ->
                    Sovereign

                -- Uzbekistan
                UZ ->
                    Sovereign

                -- Vanuatu
                VU ->
                    Sovereign

                -- Venezuela (Bolivarian Republic of)
                VE ->
                    Sovereign

                -- Viet Nam
                VN ->
                    Sovereign

                -- Virgin Islands (British)
                VG ->
                    NotSovereign

                -- Virgin Islands (U.S.)
                VI ->
                    NotSovereign

                -- Wallis and Futuna
                WF ->
                    NotSovereign

                -- Western Sahara
                EH ->
                    NotSovereign

                -- Yemen
                YE ->
                    Sovereign

                -- Zambia
                ZM ->
                    Sovereign

                -- Zimbabwe
                ZW ->
                    Sovereign


all : { a | sovereignOnly : Bool } -> List Country
all { sovereignOnly } =
    let
        fromIso : List Country
        fromIso =
            if sovereignOnly then
                List.filter isSovereign <| List.map Iso3166 Cldr.all

            else
                List.map Iso3166 Cldr.all
    in
    fromIso


isSovereign : Country -> Bool
isSovereign country =
    toSovereignity country == Sovereign
