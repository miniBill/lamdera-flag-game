module Evergreen.V6.Types exposing (..)

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
    { count : Int
    , difficulty : Difficulty
    , answersCount : Int
    , guessFrom : List Property
    , guessTo : List Property
    }


type alias Card =
    { guessing : Iso3166.CountryCode
    , answers : List Iso3166.CountryCode
    , guessFrom : Property
    , guessTo : Property
    }


type alias PlayingModel =
    { options : GameOptions
    , current : Card
    , picked : Maybe Iso3166.CountryCode
    , queue : List Card
    , score : Int
    }


type alias SortingModel =
    { groups : List (List Iso3166.CountryCode)
    , selected : Maybe Iso3166.CountryCode
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
    | Pick Iso3166.CountryCode
    | Next
    | ChangeOptions GameOptions
    | Move Iso3166.CountryCode Int
    | SelectForMove Iso3166.CountryCode


type ToBackend
    = NoOpToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
