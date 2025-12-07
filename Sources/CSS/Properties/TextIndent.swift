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

public func TextIndent(_ value: String) -> Property {
    Property(name: "text-indent", value: value)
}

/// Specifies the indentation of the first line in a text-block
public func TextIndent(_ value: TextIndentValue) -> Property {
    TextIndent(value.rawValue)
}

/// Specifies the indentation of the first line in a text-block
public func TextIndent(_ value: Unit) -> Property {
    TextIndent(.length(value))
}
