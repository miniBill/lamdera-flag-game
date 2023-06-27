module Flags exposing (allCards)

import Iso3166 exposing (CountryCode)
import Random
import Random.List
import Types exposing (Card, CardKind)


allCards : CardKind -> Random.Seed -> ( List Card, Random.Seed )
allCards kind seed =
    let
        ( finalSeed, result ) =
            Iso3166.all
                |> List.take 5
                |> List.foldl
                    (\code ( seedAcc, acc ) ->
                        let
                            ( card, newSeed ) =
                                toCard kind code seedAcc
                        in
                        ( newSeed, card :: acc )
                    )
                    ( seed, [] )
    in
    Random.step (Random.List.shuffle result) finalSeed


toCard : CardKind -> CountryCode -> Random.Seed -> ( Card, Random.Seed )
toCard kind countryCode seed =
    let
        generator : Random.Generator Card
        generator =
            Iso3166.all
                |> List.filter ((/=) countryCode)
                |> Random.List.choices 3
                |> Random.andThen
                    (\( others, _ ) ->
                        Random.List.shuffle (countryCode :: others)
                            |> Random.map
                                (\options ->
                                    { guessing = countryCode
                                    , options = options
                                    , kind = kind
                                    }
                                )
                    )
    in
    Random.step generator seed
