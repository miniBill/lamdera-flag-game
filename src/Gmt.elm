module Gmt exposing (Projection(..), Range, angleToString, main, projectionToString, rangeToString)

import Angle exposing (Angle)
import Html exposing (Html)
import Json.Encode
import Length exposing (Length)


main : Html msg
main =
    Html.text text


text : String
text =
    [ "gmt"
    , "basemap"
    , rangeToString
        { xFrom = Angle.degrees 10
        , xTo = Angle.degrees 70
        , yFrom = Angle.degrees -3
        , yTo = Angle.degrees 8
        }
    , projectionToString
        (Linear
            { width = Length.inches 4
            , height = Length.inches 3
            }
        )
    , defaultFrameSettings
        |> withFill "lightred"
        |> withTitle "My second plot"
        |> frameSettingsToString
    ]
        |> String.join " "


type alias Range =
    { xFrom : Angle
    , xTo : Angle
    , yFrom : Angle
    , yTo : Angle
    }


rangeToString : Range -> String
rangeToString range =
    "-R"
        ++ angleToString range.xFrom
        ++ "/"
        ++ angleToString range.xTo
        ++ "/"
        ++ angleToString range.yFrom
        ++ "/"
        ++ angleToString range.yTo


type Projection
    = AzimuthalOrthographic
        { longitude : Angle
        , latitude : Angle
        , width : Length
        }
    | Linear
        { width : Length
        , height : Length
        }


projectionToString : Projection -> String
projectionToString projection =
    case projection of
        AzimuthalOrthographic az ->
            "-JG" ++ angleToString az.longitude ++ "/" ++ angleToString az.latitude ++ "/" ++ lengthToString az.width

        Linear li ->
            "-JX" ++ lengthToString li.width ++ "/" ++ lengthToString li.height


lengthToString : Length -> String
lengthToString len =
    String.fromFloat (Length.inCentimeters len) ++ "c"


type alias FrameSettings =
    { leftAxis : Axis
    , rightAxis : Axis
    , bottomAxis : Axis
    , topAxis : Axis
    , fill : Maybe String
    , title : Maybe String
    }


defaultFrameSettings : FrameSettings
defaultFrameSettings =
    { leftAxis = NoAxis
    , rightAxis = NoAxis
    , bottomAxis = NoAxis
    , topAxis = NoAxis
    , fill = Nothing
    , title = Nothing
    }


type Axis
    = AxisTicksAnnotations
    | AxisTicks
    | Axis
    | NoAxis


withLeftAxis : Axis -> FrameSettings -> FrameSettings
withLeftAxis axis settings =
    { settings | leftAxis = axis }


withRightAxis : Axis -> FrameSettings -> FrameSettings
withRightAxis axis settings =
    { settings | rightAxis = axis }


withBottomAxis : Axis -> FrameSettings -> FrameSettings
withBottomAxis axis settings =
    { settings | bottomAxis = axis }


withTopAxis : Axis -> FrameSettings -> FrameSettings
withTopAxis axis settings =
    { settings | topAxis = axis }


withFill : String -> FrameSettings -> FrameSettings
withFill fill settings =
    { settings | fill = Just fill }


withTitle : String -> FrameSettings -> FrameSettings
withTitle title settings =
    { settings | title = Just title }


frameSettingsToString : FrameSettings -> String
frameSettingsToString settings =
    let
        iif : String -> Maybe String -> Maybe String
        iif key value =
            Maybe.map
                (\v -> "+" ++ key ++ maybeQuote v)
                value

        axis : String -> String -> String -> Axis -> Maybe String
        axis annotated ticks plain value =
            case value of
                AxisTicksAnnotations ->
                    Just annotated

                AxisTicks ->
                    Just ticks

                Axis ->
                    Just plain

                NoAxis ->
                    Nothing
    in
    [ Just "-B"
    , axis "W" "w" "l" settings.leftAxis
    , axis "E" "e" "r" settings.rightAxis
    , axis "S" "s" "b" settings.bottomAxis
    , axis "N" "n" "t" settings.topAxis
    , iif "g" settings.fill
    , iif "t" settings.title
    ]
        |> List.filterMap identity
        |> String.concat


maybeQuote : String -> String
maybeQuote s =
    if
        String.contains " " s
            || String.contains "\"" s
    then
        Json.Encode.encode 0 (Json.Encode.string s)

    else
        s


angleToString : Angle -> String
angleToString angle =
    Angle.inDegrees angle
        |> String.fromFloat
