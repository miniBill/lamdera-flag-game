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
import Route exposing (Route)
import Shared.Model exposing (Context)
import Theme
import Translations exposing (I18n)
import Ui.WithContext as Ui exposing (Element, fill, height, width)
import Ui.WithContext.Font as Font


type alias View msg =
    Element Context msg


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
    let
        i18n : I18n
        i18n =
            Translations.init (Theme.localeToLanguage shared.locale)
    in
    { title =
        Translations.title i18n
    , body =
        [ Ui.layout
            { locale = shared.locale
            , i18n = i18n
            }
            [ width fill
            , height fill
            , Theme.gradient
                [ ( 20, Color.rgb255 0xFD 0xED 0xD6 )
                , ( 100, Color.rgb255 0x9F 0x88 0x67 )
                ]
            , Font.family [ Font.typeface "urbane-rounded", Font.sansSerif ]
            ]
            (Ui.scrollable [ width fill, height fill ] view)
        ]
    }


{-| Used internally by Elm Land to connect your pages together.
-}
map : (msg1 -> msg2) -> View msg1 -> View msg2
map fn view =
    Ui.map fn view


{-| Used internally by Elm Land whenever transitioning between
authenticated pages.
-}
none : View msg
none =
    Ui.none


{-| If you customize the `View` module, anytime you run `elm-land add page`,
the generated page will use this when adding your `view` function.

That way your app will compile after adding new pages, and you can see
the new page working in the web browser!

-}
fromString : String -> View msg
fromString moduleName =
    Theme.textInvariant moduleName
