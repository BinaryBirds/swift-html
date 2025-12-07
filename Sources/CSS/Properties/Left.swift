//
//  Left.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum LeftValue {
    /// Lets the browser calculate the left edge position. This is default
    case auto
    /// Sets the left edge position in px, cm, etc. Negative values are allowed. Read about length units
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

public func Left(_ value: String) -> Property {
    Property(name: "left", value: value)
}

/// Specifies the left position of a positioned element
public func Left(_ value: LeftValue = .auto) -> Property {
    Left(value.rawValue)
}
