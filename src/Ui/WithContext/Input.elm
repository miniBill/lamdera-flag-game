module Ui.WithContext.Input exposing
    ( Label
    , Placeholder
    , labelAbove
    , text
    )

import Ui
import Ui.Input
import Ui.WithContext.Internal exposing (Attribute(..), Element(..), containerOther)


type Placeholder context id msg
    = Placeholder (context -> Ui.Input.Placeholder id msg)


type Label context msg
    = Label (context -> Ui.Input.Label msg)


text :
    List (Attribute context msg)
    ->
        { onChange : String -> msg
        , text : String
        , placeholder : Maybe (Placeholder context id msg)
        , label : Label context msg
        }
    -> Element context msg
text attrs config =
    containerOther Ui.Input.text
        attrs
        (\context ->
            { onChange = config.onChange
            , text = config.text
            , label =
                let
                    (Label l) =
                        config.label
                in
                l context
            , placeholder =
                config.placeholder
                    |> Maybe.map (\(Placeholder p) -> p context)
            }
        )


labelAbove : List (Attribute context msg) -> Element context msg -> Label context msg
labelAbove attrs child =
    label Ui.Input.labelAbove attrs child


label :
    (List (Ui.Attribute msg) -> Ui.Element msg -> Ui.Input.Label msg)
    -> List (Attribute context msg)
    -> Element context msg
    -> Label context msg
label f attrs (Element child) =
    Label
        (\context ->
            f
                (List.map (\(Attribute a) -> a context) attrs)
                (child context)
        )
