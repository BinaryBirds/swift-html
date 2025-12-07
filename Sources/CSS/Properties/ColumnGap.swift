//
//  ColumnGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnGapValue {

    /// A specified length that will set the gap between the columns
    case length(Unit)
    /// Default value. Specifies a normal gap between the columns. W3C suggests a value of 1em
    case normal
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        case .normal:
            return "normal"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func ColumnGap(_ value: String) -> Property {
    Property(name: "column-gap", value: value)
}

/// Specifies the gap between the columns
public func ColumnGap(_ value: ColumnGapValue) -> Property {
    ColumnGap(value.rawValue)
}

/// Specifies the gap between the columns
public func ColumnGap(_ value: Unit) -> Property {
    ColumnGap(.length(value))
}
