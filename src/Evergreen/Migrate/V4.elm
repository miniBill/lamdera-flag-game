module Evergreen.Migrate.V4 exposing (..)

{-| -}

import Evergreen.V1.Types
import Evergreen.V4.Types
import Lamdera.Migrations exposing (..)
import List


frontendModel : Evergreen.V1.Types.FrontendModel -> ModelMigration Evergreen.V4.Types.FrontendModel Evergreen.V4.Types.FrontendMsg
frontendModel old =
    ModelMigrated ( migrate_Types_FrontendModel old, Cmd.none )


backendModel : Evergreen.V1.Types.BackendModel -> ModelMigration Evergreen.V4.Types.BackendModel Evergreen.V4.Types.BackendMsg
backendModel _ =
    ModelUnchanged


frontendMsg : Evergreen.V1.Types.FrontendMsg -> MsgMigration Evergreen.V4.Types.FrontendMsg Evergreen.V4.Types.FrontendMsg
frontendMsg old =
    MsgMigrated ( migrate_Types_FrontendMsg old, Cmd.none )


toBackend : Evergreen.V1.Types.ToBackend -> MsgMigration Evergreen.V4.Types.ToBackend Evergreen.V4.Types.BackendMsg
toBackend _ =
    MsgUnchanged


backendMsg : Evergreen.V1.Types.BackendMsg -> MsgMigration Evergreen.V4.Types.BackendMsg Evergreen.V4.Types.BackendMsg
backendMsg _ =
    MsgUnchanged


toFrontend : Evergreen.V1.Types.ToFrontend -> MsgMigration Evergreen.V4.Types.ToFrontend Evergreen.V4.Types.FrontendMsg
toFrontend _ =
    MsgUnchanged


migrate_Types_FrontendModel : Evergreen.V1.Types.FrontendModel -> Evergreen.V4.Types.FrontendModel
migrate_Types_FrontendModel old =
    { key = old.key
    , context = old.context |> migrate_Types_Context
    , inner = old.inner |> migrate_Types_InnerModel
    , seed = old.seed
    }


migrate_Types_Card : Evergreen.V1.Types.Card -> Evergreen.V4.Types.Card
migrate_Types_Card old =
    { guessing = old.guessing
    , options = old.options
    , kind = old.kind |> migrate_Types_CardKind
    }


migrate_Types_CardKind : Evergreen.V1.Types.CardKind -> Evergreen.V4.Types.CardKind
migrate_Types_CardKind old =
    case old of
        Evergreen.V1.Types.GuessFlag ->
            Evergreen.V4.Types.GuessFlag

        Evergreen.V1.Types.GuessName ->
            Evergreen.V4.Types.GuessName


migrate_Types_Context : Evergreen.V1.Types.Context -> Evergreen.V4.Types.Context
migrate_Types_Context old =
    { language = old.language |> migrate_Types_Language
    }


migrate_Types_FrontendMsg : Evergreen.V1.Types.FrontendMsg -> Evergreen.V4.Types.FrontendMsg
migrate_Types_FrontendMsg old =
    case old of
        Evergreen.V1.Types.UrlClicked p0 ->
            Evergreen.V4.Types.UrlClicked p0

        Evergreen.V1.Types.UrlChanged p0 ->
            Evergreen.V4.Types.UrlChanged p0

        Evergreen.V1.Types.Play p0 ->
            Evergreen.V4.Types.Play (p0 |> migrate_Types_CardKind)
                Evergreen.V4.Types.Normal

        Evergreen.V1.Types.Seed p0 ->
            Evergreen.V4.Types.Seed p0

        Evergreen.V1.Types.Pick p0 ->
            Evergreen.V4.Types.Pick p0

        Evergreen.V1.Types.Next ->
            Evergreen.V4.Types.Next


migrate_Types_InnerModel : Evergreen.V1.Types.InnerModel -> Evergreen.V4.Types.InnerModel
migrate_Types_InnerModel old =
    case old of
        Evergreen.V1.Types.Homepage ->
            Evergreen.V4.Types.Homepage

        Evergreen.V1.Types.Playing p0 ->
            Evergreen.V4.Types.Playing (p0 |> migrate_Types_PlayingModel)

        Evergreen.V1.Types.Finished p0 ->
            Evergreen.V4.Types.Finished p0


migrate_Types_Language : Evergreen.V1.Types.Language -> Evergreen.V4.Types.Language
migrate_Types_Language old =
    case old of
        Evergreen.V1.Types.Arabic ->
            Evergreen.V4.Types.Arabic

        Evergreen.V1.Types.Chinese ->
            Evergreen.V4.Types.Chinese

        Evergreen.V1.Types.Czech ->
            Evergreen.V4.Types.Czech

        Evergreen.V1.Types.Danish ->
            Evergreen.V4.Types.Danish

        Evergreen.V1.Types.Dutch ->
            Evergreen.V4.Types.Dutch

        Evergreen.V1.Types.English ->
            Evergreen.V4.Types.English

        Evergreen.V1.Types.Estonian ->
            Evergreen.V4.Types.Estonian

        Evergreen.V1.Types.French ->
            Evergreen.V4.Types.French

        Evergreen.V1.Types.German ->
            Evergreen.V4.Types.German

        Evergreen.V1.Types.Greek ->
            Evergreen.V4.Types.Greek

        Evergreen.V1.Types.Hungarian ->
            Evergreen.V4.Types.Hungarian

        Evergreen.V1.Types.Italian ->
            Evergreen.V4.Types.Italian

        Evergreen.V1.Types.Japanese ->
            Evergreen.V4.Types.Japanese

        Evergreen.V1.Types.Lithuanian ->
            Evergreen.V4.Types.Lithuanian

        Evergreen.V1.Types.Norwegian ->
            Evergreen.V4.Types.Norwegian

        Evergreen.V1.Types.Polish ->
            Evergreen.V4.Types.Polish

        Evergreen.V1.Types.Portuguese ->
            Evergreen.V4.Types.Portuguese

        Evergreen.V1.Types.Romanian ->
            Evergreen.V4.Types.Romanian

        Evergreen.V1.Types.Russian ->
            Evergreen.V4.Types.Russian

        Evergreen.V1.Types.Slovak ->
            Evergreen.V4.Types.Slovak

        Evergreen.V1.Types.Spanish ->
            Evergreen.V4.Types.Spanish

        Evergreen.V1.Types.Thai ->
            Evergreen.V4.Types.Thai

        Evergreen.V1.Types.Ukrainian ->
            Evergreen.V4.Types.Ukrainian


migrate_Types_PlayingModel : Evergreen.V1.Types.PlayingModel -> Evergreen.V4.Types.PlayingModel
migrate_Types_PlayingModel old =
    { current = old.current |> migrate_Types_Card
    , picked = old.picked
    , queue = old.queue |> List.map migrate_Types_Card
    , score = old.score
    , total = old.total
    }
