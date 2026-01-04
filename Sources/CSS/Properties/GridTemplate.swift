//
//  GridTemplate.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridTemplateValue {
    /// Default value. No specific sizing of the columns or rows
    case none
    /// grid-template rows / grid-template-columns    Specifies the size(s) of the columns and rows    Play it »
    case values(GridTemplateRowsValue, GridTemplateColumnsValue)
    /// grid-template-areas    Specifies the grid layout using named items    Play it »
    case areas(GridTemplateAreasValue)
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .values(let rows, let cols):
            return rows.rawValue + " / " + cols.rawValue
        case .areas(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"

        }
    }
}

public struct GridTemplate: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-template" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridTemplate {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridTemplate {

    /// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    public init(_ value: GridTemplateValue = .none) {
        self.init(value.rawValue)
    }
}
