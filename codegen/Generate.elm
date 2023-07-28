module Generate exposing (main)

{-| -}

import Dict exposing (Dict)
import Elm
import Elm.Annotation as Annotation
import Gen.Basics
import Gen.Cldr
import Gen.CodeGen.Generate as Generate
import Gen.Debug
import Gen.Shared.Model
import Json.Encode
import List.Extra
import Maybe.Extra
import Parser exposing ((|.), (|=), Parser)
import XmlParser


main : Program Json.Encode.Value () ()
main =
    Generate.fromDirectory <|
        \directory -> [ file directory ]


file : Generate.Directory -> Elm.File
file (Generate.Directory { files }) =
    let
        dict : Dict String Elm.Expression
        dict =
            files
                |> Dict.toList
                |> List.filterMap fileToPair
                |> Dict.fromList

        get : String -> Elm.Expression
        get key =
            Dict.get key dict
                |> Maybe.withDefault (Gen.Debug.todo key)
    in
    (\country ->
        Gen.Shared.Model.caseOf_.country country
            { iso3166 =
                \countryCode ->
                    Gen.Cldr.caseOf_.countryCode countryCode
                        { aD = get "ad"
                        , aE = get "ae"
                        , aF = get "af"
                        , aG = get "ag"
                        , aI = get "ai"
                        , aL = get "al"
                        , aM = get "am"
                        , aO = get "ao"
                        , aQ = get "aq"
                        , aR = get "ar"
                        , aS = get "as"
                        , aT = get "at"
                        , aU = get "au"
                        , aW = get "aw"
                        , aX = get "ax"
                        , aZ = get "az"
                        , bA = get "ba"
                        , bB = get "bb"
                        , bD = get "bd"
                        , bE = get "be"
                        , bF = get "bf"
                        , bG = get "bg"
                        , bH = get "bh"
                        , bI = get "bi"
                        , bJ = get "bj"
                        , bL = get "bl"
                        , bM = get "bm"
                        , bN = get "bn"
                        , bO = get "bo"
                        , bQ = get "bq"
                        , bR = get "br"
                        , bS = get "bs"
                        , bT = get "bt"
                        , bV = get "bv"
                        , bW = get "bw"
                        , bY = get "by"
                        , bZ = get "bz"
                        , cA = get "ca"
                        , cC = get "cc"
                        , cD = get "cd"
                        , cF = get "cf"
                        , cG = get "cg"
                        , cH = get "ch"
                        , cI = get "ci"
                        , cK = get "ck"
                        , cL = get "cl"
                        , cM = get "cm"
                        , cN = get "cn"
                        , cO = get "co"
                        , cR = get "cr"
                        , cU = get "cu"
                        , cV = get "cv"
                        , cW = get "cw"
                        , cX = get "cx"
                        , cY = get "cy"
                        , cZ = get "cz"
                        , dE = get "de"
                        , dJ = get "dj"
                        , dK = get "dk"
                        , dM = get "dm"
                        , dO = get "do"
                        , dZ = get "dz"
                        , eC = get "ec"
                        , eE = get "ee"
                        , eG = get "eg"
                        , eH = get "eh"
                        , eR = get "er"
                        , eS = get "es"
                        , eT = get "et"
                        , fI = get "fi"
                        , fJ = get "fj"
                        , fK = get "fk"
                        , fM = get "fm"
                        , fO = get "fo"
                        , fR = get "fr"
                        , gA = get "ga"
                        , gB = get "gb"
                        , gD = get "gd"
                        , gE = get "ge"
                        , gF = get "gf"
                        , gG = get "gg"
                        , gH = get "gh"
                        , gI = get "gi"
                        , gL = get "gl"
                        , gM = get "gm"
                        , gN = get "gn"
                        , gP = get "gp"
                        , gQ = get "gq"
                        , gR = get "gr"
                        , gS = get "gs"
                        , gT_ = get "gt"
                        , gU = get "gu"
                        , gW = get "gw"
                        , gY = get "gy"
                        , hK = get "hk"
                        , hM = get "hm"
                        , hN = get "hn"
                        , hR = get "hr"
                        , hT = get "ht"
                        , hU = get "hu"
                        , iD = get "id"
                        , iE = get "ie"
                        , iL = get "il"
                        , iM = get "im"
                        , iN = get "in"
                        , iO = get "io"
                        , iQ = get "iq"
                        , iR = get "ir"
                        , iS = get "is"
                        , iT = get "it"
                        , jE = get "je"
                        , jM = get "jm"
                        , jO = get "jo"
                        , jP = get "jp"
                        , kE = get "ke"
                        , kG = get "kg"
                        , kH = get "kh"
                        , kI = get "ki"
                        , kM = get "km"
                        , kN = get "kn"
                        , kP = get "kp"
                        , kR = get "kr"
                        , kW = get "kw"
                        , kY = get "ky"
                        , kZ = get "kz"
                        , lA = get "la"
                        , lB = get "lb"
                        , lC = get "lc"
                        , lI = get "li"
                        , lK = get "lk"
                        , lR = get "lr"
                        , lS = get "ls"
                        , lT_ = get "lt"
                        , lU = get "lu"
                        , lV = get "lv"
                        , lY = get "ly"
                        , mA = get "ma"
                        , mC = get "mc"
                        , mD = get "md"
                        , mE = get "me"
                        , mF = get "mf"
                        , mG = get "mg"
                        , mH = get "mh"
                        , mK = get "mk"
                        , mL = get "ml"
                        , mM = get "mm"
                        , mN = get "mn"
                        , mO = get "mo"
                        , mP = get "mp"
                        , mQ = get "mq"
                        , mR = get "mr"
                        , mS = get "ms"
                        , mT = get "mt"
                        , mU = get "mu"
                        , mV = get "mv"
                        , mW = get "mw"
                        , mX = get "mx"
                        , mY = get "my"
                        , mZ = get "mz"
                        , nA = get "na"
                        , nC = get "nc"
                        , nE = get "ne"
                        , nF = get "nf"
                        , nG = get "ng"
                        , nI = get "ni"
                        , nL = get "nl"
                        , nO = get "no"
                        , nP = get "np"
                        , nR = get "nr"
                        , nU = get "nu"
                        , nZ = get "nz"
                        , oM = get "om"
                        , pA = get "pa"
                        , pE = get "pe"
                        , pF = get "pf"
                        , pG = get "pg"
                        , pH = get "ph"
                        , pK = get "pk"
                        , pL = get "pl"
                        , pM = get "pm"
                        , pN = get "pn"
                        , pR = get "pr"
                        , pS = get "ps"
                        , pT = get "pt"
                        , pW = get "pw"
                        , pY = get "py"
                        , qA = get "qa"
                        , rE = get "re"
                        , rO = get "ro"
                        , rS = get "rs"
                        , rU = get "ru"
                        , rW = get "rw"
                        , sA = get "sa"
                        , sB = get "sb"
                        , sC = get "sc"
                        , sD = get "sd"
                        , sE = get "se"
                        , sG = get "sg"
                        , sH = get "sh"
                        , sI = get "si"
                        , sJ = get "sj"
                        , sK = get "sk"
                        , sL = get "sl"
                        , sM = get "sm"
                        , sN = get "sn"
                        , sO = get "so"
                        , sR = get "sr"
                        , sS = get "ss"
                        , sT = get "st"
                        , sV = get "sv"
                        , sX = get "sx"
                        , sY = get "sy"
                        , sZ = get "sz"
                        , tC = get "tc"
                        , tD = get "td"
                        , tF = get "tf"
                        , tG = get "tg"
                        , tH = get "th"
                        , tJ = get "tj"
                        , tK = get "tk"
                        , tL = get "tl"
                        , tM = get "tm"
                        , tN = get "tn"
                        , tO = get "to"
                        , tR = get "tr"
                        , tT = get "tt"
                        , tV = get "tv"
                        , tW = get "tw"
                        , tZ = get "tz"
                        , uA = get "ua"
                        , uG = get "ug"
                        , uM = get "um"
                        , uS = get "us"
                        , uY = get "uy"
                        , uZ = get "uz"
                        , vA = get "va"
                        , vC = get "vc"
                        , vE = get "ve"
                        , vG = get "vg"
                        , vI = get "vi"
                        , vN = get "vn"
                        , vU = get "vu"
                        , wF = get "wf"
                        , wS = get "ws"
                        , xK = get "xk"
                        , yE = get "ye"
                        , yT = get "yt"
                        , zA = get "za"
                        , zM = get "zm"
                        , zW = get "zw"
                        }
            , partiallyRecognized =
                \ever -> Gen.Basics.never ever
            }
            |> Elm.withType (Annotation.tuple Annotation.int Annotation.int)
    )
        |> Elm.fn ( "country", Just Gen.Shared.Model.annotation_.country )
        |> Elm.declaration "getAspectRatio"
        |> Elm.expose
        |> List.singleton
        |> Elm.file [ "AspectRatios" ]


fileToPair : ( String, String ) -> Maybe ( String, Elm.Expression )
fileToPair ( name, content ) =
    Maybe.map2
        (\alpha2 ( width, height ) ->
            let
                g =
                    gcd width height
            in
            ( alpha2
            , Elm.tuple (Elm.int <| width // g) (Elm.int <| height // g)
            )
        )
        (parseMaybe alpha2Parser name)
        (getRoot content
            |> Maybe.andThen
                (\root ->
                    Maybe.Extra.orLazy
                        (root
                            |> getViewBox
                            |> Maybe.andThen (parseMaybe viewBoxParser)
                        )
                        (\_ -> getAspectRatioFromWidthAndHeight root)
                )
        )


gcd : Int -> Int -> Int
gcd a b =
    if a == 0 then
        b

    else if a < 0 then
        -(gcd -a b)

    else if b == 0 then
        a

    else if b < 0 then
        -(gcd a -b)

    else if a < b then
        gcd b a

    else
        -- Here a > b > 0
        gcd b (modBy b a)


getAspectRatioFromWidthAndHeight : XmlParser.Node -> Maybe ( Int, Int )
getAspectRatioFromWidthAndHeight node =
    case node of
        XmlParser.Element _ attrs _ ->
            let
                get key =
                    List.Extra.findMap
                        (\{ name, value } ->
                            if name == key then
                                parseMaybe sizeParser value

                            else
                                Nothing
                        )
                        attrs
            in
            Maybe.map2 Tuple.pair
                (get "width")
                (get "height")

        XmlParser.Text _ ->
            Nothing


sizeParser : Parser Int
sizeParser =
    let
        intParser =
            Parser.float
                |> Parser.andThen
                    (\f ->
                        if toFloat (round f) == f then
                            Parser.succeed (round f)

                        else
                            Parser.problem "Expected an integer"
                    )
    in
    Parser.succeed identity
        |= intParser
        |. Parser.oneOf [ Parser.symbol "px", Parser.succeed () ]
        |. Parser.end


parseMaybe : Parser x -> String -> Maybe x
parseMaybe parser input =
    Result.toMaybe (Parser.run parser input)


viewBoxParser : Parser ( Int, Int )
viewBoxParser =
    Parser.succeed Tuple.pair
        |. Parser.oneOf [ Parser.symbol "-", Parser.succeed () ]
        |. Parser.float
        |. Parser.spaces
        |. Parser.oneOf [ Parser.symbol "-", Parser.succeed () ]
        |. Parser.float
        |. Parser.spaces
        |= Parser.int
        |. Parser.spaces
        |= Parser.int
        |. Parser.end


getRoot : String -> Maybe XmlParser.Node
getRoot content =
    case XmlParser.parse content of
        Ok { root } ->
            Just root

        Err _ ->
            Nothing


getViewBox : XmlParser.Node -> Maybe String
getViewBox root =
    case root of
        XmlParser.Element _ attrs _ ->
            List.Extra.findMap
                (\attr ->
                    if attr.name == "viewBox" then
                        Just attr.value

                    else
                        Nothing
                )
                attrs

        XmlParser.Text _ ->
            Nothing


alpha2Parser : Parser String
alpha2Parser =
    Parser.succeed identity
        |= Parser.getChompedString
            (Parser.succeed ()
                |. Parser.chompIf Char.isAlpha
                |. Parser.chompIf Char.isAlpha
            )
        |. Parser.symbol ".svg"
        |. Parser.end
