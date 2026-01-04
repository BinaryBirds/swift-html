//
//  TextIndent.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextIndentValue {
    /// Defines a fixed indentation in px, pt, cm, em, etc. Default value is 0. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct TextIndent: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-indent" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextIndent {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextIndent {

    /// Specifies the indentation of the first line in a text-block
    public init(_ value: TextIndentValue) {
        self.init(value.rawValue)
    }

    /// Specifies the indentation of the first line in a text-block
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
