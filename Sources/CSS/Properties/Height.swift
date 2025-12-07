//
//  Height.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum HeightValue {
    /// The browser calculates the height. This is default
    case auto
    /// Defines the height in px, cm, etc.
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

public func Height(_ value: String) -> Property {
    Property(name: "height", value: value)
}

/// Sets the height of an element
public func Height(_ value: HeightValue = .auto) -> Property {
    Height(value.rawValue)
}

/// Sets the height of an element
public func Height(_ value: Unit) -> Property {
    Height(.length(value))
}
