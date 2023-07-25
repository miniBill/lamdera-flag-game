module Evergreen.V1.Types exposing (..)

import Browser
import Browser.Navigation
import Random
import Url


type Language
    = Arabic
    | Armenian
    | Basque
    | Bulgarian
    | Chinese
    | ChineseTraditional
    | Croatian
    | Czech
    | Danish
    | Dutch
    | English
    | Estonian
    | Finnish
    | French
    | German
    | Greek
    | Hungarian
    | Italian
    | Japanese
    | Korean
    | Lithuanian
    | Norwegian
    | Polish
    | Portuguese
    | Romanian
    | Russian
    | Serbian
    | Slovak
    | Slovenian
    | Spanish
    | Swedish
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


type Country
    = Iso3166 String
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
