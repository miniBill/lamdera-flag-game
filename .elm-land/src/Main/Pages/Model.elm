module Main.Pages.Model exposing (Model(..))

import Pages.Home_
import Pages.Finished
import Pages.Play
import Pages.Sort
import Pages.NotFound_
import View exposing (View)


type Model
    = Home_ Pages.Home_.Model
    | Finished Pages.Finished.Model
    | Play Pages.Play.Model
    | Sort Pages.Sort.Model
    | NotFound_ Pages.NotFound_.Model
    | Redirecting_
    | Loading_
