module Types exposing
    ( BackendModel
    , BackendMsg(..)
    , Card
    , Context
    , Difficulty(..)
    , FrontendModel
    , FrontendMsg(..)
    , GameOptions
    , InnerModel(..)
    , Language(..)
    , PlayingModel
    , Property(..)
    , SortingModel
    , ToBackend(..)
    , ToFrontend(..)
    , allProperties
    , propertyToString
    )

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
    = Homepage GameOptions
    | Playing PlayingModel
    | Finished
        { options : GameOptions
        , score : Int
        , total : Int
        }
    | Sorting SortingModel


type alias GameOptions =
    { count : Int
    , difficulty : Difficulty
    , answersCount : Int
    , guessFrom : List Property
    , guessTo : List Property
    }


type alias SortingModel =
    { groups : List (List CountryCode)
    , selected : Maybe CountryCode
    }


type alias PlayingModel =
    { options : GameOptions
    , current : Card
    , picked : Maybe CountryCode
    , queue : List Card
    , score : Int
    }


type alias Card =
    { guessing : CountryCode
    , answers : List CountryCode
    , guessFrom : Property
    , guessTo : Property
    }


type Property
    = Flag
    | Name


allProperties : List Property
allProperties =
    [ Flag, Name ]


type Difficulty
    = Easy
    | Normal
    | Hard


type alias BackendModel =
    {}


type FrontendMsg
    = UrlClicked UrlRequest
    | UrlChanged Url
    | Play
    | Seed Random.Seed
    | Pick CountryCode
    | Next
    | ChangeOptions GameOptions
      -- Used in the sorting module
    | Move CountryCode Int
    | SelectForMove CountryCode


type ToBackend
    = NoOpToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend


propertyToString : Property -> String
propertyToString property =
    case property of
        Name ->
            "Name"

        Flag ->
            "Flag"
