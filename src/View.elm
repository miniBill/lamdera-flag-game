module View exposing
    ( View, map
    , none, fromString
    , toBrowserDocument
    )

{-|

@docs View, map
@docs none, fromString
@docs toBrowserDocument

-}

import Browser
import Color
import Html.WithContext
import Html.WithContext.Attributes exposing (style)
import Route exposing (Route)
import Shared.Model exposing (Context)
import Theme
import Translations


type alias View msg =
    List (Html.WithContext.Html Context msg)


{-| Used internally by Elm Land to create your application
so it works with Elm's expected `Browser.Document msg` type.
-}
toBrowserDocument :
    { shared : Shared.Model.Model
    , route : Route ()
    , view : View msg
    }
    -> Browser.Document msg
toBrowserDocument { shared, view } =
    { title =
        Translations.title <|
            Translations.init <|
                Theme.localeToLanguage shared.context.locale
    , body =
        [ Html.WithContext.toHtml
            shared.context
            (Theme.column
                [ style "width" "100%"
                , style "min-height" "100dvh"
                , style "justify-content" "center"
                , style "gap" (String.fromInt (2 * Theme.rhythm) ++ "px")
                , Theme.gradient
                    [ ( 20, Color.rgb255 0xFD 0xED 0xD6 )
                    , ( 100, Color.rgb255 0x9F 0x88 0x67 )
                    ]
                , style "overflow-y" "scroll"
                , style "font-family" "\"urbane-rounded\", sans-serif"
                , Html.WithContext.Attributes.lang shared.context.locale
                ]
                view
            )
        ]
    }


{-| Used internally by Elm Land to connect your pages together.
-}
map : (msg1 -> msg2) -> View msg1 -> View msg2
map fn view =
    List.map (Html.WithContext.map fn) view


{-| Used internally by Elm Land whenever transitioning between
authenticated pages.
-}
none : View msg
none =
    []


{-| If you customize the `View` module, anytime you run `elm-land add page`,
the generated page will use this when adding your `view` function.

That way your app will compile after adding new pages, and you can see
the new page working in the web browser!

-}
fromString : String -> View msg
fromString moduleName =
    [ Theme.textInvariant moduleName ]
