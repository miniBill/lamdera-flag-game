module Ui.WithContext.Internal exposing
    ( Attribute(..)
    , Element(..)
    , containerMany
    , containerOne
    , containerOther
    , pureAttribute
    , pureElement
    )

import Ui


type Element context msg
    = Element (context -> Ui.Element msg)


type Attribute context msg
    = Attribute (context -> Ui.Attribute msg)


pureAttribute : Ui.Attribute msg -> Attribute context msg
pureAttribute attr =
    Attribute (\_ -> attr)


pureElement : Ui.Element msg -> Element context msg
pureElement attr =
    Element (\_ -> attr)


containerOther :
    (List (Ui.Attribute msg) -> config -> Ui.Element msg)
    -> List (Attribute context msg)
    -> (context -> config)
    -> Element context msg
containerOther container attrs config =
    Element
        (\context ->
            container
                (List.map (\(Attribute a) -> a context) attrs)
                (config context)
        )


containerOne :
    (List (Ui.Attribute msg) -> Ui.Element msg -> Ui.Element msg)
    -> List (Attribute context msg)
    -> Element context msg
    -> Element context msg
containerOne container attrs (Element child) =
    containerOther container attrs child


containerMany :
    (List (Ui.Attribute msg) -> List (Ui.Element msg) -> Ui.Element msg)
    -> List (Attribute context msg)
    -> List (Element context msg)
    -> Element context msg
containerMany container attrs children =
    containerOther container
        attrs
        (\context -> List.map (\(Element e) -> e context) children)
