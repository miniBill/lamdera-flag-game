module Ui.WithContext exposing
    ( Element
    , Attribute
    , fill, shrink
    , width
    , height
    , centerX, centerY, alignTop
    , Color, Edges, alignRight, border, column, el, explain, heightMax, heightMin, html, htmlAttribute, id, image, inFront, layout, map, noAttr, none, padding, paddingWith, px, rgb, rgba, rounded, row, scrollable, spacing, text, widthMax, widthMin, withContext
    )

{-|


# Basic Elements

@docs Element


# Attributes

@docs Attribute


# Size

@docs fill, shrink

@docs width

@docs height


# Alignment

@docs centerX, centerY, alignTop

-}

import Html
import Ui
import Ui.WithContext.Internal as Internal exposing (Attribute(..), Element(..), containerOne, pureAttribute, pureElement)


type alias Element context msg =
    Internal.Element context msg


type alias Attribute context msg =
    Internal.Attribute context msg


type alias Edges =
    Ui.Edges


type alias Color =
    Ui.Color


withContext : (context -> Element context msg) -> Element context msg
withContext f =
    Element
        (\context ->
            let
                (Element inner) =
                    f context
            in
            inner context
        )


alignTop : Attribute context msg
alignTop =
    pureAttribute Ui.alignTop


alignRight : Attribute context msg
alignRight =
    pureAttribute Ui.alignRight


centerX : Attribute context msg
centerX =
    pureAttribute Ui.centerX


centerY : Attribute context msg
centerY =
    pureAttribute Ui.centerY


id : String -> Attribute context msg
id value =
    pureAttribute (Ui.id value)


explain : (String -> Never) -> Attribute context msg
explain todo =
    pureAttribute (Ui.explain todo)


el : List (Attribute context msg) -> Element context msg -> Element context msg
el attrs child =
    Internal.containerOne Ui.el attrs child


row : List (Attribute context msg) -> List (Element context msg) -> Element context msg
row attrs children =
    Internal.containerMany Ui.row attrs children


column : List (Attribute context msg) -> List (Element context msg) -> Element context msg
column attrs children =
    Internal.containerMany Ui.column attrs children


text : String -> Element context msg
text value =
    pureElement (Ui.text value)


none : Element context msg
none =
    pureElement Ui.none


{-| Both a source and a description are required for images.

The description is used for people using screen readers.

Leaving the description blank will cause the image to be ignored by assistive technology. This can make sense for images that are purely decorative and add no additional information.

So, take a moment to describe your image as you would to someone who has a harder time seeing.

-}
image :
    List (Attribute context msg)
    ->
        { source : String
        , description : String
        }
    -> Element context msg
image attrs config =
    Internal.containerOther Ui.image attrs (\_ -> config)


html : Html.Html msg -> Element context msg
html elem =
    pureElement (Ui.html elem)


htmlAttribute : Html.Attribute msg -> Attribute context msg
htmlAttribute attr =
    pureAttribute (Ui.htmlAttribute attr)


noAttr : Attribute context msg
noAttr =
    pureAttribute Ui.noAttr


fill : Ui.Length
fill =
    Ui.fill


shrink : Ui.Length
shrink =
    Ui.shrink


px : Int -> Ui.Length
px =
    Ui.px


scrollable : List (Attribute context msg) -> Element context msg -> Element context msg
scrollable attrs child =
    containerOne Ui.scrollable attrs child


layout : context -> List (Attribute context msg) -> Element context msg -> Html.Html msg
layout context attrs (Element element) =
    Ui.layout
        (List.map (\(Attribute a) -> a context) attrs)
        (element context)


map : (msg -> msg1) -> Element context msg -> Element context msg1
map f (Element e) =
    Element (\context -> Ui.map f (e context))


spacing : Int -> Attribute context msg
spacing length =
    pureAttribute (Ui.spacing length)


padding : Int -> Attribute context msg
padding length =
    pureAttribute (Ui.padding length)


paddingWith : Edges -> Attribute context msg
paddingWith sizes =
    pureAttribute (Ui.paddingWith sizes)


rgb : Int -> Int -> Int -> Ui.Color
rgb =
    Ui.rgb


rgba : Int -> Int -> Int -> Float -> Ui.Color
rgba =
    Ui.rgba


height : Ui.Length -> Attribute context msg
height length =
    pureAttribute (Ui.height length)


heightMax : Int -> Attribute context msg
heightMax length =
    pureAttribute (Ui.heightMax length)


heightMin : Int -> Attribute context msg
heightMin length =
    pureAttribute (Ui.heightMin length)


width : Ui.Length -> Attribute context msg
width length =
    pureAttribute (Ui.width length)


widthMax : Int -> Attribute context msg
widthMax length =
    pureAttribute (Ui.widthMax length)


widthMin : Int -> Attribute context msg
widthMin length =
    pureAttribute (Ui.widthMin length)


inFront : Element context msg -> Attribute context msg
inFront (Element child) =
    Attribute (\context -> Ui.inFront (child context))


rounded : Int -> Attribute context msg
rounded value =
    pureAttribute (Ui.rounded value)


border : Int -> Attribute context msg
border value =
    pureAttribute (Ui.border value)



-- table attrs =
--     containerOther Ui.table attrs (\_ -> config)
