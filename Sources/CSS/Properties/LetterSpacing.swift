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

public struct LetterSpacing: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "letter-spacing" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> LetterSpacing {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension LetterSpacing {

    /// Increases or decreases the space between characters in a text
    public init(_ value: LetterSpacingValue) {
        self.init(value.rawValue)
    }
}
