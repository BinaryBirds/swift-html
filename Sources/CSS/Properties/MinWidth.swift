//
//  MinWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MinWidthValue {
    /// Default value is 0. Defines the minimum width in px, cm, etc. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func MinWidth(_ value: String) -> Property {
    Property(name: "min-width", value: value)
}

/// Sets the minimum width of an element
public func MinWidth(_ value: MinWidthValue = .length(.zero)) -> Property {
    MinWidth(value.rawValue)
}

/// Sets the minimum width of an element
public func MinWidth(_ value: Unit) -> Property {
    MinWidth(.length(value))
}
