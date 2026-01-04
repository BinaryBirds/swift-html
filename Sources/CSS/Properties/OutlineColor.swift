//
//  OutlineColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OutlineColorValue {
    /// Performs a color inversion. This ensures that the outline is visible, regardless of color background. This is default
    case invert
    /// Specifies the color of the outline. Look at CSS Color Values for a complete list of possible color values.
    case color(CSSColor)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .invert:
            return "invert"
        case .color(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct OutlineColor: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "outline-color" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> OutlineColor {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension OutlineColor {

    /// Sets the color of an outline
    public init(_ value: OutlineColorValue = .invert) {
        self.init(value.rawValue)
    }

    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
