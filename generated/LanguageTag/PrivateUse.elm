module LanguageTag.PrivateUse exposing (PrivateUse, fromStrings, toCodeString)

import LanguageTag.Internal as Internal exposing (PrivateUse(..))


type alias PrivateUse =
    Internal.PrivateUse


toCodeString : PrivateUse -> String
toCodeString (PrivateUse components) =
    String.join "-" ("x" :: components)


{-| Create a `PrivateUse` from its components.

The `x-` is added automatically by `toCodeString`.

    fromString [ "whatever" ] |> toCodeString
    --> "x-whatever"

    fromString [ "x", "whatever" ] |> toCodeString
    --> "x-x-whatever"

-}
fromStrings : List String -> PrivateUse
fromStrings components =
    PrivateUse components
