module Flags exposing (all, allCards, categoryToString, continentToString, getSimilarFlags, toContinent)

import Cldr exposing (CountryCode(..))
import List.Extra
import Random
import Random.List
import Shared.Model exposing (Card, Category(..), Continent(..), Country(..), Difficulty(..), GameOptions, NonIso3166(..), Property(..))


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
    [ [ NonIso3166 Abkhazia, Iso3166 LR, Iso3166 MY, Iso3166 TO, Iso3166 TW, Iso3166 UM, Iso3166 US, Iso3166 WS ]
    , [ Iso3166 AD, Iso3166 MD, Iso3166 RO, Iso3166 TD ]
    , [ Iso3166 AE, Iso3166 EH, Iso3166 JO, Iso3166 KW, Iso3166 PS, Iso3166 SD, Iso3166 SS ]
    , [ Iso3166 AF, Iso3166 AG, Iso3166 AO, Iso3166 AQ, Iso3166 AW, Iso3166 BB, Iso3166 BN, Iso3166 BR, Iso3166 BZ, Iso3166 CA, Iso3166 CC, Iso3166 CF, Iso3166 CH, Iso3166 CN, Iso3166 CX, Iso3166 CY, Iso3166 ER, Iso3166 ES, Iso3166 GB, Iso3166 GE, Iso3166 GI, Iso3166 GL, Iso3166 GR, Iso3166 HK, Iso3166 IL, Iso3166 IM, Iso3166 IN, Iso3166 JE, Iso3166 JM, Iso3166 JP, Iso3166 KE, Iso3166 KH, Iso3166 KM, Iso3166 KR, Iso3166 LB, Iso3166 LC, Iso3166 LI, Iso3166 LS, Iso3166 MK, Iso3166 MN, Iso3166 MO, Iso3166 MW, Iso3166 MZ, Iso3166 OM, Iso3166 PA, Iso3166 PG, Iso3166 PH, Iso3166 PT, Iso3166 SA, Iso3166 SB, Iso3166 SC, Iso3166 SM, NonIso3166 Somaliland, Iso3166 SX, Iso3166 SZ, Iso3166 TF, Iso3166 TK, NonIso3166 Transnistria, Iso3166 UG, Iso3166 VA, Iso3166 VC, Iso3166 VI, Iso3166 VU, Iso3166 WF, Iso3166 XK, Iso3166 ZA, Iso3166 ZM ]
    , [ Iso3166 AI, Iso3166 AU, Iso3166 BM, Iso3166 CK, Iso3166 FJ, Iso3166 FK, Iso3166 GS, Iso3166 HM, Iso3166 IO, Iso3166 KY, Iso3166 MS, Iso3166 NU, Iso3166 NZ, Iso3166 PN, Iso3166 SH, Iso3166 TC, Iso3166 TV, Iso3166 VG ]
    , [ Iso3166 AL, Iso3166 BA, Iso3166 BQ, Iso3166 CZ, Iso3166 HR, Iso3166 LU, Iso3166 ME, Iso3166 NL, Iso3166 RS, Iso3166 RU, Iso3166 SI, Iso3166 SK ]
    , [ Iso3166 AM, Iso3166 BE, Iso3166 BW, Iso3166 DE, Iso3166 EE, Iso3166 GA, Iso3166 GM, Iso3166 LT_, Iso3166 MG, Iso3166 MU, Iso3166 NG, Iso3166 SL, NonIso3166 SouthOssetia, Iso3166 TH, Iso3166 UA ]
    , [ Iso3166 AR, Iso3166 BO, Iso3166 CL, Iso3166 CO, Iso3166 EC, Iso3166 PE, Iso3166 PY, Iso3166 UY, Iso3166 VE ]
    , [ Iso3166 AS, Iso3166 CR, Iso3166 CV, Iso3166 CW, Iso3166 DM, Iso3166 DO, Iso3166 FM, Iso3166 GQ, Iso3166 GU, Iso3166 HT, Iso3166 KI, Iso3166 MH, Iso3166 MP, Iso3166 NF, Iso3166 NR, Iso3166 PF, Iso3166 PW ]
    , [ Iso3166 AT, Iso3166 ID, Iso3166 LV, Iso3166 MC, Iso3166 MT, Iso3166 PL, Iso3166 SG ]
    , [ Iso3166 AX, Iso3166 BV, Iso3166 DK, Iso3166 FI, Iso3166 FO, Iso3166 GG, Iso3166 IS, Iso3166 NO, Iso3166 SE, Iso3166 SJ ]
    , [ Iso3166 AZ, Iso3166 DZ, Iso3166 LY, Iso3166 MR, Iso3166 MV, NonIso3166 NorthernCyprus, Iso3166 PK, Iso3166 TN, Iso3166 TR ]
    , [ Iso3166 BD, Iso3166 BS, Iso3166 CD, Iso3166 DJ, Iso3166 GY, Iso3166 KN, Iso3166 LA, Iso3166 NA, Iso3166 NE, Iso3166 RW, Iso3166 TL, Iso3166 TT, Iso3166 TZ ]
    , [ Iso3166 BF, Iso3166 BI, Iso3166 BJ, Iso3166 CG, Iso3166 CM, Iso3166 ET, Iso3166 GD, Iso3166 GH, Iso3166 GN, Iso3166 GW, Iso3166 ML, Iso3166 SN, Iso3166 SR, Iso3166 ST, Iso3166 TG, Iso3166 ZW ]
    , [ Iso3166 BG, Iso3166 BY, Iso3166 CI, Iso3166 HU, Iso3166 IE, Iso3166 IT, Iso3166 MX ]
    , [ Iso3166 BH, Iso3166 QA ]
    , [ Iso3166 BL, Iso3166 FR, Iso3166 GF, Iso3166 GP, Iso3166 MF, Iso3166 MQ, Iso3166 NC, Iso3166 PM, Iso3166 RE, Iso3166 YT ]
    , [ Iso3166 BT, Iso3166 KG, Iso3166 KZ, Iso3166 LK, Iso3166 NP, Iso3166 TJ, Iso3166 TM, Iso3166 UZ ]
    , [ Iso3166 CU, Iso3166 PR ]
    , [ Iso3166 EG, Iso3166 IQ, Iso3166 IR, Iso3166 SY, Iso3166 YE ]
    , [ Iso3166 GT_, Iso3166 HN, Iso3166 NI, Iso3166 SV ]
    , [ Iso3166 KP, Iso3166 MA, Iso3166 MM, Iso3166 SO, Iso3166 VN ]
    ]


getSimilarFlags : { a | categories : List Category } -> Country -> List Country
getSimilarFlags { categories } countryCode =
    similarityGroups
        |> List.Extra.find (\g -> List.member countryCode g)
        |> Maybe.withDefault []
        |> List.filter
            (\cc ->
                (cc /= countryCode)
                    && List.member (toCategory cc) categories
            )


toCard :
    GameOptions
    -> Country
    -> Random.Seed
    -> ( Card, Random.Seed )
toCard options country seed =
    let
        listGenerator : Random.Generator (List Country)
        listGenerator =
            let
                continent : Continent
                continent =
                    toContinent country

                count : Int
                count =
                    options.answersPerCard

                similar : List Country
                similar =
                    getSimilarFlags options country

                normalOptions : Random.Generator (List Country)
                normalOptions =
                    all options
                        |> List.filter
                            (\option ->
                                (option /= country)
                                    && not (List.member option similar)
                                    && (continent == toContinent option)
                            )
                        |> Random.List.choices (count - 1)
                        |> Random.map Tuple.first

                fill : Random.Generator (List Country) -> Random.Generator (List Country)
                fill g =
                    g
                        |> Random.andThen
                            (\l ->
                                if List.length l >= (count - 1) then
                                    Random.constant l

                                else
                                    normalOptions
                                        |> Random.andThen
                                            (\normal ->
                                                let
                                                    candidate : List Country
                                                    candidate =
                                                        (l ++ normal)
                                                            |> List.Extra.unique
                                                            |> List.take (count - 1)
                                                in
                                                if List.length candidate >= (count - 1) then
                                                    Random.constant candidate

                                                else
                                                    all options
                                                        |> List.filter
                                                            (\option ->
                                                                option /= country
                                                            )
                                                        |> Random.List.choices (count - 1)
                                                        |> Random.map Tuple.first
                                            )
                            )
            in
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
                        |> fill

                Normal ->
                    normalOptions |> fill

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
                            |> fill

                    else
                        similar
                            |> Random.List.choices (count - 1)
                            |> Random.map Tuple.first
                            |> fill

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


continentToString : Continent -> String
continentToString continent =
    case continent of
        Africa ->
            "Africa"

        Antarctica ->
            "Antarctica"

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
                    Antarctica

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
                    Antarctica

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
                    Antarctica

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
                    Antarctica

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
                    Antarctica

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

        NonIso3166 Abkhazia ->
            Asia

        NonIso3166 NorthernCyprus ->
            Europe

        NonIso3166 Somaliland ->
            Africa

        NonIso3166 SouthOssetia ->
            Asia

        NonIso3166 Transnistria ->
            Europe


toCategory : Country -> Category
toCategory country =
    case country of
        NonIso3166 _ ->
            PartiallyRecognized

        Iso3166 countryCode ->
            case countryCode of
                -- Afghanistan
                AF ->
                    State

                -- Åland Islands
                AX ->
                    Territory

                -- Albania
                AL ->
                    State

                -- Algeria
                DZ ->
                    State

                -- American Samoa
                AS ->
                    Territory

                -- Andorra
                AD ->
                    State

                -- Angola
                AO ->
                    State

                -- Anguilla
                AI ->
                    Territory

                -- Antarctica
                AQ ->
                    Territory

                -- Antigua and Barbuda
                AG ->
                    State

                -- Argentina
                AR ->
                    State

                -- Armenia
                AM ->
                    State

                -- Aruba
                AW ->
                    Territory

                -- Australia
                AU ->
                    State

                -- Austria
                AT ->
                    State

                -- Azerbaijan
                AZ ->
                    State

                -- Bahamas
                BS ->
                    State

                -- Bahrain
                BH ->
                    State

                -- Bangladesh
                BD ->
                    State

                -- Barbados
                BB ->
                    State

                -- Belarus
                BY ->
                    State

                -- Belgium
                BE ->
                    State

                -- Belize
                BZ ->
                    State

                -- Benin
                BJ ->
                    State

                -- Bermuda
                BM ->
                    Territory

                -- Bhutan
                BT ->
                    State

                -- Bolivia (Plurinational State of)
                BO ->
                    State

                -- Bonaire, Sint Eustatius and Saba
                BQ ->
                    Territory

                -- Bosnia and Herzegovina
                BA ->
                    State

                -- Botswana
                BW ->
                    State

                -- Bouvet Island
                BV ->
                    Territory

                -- Brazil
                BR ->
                    State

                -- British Indian Ocean Territory
                IO ->
                    Territory

                -- Brunei Darussalam
                BN ->
                    State

                -- Bulgaria
                BG ->
                    State

                -- Burkina Faso
                BF ->
                    State

                -- Burundi
                BI ->
                    State

                -- Cabo Verde
                CV ->
                    State

                -- Cambodia
                KH ->
                    State

                -- Cameroon
                CM ->
                    State

                -- Canada
                CA ->
                    State

                -- Cayman Islands
                KY ->
                    Territory

                -- Central African Republic
                CF ->
                    State

                -- Chad
                TD ->
                    State

                -- Chile
                CL ->
                    State

                -- China
                CN ->
                    State

                -- Christmas Island
                CX ->
                    Territory

                -- Cocos (Keeling) Islands
                CC ->
                    Territory

                -- Colombia
                CO ->
                    State

                -- Comoros
                KM ->
                    State

                -- Congo, Democratic Republic of the
                CD ->
                    State

                -- Congo
                CG ->
                    State

                -- Cook Islands
                CK ->
                    Territory

                -- Costa Rica
                CR ->
                    State

                -- Côte d'Ivoire
                CI ->
                    State

                -- Croatia
                HR ->
                    State

                -- Cuba
                CU ->
                    State

                -- Curaçao
                CW ->
                    Territory

                -- Cyprus
                CY ->
                    State

                -- Czechia
                CZ ->
                    State

                -- Denmark
                DK ->
                    State

                -- Djibouti
                DJ ->
                    State

                -- Dominica
                DM ->
                    State

                -- Dominican Republic
                DO ->
                    State

                -- Ecuador
                EC ->
                    State

                -- Egypt
                EG ->
                    State

                -- El Salvador
                SV ->
                    State

                -- Equatorial Guinea
                GQ ->
                    State

                -- Eritrea
                ER ->
                    State

                -- Estonia
                EE ->
                    State

                -- Eswatini
                SZ ->
                    State

                -- Ethiopia
                ET ->
                    State

                -- Falkland Islands (Malvinas)
                FK ->
                    Territory

                -- Faroe Islands
                FO ->
                    Territory

                -- Fiji
                FJ ->
                    State

                -- Finland
                FI ->
                    State

                -- France
                FR ->
                    State

                -- French Guiana
                GF ->
                    Territory

                -- French Polynesia
                PF ->
                    Territory

                -- French Southern Territories
                TF ->
                    Territory

                -- Gabon
                GA ->
                    State

                -- Gambia
                GM ->
                    State

                -- Georgia
                GE ->
                    State

                -- Germany
                DE ->
                    State

                -- Ghana
                GH ->
                    State

                -- Gibraltar
                GI ->
                    Territory

                -- Greece
                GR ->
                    State

                -- Greenland
                GL ->
                    Territory

                -- Grenada
                GD ->
                    State

                -- Guadeloupe
                GP ->
                    Territory

                -- Guam
                GU ->
                    Territory

                --Guatemala
                GT_ ->
                    State

                -- Guernsey
                GG ->
                    Territory

                -- Guinea-Bissau
                GW ->
                    State

                -- Guinea
                GN ->
                    State

                -- Guyana
                GY ->
                    State

                -- Haiti
                HT ->
                    State

                -- Heard Island and McDonald Islands
                HM ->
                    Territory

                -- Holy See
                VA ->
                    State

                -- Honduras
                HN ->
                    State

                -- Hong Kong
                HK ->
                    Territory

                -- Hungary
                HU ->
                    State

                -- Iceland
                IS ->
                    State

                -- India
                IN ->
                    State

                -- Indonesia
                ID ->
                    State

                -- Iran (Islamic Republic of)
                IR ->
                    State

                -- Iraq
                IQ ->
                    State

                -- Ireland
                IE ->
                    State

                -- Isle of Man
                IM ->
                    Territory

                -- Israel
                IL ->
                    State

                -- Italy
                IT ->
                    State

                -- Jamaica
                JM ->
                    State

                -- Japan
                JP ->
                    State

                -- Jersey
                JE ->
                    Territory

                -- Jordan
                JO ->
                    State

                -- Kazakhstan
                KZ ->
                    State

                -- Kenya
                KE ->
                    State

                -- Kiribati
                KI ->
                    State

                -- Korea (Democratic People's Republic of)
                KP ->
                    State

                -- Korea, Republic of
                KR ->
                    State

                -- Kosovo
                XK ->
                    State

                -- Kuwait
                KW ->
                    State

                -- Kyrgyzstan
                KG ->
                    State

                -- Lao People's Democratic Republic
                LA ->
                    State

                -- Latvia
                LV ->
                    State

                -- Lebanon
                LB ->
                    State

                -- Lesotho
                LS ->
                    State

                -- Liberia
                LR ->
                    State

                -- Libya
                LY ->
                    State

                -- Liechtenstein
                LI ->
                    State

                -- Lithuania
                LT_ ->
                    State

                -- Luxembourg
                LU ->
                    State

                -- Macao
                MO ->
                    Territory

                -- Madagascar
                MG ->
                    State

                -- Malawi
                MW ->
                    State

                -- Malaysia
                MY ->
                    State

                -- Maldives
                MV ->
                    State

                -- Mali
                ML ->
                    State

                -- Malta
                MT ->
                    State

                -- Marshall Islands
                MH ->
                    State

                -- Martinique
                MQ ->
                    Territory

                -- Mauritania
                MR ->
                    State

                -- Mauritius
                MU ->
                    State

                -- Mayotte
                YT ->
                    Territory

                -- Mexico
                MX ->
                    State

                -- Micronesia (Federated States of)
                FM ->
                    State

                -- Moldova, Republic of
                MD ->
                    State

                -- Monaco
                MC ->
                    State

                -- Mongolia
                MN ->
                    State

                -- Montenegro
                ME ->
                    State

                -- Montserrat
                MS ->
                    Territory

                -- Morocco
                MA ->
                    State

                -- Mozambique
                MZ ->
                    State

                -- Myanmar
                MM ->
                    State

                -- Namibia
                NA ->
                    State

                -- Nauru
                NR ->
                    State

                -- Nepal
                NP ->
                    State

                -- Netherlands
                NL ->
                    State

                -- New Caledonia
                NC ->
                    Territory

                -- New Zealand
                NZ ->
                    State

                -- Nicaragua
                NI ->
                    State

                -- Niger
                NE ->
                    State

                -- Nigeria
                NG ->
                    State

                -- Niue
                NU ->
                    Territory

                -- Norfolk Island
                NF ->
                    Territory

                -- North Macedonia
                MK ->
                    State

                -- Northern Mariana Islands
                MP ->
                    Territory

                -- Norway
                NO ->
                    State

                -- Oman
                OM ->
                    State

                -- Pakistan
                PK ->
                    State

                -- Palau
                PW ->
                    State

                -- Palestine, State of
                PS ->
                    State

                -- Panama
                PA ->
                    State

                -- Papua New Guinea
                PG ->
                    State

                -- Paraguay
                PY ->
                    State

                -- Peru
                PE ->
                    State

                -- Philippines
                PH ->
                    State

                -- Pitcairn
                PN ->
                    Territory

                -- Poland
                PL ->
                    State

                -- Portugal
                PT ->
                    State

                -- Puerto Rico
                PR ->
                    Territory

                -- Qatar
                QA ->
                    State

                -- Réunion
                RE ->
                    Territory

                -- Romania
                RO ->
                    State

                -- Russian Federation
                RU ->
                    State

                -- Rwanda
                RW ->
                    State

                -- Saint Barthélemy
                BL ->
                    Territory

                -- Saint Helena, Ascension and Tristan da Cunha
                SH ->
                    Territory

                -- Saint Kitts and Nevis
                KN ->
                    State

                -- Saint Lucia
                LC ->
                    State

                -- Saint Martin (French part)
                MF ->
                    Territory

                -- Saint Pierre and Miquelon
                PM ->
                    Territory

                -- Saint Vincent and the Grenadines
                VC ->
                    State

                -- Samoa
                WS ->
                    State

                -- San Marino
                SM ->
                    State

                -- Sao Tome and Principe
                ST ->
                    State

                -- Saudi Arabia
                SA ->
                    State

                -- Senegal
                SN ->
                    State

                -- Serbia
                RS ->
                    State

                -- Seychelles
                SC ->
                    State

                -- Sierra Leone
                SL ->
                    State

                -- Singapore
                SG ->
                    State

                -- Sint Maarten (Dutch part)
                SX ->
                    Territory

                -- Slovakia
                SK ->
                    State

                -- Slovenia
                SI ->
                    State

                -- Solomon Islands
                SB ->
                    State

                -- Somalia
                SO ->
                    State

                -- South Africa
                ZA ->
                    State

                -- South Georgia and the South Sandwich Islands
                GS ->
                    Territory

                -- South Sudan
                SS ->
                    State

                -- Spain
                ES ->
                    State

                -- Sri Lanka
                LK ->
                    State

                -- Sudan
                SD ->
                    State

                -- Suriname
                SR ->
                    State

                -- Svalbard and Jan Mayen
                SJ ->
                    Territory

                -- Sweden
                SE ->
                    State

                -- Switzerland
                CH ->
                    State

                -- Syrian Arab Republic
                SY ->
                    State

                -- Taiwan, Province of China
                TW ->
                    State

                -- Tajikistan
                TJ ->
                    State

                -- Tanzania, United Republic of
                TZ ->
                    State

                -- Thailand
                TH ->
                    State

                -- Timor-Leste
                TL ->
                    State

                -- Togo
                TG ->
                    State

                -- Tokelau
                TK ->
                    Territory

                -- Tonga
                TO ->
                    State

                -- Trinidad and Tobago
                TT ->
                    State

                -- Tunisia
                TN ->
                    State

                -- Türkiye
                TR ->
                    State

                -- Turkmenistan
                TM ->
                    State

                -- Turks and Caicos Islands
                TC ->
                    Territory

                -- Tuvalu
                TV ->
                    State

                -- Uganda
                UG ->
                    State

                -- Ukraine
                UA ->
                    State

                -- United Arab Emirates
                AE ->
                    State

                -- United Kingdom of Great Britain and Northern Ireland
                GB ->
                    State

                -- United States Minor Outlying Islands
                UM ->
                    Territory

                -- United States of America
                US ->
                    State

                -- Uruguay
                UY ->
                    State

                -- Uzbekistan
                UZ ->
                    State

                -- Vanuatu
                VU ->
                    State

                -- Venezuela (Bolivarian Republic of)
                VE ->
                    State

                -- Viet Nam
                VN ->
                    State

                -- Virgin Islands (British)
                VG ->
                    Territory

                -- Virgin Islands (U.S.)
                VI ->
                    Territory

                -- Wallis and Futuna
                WF ->
                    Territory

                -- Western Sahara
                EH ->
                    PartiallyRecognized

                -- Yemen
                YE ->
                    State

                -- Zambia
                ZM ->
                    State

                -- Zimbabwe
                ZW ->
                    State


all : { a | categories : List Category, continents : List Continent } -> List Country
all { categories, continents } =
    let
        iso3166 : List Country
        iso3166 =
            List.map Iso3166 Cldr.allCountryCodes

        others : List Country
        others =
            List.map NonIso3166 Shared.Model.nonIso3166
    in
    (iso3166 ++ others)
        |> List.filter
            (\country ->
                List.member (toContinent country) continents
                    && List.member (toCategory country) categories
            )


categoryToString : Category -> String
categoryToString category =
    case category of
        State ->
            "State"

        Territory ->
            "Territory"

        PartiallyRecognized ->
            "Partially recognized"

        Historical ->
            "Historical"
