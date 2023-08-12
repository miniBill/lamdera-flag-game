module Ui.WithContext.Events exposing (onClick)

import Ui.Events
import Ui.WithContext.Internal exposing (Attribute, pureAttribute)


onClick : msg -> Attribute context msg
onClick msg =
    pureAttribute (Ui.Events.onClick msg)
