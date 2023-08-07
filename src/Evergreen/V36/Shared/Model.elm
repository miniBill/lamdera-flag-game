module Evergreen.V36.Shared.Model exposing (..)

import Evergreen.V36.Cldr
import Random


type Country
    = Iso3166 Evergreen.V36.Cldr.CountryCode
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
    { locale : Evergreen.V36.Cldr.Locale
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


type alias Model =
    { context : Context
    , options : GameOptions
    , seed : Random.Seed
    }
