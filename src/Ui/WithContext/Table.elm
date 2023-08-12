module Ui.WithContext.Table exposing (Cell, Column, Config, cell, column, columns, view, withWidth)

import Ui.Table as Table
import Ui.WithContext.Internal as Internal exposing (Attribute(..), Element(..))


type Column context state data msg
    = Column (context -> Table.Column state data msg)


type Cell context msg
    = Cell (context -> Table.Cell msg)


type Config context state data msg
    = Config (context -> Table.Config state data msg)


{-| -}
columns :
    List (Column context state data msg)
    -> Config context state data msg
columns cols =
    Config
        (\context ->
            Table.columns <|
                List.map (\(Column col) -> col context) cols
        )


{-| -}
view :
    List (Attribute context msg)
    -> Config context () data msg
    -> List data
    -> Element context msg
view attrs (Config config) data =
    Internal.containerOther (\a c -> Table.view a c data) attrs config


column :
    { header : Cell context msg
    , view : data -> Cell context msg
    }
    -> Column context state data msg
column value =
    Column
        (\context ->
            Table.column
                { header =
                    let
                        (Cell headerF) =
                            value.header
                    in
                    headerF context
                , view =
                    \data ->
                        let
                            (Cell viewF) =
                                value.view data
                        in
                        viewF context
                }
        )


cell : List (Attribute context msg) -> Element context msg -> Cell context msg
cell attrs (Element child) =
    Cell
        (\context ->
            Table.cell
                (List.map (\(Attribute a) -> a context) attrs)
                (child context)
        )


withWidth :
    { fill : Bool, min : Maybe Int, max : Maybe Int }
    -> Column context state data msg
    -> Column context state data msg
withWidth width (Column col) =
    Column
        (\context ->
            col context
                |> Table.withWidth width
        )
