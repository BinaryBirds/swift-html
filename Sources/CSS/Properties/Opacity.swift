//
//  Opacity.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OpacityValue {
    /// Specifies the opacity. From 0.0 (fully transparent) to 1.0 (fully opaque)
    case number(Double)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .number(let value):
            return String(value)
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Opacity(_ value: String) -> Property {
    Property(name: "opacity", value: value)
}

/// Sets the opacity level for an element
public func Opacity(_ value: OpacityValue = .number(1)) -> Property {
    Opacity(value.rawValue)
}

/// Sets the opacity level for an element
public func Opacity(_ value: Double = 1) -> Property {
    Opacity(.number(value))
}
