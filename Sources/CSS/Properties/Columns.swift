//
//  Columns.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnsValue {
    /// Default value. Sets both the column-width and column-count to "auto"
    case auto
    case values(ColumnWidthValue, ColumnCountValue)
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .values(let width, let count):
            return [width.rawValue, count.rawValue].joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Columns: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "columns" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Columns {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Columns {

    /// A shorthand property for column-width and column-count
    public init(_ value: ColumnsValue = .auto) {
        self.init(value.rawValue)
    }

    /// A shorthand property for column-width and column-count
    public init(_ width: ColumnWidthValue, _ count: ColumnCountValue) {
        self.init(.values(width, count))
    }
}
