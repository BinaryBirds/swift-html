//
//  Right.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum RightValue {
    /// Lets the browser calculate the right edge position. This is default
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

public func Right(_ value: String) -> Property {
    Property(name: "right", value: value)
}

/// Specifies the right position of a positioned element
public func Right(_ value: RightValue = .auto) -> Property {
    Right(value.rawValue)
}

/// Specifies the right position of a positioned element
public func Right(_ value: Unit) -> Property {
    Right(.length(value))
}
