//
//  TextDecorationColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextDecorationColorValue {
    /// Specifies the color of the text-decoration
    case color(CSSColor)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .color(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func TextDecorationColor(_ value: String) -> Property {
    Property(name: "text-decoration-color", value: value)
}

/// Specifies the color of the text-decoration
public func TextDecorationColor(_ value: TextDecorationColorValue) -> Property {
    TextDecorationColor(value.rawValue)
}

/// Specifies the color of the text-decoration
public func TextDecorationColor(_ value: CSSColor) -> Property {
    TextDecorationColor(.color(value))
}
