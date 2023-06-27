module Evergreen.V4.Types exposing (..)

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


type CardKind
    = GuessFlag
    | GuessName


type alias Card =
    { guessing : Iso3166.CountryCode
    , options : List Iso3166.CountryCode
    , kind : CardKind
    }


type alias PlayingModel =
    { current : Card
    , picked : Maybe Iso3166.CountryCode
    , queue : List Card
    , score : Int
    , total : Int
    }


type alias SortingModel =
    { groups : List (List Iso3166.CountryCode)
    , selected : Maybe Iso3166.CountryCode
    }


type InnerModel
    = Homepage
    | Playing PlayingModel
    | Finished
        { score : Int
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


type Difficulty
    = Easy
    | Normal
    | Hard


type FrontendMsg
    = UrlClicked Browser.UrlRequest
    | UrlChanged Url.Url
    | Play CardKind Difficulty
    | Seed Random.Seed
    | Pick Iso3166.CountryCode
    | Next
    | Move Iso3166.CountryCode Int
    | SelectForMove Iso3166.CountryCode


type ToBackend
    = NoOpToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
