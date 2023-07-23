module Types exposing
    ( BackendModel
    , BackendMsg(..)
    , Card
    , Context
    , Country(..)
    , Difficulty(..)
    , FrontendModel
    , FrontendMsg(..)
    , GameOptions
    , InnerModel(..)
    , Language(..)
    , PartiallyRecognized(..)
    , PlayingModel
    , Property(..)
    , SortingModel
    , ToBackend(..)
    , ToFrontend(..)
    , allGuessPatterns
    , countryToAlpha2
    , propertyToString
    )

import Browser exposing (UrlRequest)
import Browser.Navigation exposing (Key)
import Iso3166
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
    { gameLength : Int
    , difficulty : Difficulty
    , answersPerCard : Int
    , guessPatterns : List ( Property, Property )
    , sovereignOnly : Bool
    }


type Country
    = Iso3166 Iso3166.CountryCode
    | PartiallyRecognized PartiallyRecognized


type PartiallyRecognized
    = XK -- Kosovo


type alias SortingModel =
    { groups : List (List Country)
    , selected : Maybe Country
    }


type alias PlayingModel =
    { options : GameOptions
    , current : Card
    , picked : Maybe Country
    , queue : List Card
    , score : Int
    }


type alias Card =
    { guessing : Country
    , answers : List Country
    , guessFrom : Property
    , guessTo : Property
    }


type Property
    = Flag
    | Name


allGuessPatterns : List ( Property, Property )
allGuessPatterns =
    [ ( Flag, Name )
    , ( Name, Flag )
    ]


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
    | Pick Country
    | Next
    | ChangeOptions GameOptions
      -- Used in the sorting module
    | Move Country Int
    | SelectForMove Country


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


countryToAlpha2 : Country -> String
countryToAlpha2 country =
    case country of
        Iso3166 countryCode ->
            Iso3166.toAlpha2 countryCode

        PartiallyRecognized XK ->
            "xk"
