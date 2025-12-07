//
//  WordSpacing.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WordSpacingValue {
    /// Defines normal space between words (0.25em) . This is default
    case normal
    /// Defines an additional space between words (in px, pt, cm, em, etc). Negative values are allowed. Read about length units
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

public func WordSpacing(_ value: String) -> Property {
    Property(name: "word-spacing", value: value)
}

/// Increases or decreases the space between words in a text
public func WordSpacing(_ value: WordSpacingValue = .normal) -> Property {
    WordSpacing(value.rawValue)
}

/// Increases or decreases the space between words in a text
public func WordSpacing(_ value: Unit) -> Property {
    WordSpacing(.length(value))
}
