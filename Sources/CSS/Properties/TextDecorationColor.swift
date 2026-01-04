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

public struct TextDecorationColor: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-decoration-color" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextDecorationColor {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextDecorationColor {

    /// Specifies the color of the text-decoration
    public init(_ value: TextDecorationColorValue) {
        self.init(value.rawValue)
    }

    /// Specifies the color of the text-decoration
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
