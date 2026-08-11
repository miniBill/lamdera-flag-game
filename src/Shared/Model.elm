module Shared.Model exposing (Card, Context, Continent(..), Country(..), Difficulty(..), GameOptions, Model, PartiallyRecognized(..), Property(..), Screen, allContinents, allGuessPatterns, countryToAlpha2, defaultGameLength, defaultGameOptions, partiallyRecognized)

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
    | PartiallyRecognized PartiallyRecognized


type PartiallyRecognized
    = Abkhazia
    | NorthernCyprus
    | Somaliland
    | SouthOssetia
    | Transnistria


partiallyRecognized : List PartiallyRecognized
partiallyRecognized =
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

        PartiallyRecognized Abkhazia ->
            "abkhazia"

        PartiallyRecognized NorthernCyprus ->
            "northern-cyprus"

        PartiallyRecognized Somaliland ->
            "somaliland"

        PartiallyRecognized SouthOssetia ->
            "south-ossetia"

        PartiallyRecognized Transnistria ->
            "transnistria"



-- Game Options


type alias GameOptions =
    { gameLength : Int
    , difficulty : Difficulty
    , answersPerCard : Int
    , guessPatterns : List ( Property, Property )
    , sovereignOnly : Bool
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
    , sovereignOnly = True
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
