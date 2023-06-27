module Flags exposing (allCards)

import Iso3166 exposing (CountryCode)
import Random
import Random.List
import Types exposing (Card, CardKind(..))


allCards : Random.Seed -> ( List Card, Random.Seed )
allCards seed =
    let
        ( finalSeed, result ) =
            Iso3166.all
                |> List.foldl
                    (\code ( seedAcc, acc ) ->
                        let
                            ( card, newSeed ) =
                                toCard code seedAcc
                        in
                        ( newSeed, card :: acc )
                    )
                    ( seed, [] )
    in
    Random.step (Random.List.shuffle result) finalSeed


toCard : CountryCode -> Random.Seed -> ( Card, Random.Seed )
toCard countryCode seed =
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
                                    , kind = GuessName
                                    }
                                )
                    )
    in
    Random.step generator seed
