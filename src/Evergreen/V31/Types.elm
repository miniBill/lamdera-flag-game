module Evergreen.V31.Types exposing (..)

import Browser
import Browser.Navigation
import Evergreen.V31.Cldr
import Random
import Url


type alias Context =
    { locale : Evergreen.V31.Cldr.Locale
    }


type Difficulty
    = Easy
    | Normal
    | Hard


type Property
    = Flag
    | Name


type alias GameOptions =
    { gameLength : Int
    , difficulty : Difficulty
    , answersPerCard : Int
    , guessPatterns : List ( Property, Property )
    , sovereignOnly : Bool
    }


type Country
    = Iso3166 Evergreen.V31.Cldr.CountryCode
    | PartiallyRecognized Never


type alias Card =
    { guessing : Country
    , answers : List Country
    , guessFrom : Property
    , guessTo : Property
    }


type alias PlayingModel =
    { options : GameOptions
    , current : Card
    , picked : Maybe Country
    , queue : List Card
    , score : Int
    }


type alias SortingModel =
    { groups : List (List Country)
    , selected : Maybe Country
    }


type InnerModel
    = Homepage GameOptions
    | Playing PlayingModel
    | Finished
        { options : GameOptions
        , score : Int
        , total : Int
        }
    | Sorting SortingModel


type alias FrontendModel =
    { key : Browser.Navigation.Key
    , context : Context
    , changingLocale : Maybe String
    , inner : InnerModel
    , seed : Random.Seed
    }


type alias BackendModel =
    {}


type FrontendMsg
    = UrlClicked Browser.UrlRequest
    | UrlChanged Url.Url
    | Play
    | Seed Random.Seed
    | Pick Country
    | Next
    | Back
    | ChangeOptions GameOptions
    | Locale Evergreen.V31.Cldr.Locale
    | ChangingLocale String
    | Move Country Int
    | SelectForMove Country


type ToBackend
    = NoOpToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
