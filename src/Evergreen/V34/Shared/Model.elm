module Evergreen.V34.Shared.Model exposing (..)

import Evergreen.V34.Cldr
import Random


type Country
    = Iso3166 Evergreen.V34.Cldr.CountryCode
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
    { locale : Evergreen.V34.Cldr.Locale
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
