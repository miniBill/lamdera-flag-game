module Evergreen.V63.Shared.Model exposing (..)

import Evergreen.V63.Cldr
import Random


type NonIso3166
    = Abkhazia
    | NorthernCyprus
    | Somaliland
    | SouthOssetia
    | Transnistria


type Country
    = Iso3166 Evergreen.V63.Cldr.CountryCode
    | NonIso3166 NonIso3166


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


type Category
    = State
    | Territory
    | PartiallyRecognized
    | Historical


type Continent
    = Africa
    | Antarctica
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
    , categories : List Category
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
