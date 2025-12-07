//
//  OutlineColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OutlineColorValue {
    /// Performs a color inversion. This ensures that the outline is visible, regardless of color background. This is default
    case invert
    /// Specifies the color of the outline. Look at CSS Color Values for a complete list of possible color values.
    case color(CSSColor)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .invert:
            return "invert"
        case .color(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func OutlineColor(_ value: String) -> Property {
    Property(name: "outline-color", value: value)
}

/// Sets the color of an outline
public func OutlineColor(_ value: OutlineColorValue = .invert) -> Property {
    OutlineColor(value.rawValue)
}

public func OutlineColor(_ value: CSSColor) -> Property {
    OutlineColor(.color(value))
}
