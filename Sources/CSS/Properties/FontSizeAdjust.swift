//
//  FontSizeAdjust.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontSizeAdjustValue {
    /// Defines the aspect value to use
    case number(Double)
    /// Default value. No font size adjustment
    case none
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .number(let value):
            return String(value)
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func FontSizeAdjust(_ value: String) -> Property {
    Property(name: "font-size-adjust", value: value)
}

/// Preserves the readability of text when font fallback occurs
public func FontSizeAdjust(_ value: FontSizeAdjustValue = .none) -> Property {
    FontSizeAdjust(value.rawValue)
}
