module Types exposing (BackendModel, BackendMsg(..), Card, CardKind(..), Context, FrontendModel, FrontendMsg(..), InnerModel(..), Language(..), ToBackend(..), ToFrontend(..))

import Browser exposing (UrlRequest)
import Browser.Navigation exposing (Key)
import Iso3166 exposing (CountryCode)
import Random
import Url exposing (Url)


type alias Context =
    { language : Language }


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


type alias FrontendModel =
    { key : Key
    , context : Context
    , inner : InnerModel
    , seed : Random.Seed
    }


type InnerModel
    = Homepage
    | Picking
        { current : Card
        , queue : List Card
        , score : Int
        , total : Int
        }
    | Picked
        { current : Card
        , picked : CountryCode
        , queue : List Card
        , score : Int
        , total : Int
        }
    | Finished
        { score : Int
        , total : Int
        }


type alias Card =
    { guessing : CountryCode
    , options : List CountryCode
    , kind : CardKind
    }


type CardKind
    = GuessFlag
    | GuessName


type alias BackendModel =
    {}


type FrontendMsg
    = UrlClicked UrlRequest
    | UrlChanged Url
    | Play
    | Seed Random.Seed
    | Pick CountryCode
    | Next


type ToBackend
    = NoOpToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
