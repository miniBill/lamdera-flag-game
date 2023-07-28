module Main.Pages.Msg exposing (Msg(..))

import Pages.Home_
import Pages.Finished
import Pages.Play
import Pages.Sort
import Pages.NotFound_


type Msg
    = Home_ Pages.Home_.Msg
    | Finished Pages.Finished.Msg
    | Play Pages.Play.Msg
    | Sort Pages.Sort.Msg
    | NotFound_ Pages.NotFound_.Msg
