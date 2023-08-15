module Evergreen.V42.Shared.Model exposing (..)

import Evergreen.V42.Cldr
import Random


type Country
    = Iso3166 Evergreen.V42.Cldr.CountryCode
    | PartiallyRecognized Never


type Property
    = Flag
    | Name


type alias Card =
    { guessing : Country
    , answers : List Country
    , guessFrom : Property
    , guessTo : Property
    }


type alias Context =
    { locale : String
    }


type Difficulty
    = Easy
    | Normal
    | Hard


type Continent
    = Africa
    | Antartica
    | Asia
    | Europe
    | NorthAmerica
    | Oceania
    | SouthAmerica


type alias GameOptions =
    { gameLength : Int
    , difficulty : Difficulty
    , answersPerCard : Int
    , guessPatterns : List ( Property, Property )
    , sovereignOnly : Bool
    , continents : List Continent
    }


type alias Screen =
    { width : Int
    , height : Int
    }


type alias Model =
    { context : Context
    , options : GameOptions
    , seed : Random.Seed
    , screen : Screen
    }
