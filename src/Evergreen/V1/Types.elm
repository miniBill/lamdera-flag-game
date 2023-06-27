module Evergreen.V1.Types exposing (..)

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


type InnerModel
    = Homepage
    | Playing PlayingModel
    | Finished
        { score : Int
        , total : Int
        }


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
    | Play CardKind
    | Seed Random.Seed
    | Pick Iso3166.CountryCode
    | Next


type ToBackend
    = NoOpToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
