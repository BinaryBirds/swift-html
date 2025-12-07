//
//  Width.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WidthValue {
    /// Default value. The browser calculates the width
    case auto
    /// Defines the width in px, cm, etc. Read about length units
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

public func Width(_ value: String) -> Property {
    Property(name: "width", value: value)
}

/// Sets the width of an element
public func Width(_ value: WidthValue = .auto) -> Property {
    Width(value.rawValue)
}

/// Sets the width of an element
public func Width(_ value: Unit) -> Property {
    Width(.length(value))
}
