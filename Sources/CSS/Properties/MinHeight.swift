//
//  MinHeight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MinHeightValue {
    /// Default value is 0. Defines the minimum height in px, cm, etc. Read about length units
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

public func MinHeight(_ value: String) -> Property {
    Property(name: "min-height", value: value)
}

/// Sets the minimum height of an element
public func MinHeight(_ value: MinHeightValue = .length(.zero)) -> Property {
    MinHeight(value.rawValue)
}

/// Sets the minimum height of an element
public func MinHeight(_ value: Unit) -> Property {
    MinHeight(.length(value))
}
