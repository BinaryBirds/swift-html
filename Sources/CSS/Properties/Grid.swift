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

public struct Grid: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Grid {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Grid {

    /// A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
    public init(_ value: GridValue = .none) {
        self.init(value.rawValue)
    }

    /// A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
    public init(
        _ tplRow: GridTemplateRowsValue,
        _ tplCol: GridTemplateColumnsValue,
        _ tplAreas: GridTemplateAreasValue,
        _ autoRow: GridAutoRowsValue,
        _ autoCol: GridAutoColumnsValue,
        _ autoFlow: GridAutoFlowValue
    ) {
        self.init(.values(tplRow, tplCol, tplAreas, autoRow, autoCol, autoFlow))
    }
}
