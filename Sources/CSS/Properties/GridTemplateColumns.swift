//
//  GridTemplateColumns.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridTemplateColumnsValue {
    /// Default value. Columns are created if needed
    case none
    /// The size of the columns is determined by the size of the container and on the size of the content of the items in the column
    case auto
    /// Sets the size of each column to depend on the largest item in the column
    case maxContent
    /// Sets the size of each column to depend on the smallest item in the column
    case minContent
    /// Sets the size of the columns, by using a legal length value.
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .auto:
            return "auto"
        case .maxContent:
            return "max-content"
        case .minContent:
            return "min-content"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct GridTemplateColumns: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-template-columns" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridTemplateColumns {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridTemplateColumns {

    /// Specifies the size of the columns, and how many columns in a grid layout
    public init(_ value: GridTemplateColumnsValue = .none) {
        self.init(value.rawValue)
    }
}
