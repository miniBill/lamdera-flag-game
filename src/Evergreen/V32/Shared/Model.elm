module Evergreen.V32.Shared.Model exposing (..)

import Evergreen.V32.Cldr
import Random


type Country
    = Iso3166 Evergreen.V32.Cldr.CountryCode
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
    { locale : Evergreen.V32.Cldr.Locale
    }


type Difficulty
    = Easy
    | Normal
    | Hard


type alias GameOptions =
    { gameLength : Int
    , difficulty : Difficulty
    , answersPerCard : Int
    , guessPatterns : List ( Property, Property )
    , sovereignOnly : Bool
    }


type alias Model =
    { context : Context
    , options : GameOptions
    , seed : Random.Seed
    }
