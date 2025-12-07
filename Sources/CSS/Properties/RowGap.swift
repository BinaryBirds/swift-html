//
//  RowGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum RowGapValue {
    /// A specified length or % that will set the gap between the rows
    case length(Unit)
    /// Default value. Specifies a normal gap between the rows
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

public func RowGap(_ value: String) -> Property {
    Property(name: "row-gap", value: value)
}

/// Specifies the gap between the grid rows
public func RowGap(_ value: RowGapValue = .normal) -> Property {
    RowGap(value.rawValue)
}

/// Specifies the gap between the grid rows
public func RowGap(_ value: Unit) -> Property {
    RowGap(.length(value))
}
