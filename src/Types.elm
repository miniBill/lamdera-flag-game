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
    , PlayingModel
    , Property(..)
    , SortingModel
    , ToBackend(..)
    , ToFrontend(..)
    , allGuessPatterns
    , countryToAlpha2
    , languageToString
    , propertyToString
    )

import Browser exposing (UrlRequest)
import Browser.Navigation exposing (Key)
import Cldr
import Random
import Translations exposing (Language(..))
import Url exposing (Url)


type alias Context =
    { language : Language }


languageToString : Language -> String
languageToString language =
    case language of
        -- Arabic ->
        --     "Arabic"
        -- Armenian ->
        --     "Armenian"
        -- Basque ->
        --     "Basque"
        -- Bulgarian ->
        --     "Bulgarian"
        -- Chinese ->
        --     "Chinese"
        -- ChineseTraditional ->
        --     "Chinese (Traditional)"
        -- Croatian ->
        --     "Croatian"
        -- Czech ->
        --     "Czech"
        -- Danish ->
        --     "Danish"
        -- Dutch ->
        --     "Dutch"
        En ->
            "English"

        -- Estonian ->
        --     "Estonian"
        -- Finnish ->
        --     "Finnish"
        -- French ->
        --     "French"
        -- German ->
        --     "German"
        -- Greek ->
        --     "Greek"
        -- Hungarian ->
        --     "Hungarian"
        It ->
            "Italian"



-- Japanese ->
--     "Japanese"
-- Korean ->
--     "Korean"
-- Lithuanian ->
--     "Lithuanian"
-- Norwegian ->
--     "Norwegian"
-- Polish ->
--     "Polish"
-- Portuguese ->
--     "Portuguese"
-- Romanian ->
--     "Romanian"
-- Russian ->
--     "Russian"
-- Serbian ->
--     "Serbian"
-- Slovak ->
--     "Slovak"
-- Slovenian ->
--     "Slovenian"
-- Spanish ->
--     "Spanish"
-- Swedish ->
--     "Swedish"
-- Thai ->
--     "Thai"
-- Ukrainian ->
--     "Ukrainian"


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
    = Iso3166 Cldr.CountryCode
    | PartiallyRecognized Never


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
    | Language Language
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
            Cldr.toAlpha2 countryCode

        PartiallyRecognized ever ->
            never ever
