//
//  Grid.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

// @TODO: check this again tomorrow... :)
public enum GridValue {
    /// Default value. No specific sizing of the columns or rows
    case none
    case values(
        GridTemplateRowsValue,
        GridTemplateColumnsValue,
        GridTemplateAreasValue,
        GridAutoRowsValue,
        GridAutoColumnsValue,
        GridAutoFlowValue
    )
    case initial
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .values(
            let tplRow,
            let tplCol,
            let tplAreas,
            let autoRow,
            let autoCol,
            let autoFlow
        ):
            return [
                tplRow.rawValue + "/" + tplCol.rawValue,
                tplAreas.rawValue,
                autoRow.rawValue,
                autoCol.rawValue,
                autoFlow.rawValue,
            ]
            .joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Grid(_ value: String) -> Property {
    Property(name: "grid", value: value)
}

/// A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
public func Grid(_ value: GridValue = .none) -> Property {
    Grid(value.rawValue)
}

/// A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
public func Grid(
    _ tplRow: GridTemplateRowsValue,
    _ tplCol: GridTemplateColumnsValue,
    _ tplAreas: GridTemplateAreasValue,
    _ autoRow: GridAutoRowsValue,
    _ autoCol: GridAutoColumnsValue,
    _ autoFlow: GridAutoFlowValue
) -> Property {
    Grid(.values(tplRow, tplCol, tplAreas, autoRow, autoCol, autoFlow))
}
