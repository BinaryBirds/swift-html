//
//  LetterSpacing.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum LetterSpacingValue {
    /// No extra space between characters. This is default
    case normal
    /// Defines an extra space between characters (negative values are allowed). Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .normal:
            return "normal"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func LetterSpacing(_ value: String) -> Property {
    Property(name: "letter-spacing", value: value)
}

/// Increases or decreases the space between characters in a text
public func LetterSpacing(_ value: LetterSpacingValue) -> Property {
    LetterSpacing(value.rawValue)
}
