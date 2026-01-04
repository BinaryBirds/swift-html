//
//  Color.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColorValue {
    /// Specifies the text color.
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

public struct Color: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "color" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Color {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Color {

    /// Sets the color of text
    public init(_ value: ColorValue) {
        self.init(value.rawValue)
    }

    /// Sets the color of text
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
