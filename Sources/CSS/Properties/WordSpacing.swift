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

public struct WordSpacing: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "word-spacing" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> WordSpacing {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension WordSpacing {

    /// Increases or decreases the space between words in a text
    public init(_ value: WordSpacingValue = .normal) {
        self.init(value.rawValue)
    }

    /// Increases or decreases the space between words in a text
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
