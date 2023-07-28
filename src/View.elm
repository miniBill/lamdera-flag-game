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
import Element.WithContext as Element exposing (Element, fill, height, rgb255, scrollbarY, width)
import Element.WithContext.Font as Font
import Route exposing (Route)
import Shared
import Shared.Model exposing (Context)
import Theme
import Translations


type alias View msg =
    Element Context msg


{-| Used internally by Elm Land to create your application
so it works with Elm's expected `Browser.Document msg` type.
-}
toBrowserDocument :
    { shared : Shared.Model
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
        [ Element.layout
            shared.context
            [ width fill
            , height fill
            , Theme.gradient
                [ ( 20, rgb255 0xFD 0xED 0xD6 )
                , ( 100, rgb255 0x9F 0x88 0x67 )
                ]
            , scrollbarY
            , Font.family [ Font.typeface "urbane-rounded", Font.sansSerif ]
            ]
            view
        ]
    }


{-| Used internally by Elm Land to connect your pages together.
-}
map : (msg1 -> msg2) -> View msg1 -> View msg2
map fn view =
    Element.map fn view


{-| Used internally by Elm Land whenever transitioning between
authenticated pages.
-}
none : View msg
none =
    Element.none


{-| If you customize the `View` module, anytime you run `elm-land add page`,
the generated page will use this when adding your `view` function.

That way your app will compile after adding new pages, and you can see
the new page working in the web browser!

-}
fromString : String -> View msg
fromString moduleName =
    Theme.textInvariant moduleName
