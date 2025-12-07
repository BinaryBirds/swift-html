//
//  LineHeight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum LineHeightValue {
    /// A normal line height. This is default
    case normal
    /// A number that will be multiplied with the current font-size to set the line height
    case number(Double)
    /// A fixed line height in px, pt, cm, etc.
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .normal:
            return "normal"
        case .number(let value):
            return String(value)
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func LineHeight(_ value: String) -> Property {
    Property(name: "line-height", value: value)
}

/// Sets the line height
public func LineHeight(_ value: LineHeightValue = .normal) -> Property {
    LineHeight(value.rawValue)
}
