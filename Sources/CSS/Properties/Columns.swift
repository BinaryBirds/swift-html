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

public func Columns(_ value: String) -> Property {
    Property(name: "columns", value: value)
}

/// A shorthand property for column-width and column-count
public func Columns(_ value: ColumnsValue = .auto) -> Property {
    Columns(value.rawValue)
}

/// A shorthand property for column-width and column-count
public func Columns(_ width: ColumnWidthValue, _ count: ColumnCountValue)
    -> Property
{
    Columns(.values(width, count))
}
