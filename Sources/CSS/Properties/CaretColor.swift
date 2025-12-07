//
//  CaretColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum CaretColorValue {
    /// Default. Browsers uses the currentColor for the caret
    case auto
    /// Specifies a color to use for the caret. All legal color values can be used (rgb, hex, named-color, etc). For more information on legal values, read our CSS Colors Tutorial
    case color(CSSColor)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .color(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func CaretColor(_ value: String) -> Property {
    Property(name: "caret-color", value: value)
}

/// Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
public func CaretColor(_ value: CaretColorValue = .auto) -> Property {
    CaretColor(value.rawValue)
}

/// Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
public func CaretColor(_ value: CSSColor) -> Property {
    CaretColor(.color(value))
}
