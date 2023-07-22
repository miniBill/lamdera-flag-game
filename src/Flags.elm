module Flags exposing (Continent(..), all, allCards, continentToString, getSimilarFlags, toContinent, toSovereignity)

import Iso3166 exposing (CountryCode(..))
import List.Extra
import Random
import Random.List
import Types exposing (Card, Difficulty(..), GameOptions, Property(..))


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


getSimilarFlags : { a | sovereignOnly : Bool } -> CountryCode -> List CountryCode
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
            getSimilarFlags options countryCode

        count : Int
        count =
            options.answersPerCard

        listGenerator : Random.Generator (List CountryCode)
        listGenerator =
            case options.difficulty of
                Easy ->
                    all options
                        |> List.filter
                            (\option ->
                                (option /= countryCode)
                                    && not (List.member option similar)
                                    && (continent /= toContinent option)
                            )
                        |> Random.List.choices (count - 1)
                        |> Random.map Tuple.first

                Normal ->
                    all options
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
                        all options
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


type Sovereignity
    = Sovereign
    | NotSovereign


toSovereignity : CountryCode -> Sovereignity
toSovereignity countryCode =
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


all : GameOptions -> List CountryCode
all { sovereignOnly } =
    if sovereignOnly then
        List.filter isSovereign Iso3166.all

    else
        Iso3166.all


isSovereign : CountryCode -> Bool
isSovereign countryCode =
    toSovereignity countryCode == Sovereign
