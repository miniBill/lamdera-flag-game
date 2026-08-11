module Shared.Model exposing (Card, Context, Continent(..), Country(..), Difficulty(..), GameOptions, Model, NonIso3166(..), Property(..), Screen, Sovereignty(..), allContinents, allGuessPatterns, allSovereignties, countryToAlpha2, defaultGameLength, defaultGameOptions, nonIso3166)

{-| -}

import Cldr
import Random


{-| Normally, this value would live in "Shared.elm"
but that would lead to a circular dependency import cycle.

For that reason, both `Shared.Model` and `Shared.Msg` are in their
own file, so they can be imported by `Effect.elm`

-}
type alias Model =
    { context : Context
    , options : GameOptions
    , seed : Random.Seed
    , screen : Screen
    }


type alias Screen =
    { width : Int
    , height : Int
    }


type alias Context =
    { locale : String }


type Property
    = Flag
    | Name


type Difficulty
    = Easy
    | Normal
    | Hard


type alias Card =
    { guessing : Country
    , answers : List Country
    , guessFrom : Property
    , guessTo : Property
    }



-- Country


type Country
    = Iso3166 Cldr.CountryCode
    | NonIso3166 NonIso3166


type NonIso3166
    = Abkhazia
    | NorthernCyprus
    | Somaliland
    | SouthOssetia
    | Transnistria


nonIso3166 : List NonIso3166
nonIso3166 =
    [ Abkhazia
    , NorthernCyprus
    , Somaliland
    , SouthOssetia
    , Transnistria
    ]


countryToAlpha2 : Country -> String
countryToAlpha2 country =
    case country of
        Iso3166 countryCode ->
            Cldr.toAlpha2 countryCode

        NonIso3166 Abkhazia ->
            "abkhazia"

        NonIso3166 NorthernCyprus ->
            "northern-cyprus"

        NonIso3166 Somaliland ->
            "somaliland"

        NonIso3166 SouthOssetia ->
            "south-ossetia"

        NonIso3166 Transnistria ->
            "transnistria"


type Sovereignty
    = Sovereign
    | NotSovereign
    | PartiallyRecognized



-- Game Options


type alias GameOptions =
    { gameLength : Int
    , difficulty : Difficulty
    , answersPerCard : Int
    , guessPatterns : List ( Property, Property )
    , sovereignty : List Sovereignty
    , continents : List Continent
    }


type Continent
    = Africa
    | Antarctica
    | Asia
    | Europe
    | NorthAmerica
    | Oceania
    | SouthAmerica


defaultGameLength : Int
defaultGameLength =
    20


defaultGameOptions : GameOptions
defaultGameOptions =
    { gameLength = defaultGameLength
    , difficulty = Normal
    , answersPerCard = 6
    , guessPatterns = allGuessPatterns
    , sovereignty = [ Sovereign ]
    , continents = allContinents
    }


allGuessPatterns : List ( Property, Property )
allGuessPatterns =
    [ ( Flag, Name )
    , ( Name, Flag )
    ]


allContinents : List Continent
allContinents =
    [ Africa
    , Antarctica
    , Asia
    , Europe
    , NorthAmerica
    , Oceania
    , SouthAmerica
    ]


allSovereignties : List Sovereignty
allSovereignties =
    [ Sovereign
    , NotSovereign
    , PartiallyRecognized
    ]
