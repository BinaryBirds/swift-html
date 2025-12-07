//
//  MaxHeight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MaxHeightValue {
    /// No maximum height. This is default
    case none
    /// Defines the maximum height in px, cm, etc. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func MaxHeight(_ value: String) -> Property {
    Property(name: "max-height", value: value)
}

/// Sets the maximum height of an element
public func MaxHeight(_ value: MaxHeightValue = .none) -> Property {
    MaxHeight(value.rawValue)
}

/// Sets the maximum height of an element
public func MaxHeight(_ value: Unit) -> Property {
    MaxHeight(.length(value))
}
