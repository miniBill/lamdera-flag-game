module Evergreen.V20.Types exposing (..)

import Browser
import Browser.Navigation
import Iso3166
import Random
import Url


type Language
    = Arabic
    | Chinese
    | Czech
    | Danish
    | Dutch
    | English
    | Estonian
    | French
    | German
    | Greek
    | Hungarian
    | Italian
    | Japanese
    | Lithuanian
    | Norwegian
    | Polish
    | Portuguese
    | Romanian
    | Russian
    | Slovak
    | Spanish
    | Thai
    | Ukrainian


type alias Context =
    { language : Language
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


type PartiallyRecognized
    = XK


type Country
    = Iso3166 Iso3166.CountryCode
    | PartiallyRecognized PartiallyRecognized


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
    | ChangeOptions GameOptions
    | Move Country Int
    | SelectForMove Country


type ToBackend
    = NoOpToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
