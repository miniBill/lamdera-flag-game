module Shared.Model exposing (Card, Context, Continent(..), Country(..), Difficulty(..), GameOptions, Model, Property(..), Screen, allContinents, allGuessPatterns, countryToAlpha2, defaultGameLength, defaultGameOptions)

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
    | PartiallyRecognized Never


countryToAlpha2 : Country -> String
countryToAlpha2 country =
    case country of
        Iso3166 countryCode ->
            Cldr.toAlpha2 countryCode

        PartiallyRecognized ever ->
            never ever



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
    | Antartica
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
    , Antartica
    , Asia
    , Europe
    , NorthAmerica
    , Oceania
    , SouthAmerica
    ]
