module LanguageTag.Internal exposing
    ( Country(..)
    , ExtendedLanguage(..)
    , Language(..)
    , PrivateUse(..)
    , Script(..)
    , Variant(..)
    )

{-| -}


type Language
    = Language String


type Script
    = Script String


type Country
    = Country String


type Variant
    = Variant String


type ExtendedLanguage
    = ExtendedLanguage String


type PrivateUse
    = PrivateUse (List String)
