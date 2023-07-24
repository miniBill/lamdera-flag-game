module Generate exposing (main)

{-| -}

import Dict
import Elm
import Gen.CodeGen.Generate as Generate
import Json.Encode
import Parser


main : Program Json.Encode.Value () ()
main =
    Generate.fromDirectory <|
        \directory -> [ file directory ]


file : Generate.Directory -> Elm.File
file directory =
    directory.files
        |> Dict.toList
        |> List.filter
            (\( name, content ) ->
                String.endsWith ".svg" name
            )
        |> List.map
            (\( name, content ) ->
                Elm.string name
                    |> Elm.declaration name
                    |> Elm.expose
            )
        |> Elm.file [ "AspectRatios" ]
