//
//  Top.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TopValue {
    /// Lets the browser calculate the top edge position. This is default
    case auto
    /// Sets the bottom edge position in px, cm, etc. Negative values are allowed. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}
public func Top(_ value: String) -> Property {
    Property(name: "top", value: value)
}

/// Specifies the top position of a positioned element
public func Top(_ value: TopValue = .auto) -> Property {
    Top(value.rawValue)
}

/// Specifies the top position of a positioned element
public func Top(_ value: Unit) -> Property {
    Top(.length(value))
}
