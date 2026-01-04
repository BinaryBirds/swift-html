//
//  Border.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderStyleValue: String {
    /// Specifies no border. This is default    Play it »
    case none
    /// The same as "none", except in border conflict resolution for table elements    Play it »
    case hidden
    /// Specifies a dotted border    Play it »
    case dotted
    /// Specifies a dashed border    Play it »
    case dashed
    /// Specifies a solid border    Play it »
    case solid
    /// Specifies a double border    Play it »
    case double
    /// Specifies a 3D grooved border. The effect depends on the border-color value    Play it »
    case groove
    /// Specifies a 3D ridged border. The effect depends on the border-color value    Play it »
    case ridge
    /// Specifies a 3D inset border. The effect depends on the border-color value    Play it »
    case inset
    /// Specifies a 3D outset border. The effect depends on the border-color value    Play it »
    case outset
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public enum BorderWidthValue {
    /// Specifies a medium bottom border. This is default
    case medium
    /// Specifies a thin bottom border
    case thin
    /// Specifies a thick bottom border
    case thick
    /// Allows you to define the thickness of the bottom border.
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .medium:
            return "medium"
        case .thin:
            return "thin"
        case .thick:
            return "thick"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public enum BorderLineValue {
    case values(BorderWidthValue, BorderStyleValue, CSSColor)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .values(let width, let style, let color):
            return width.rawValue + " " + style.rawValue + " " + color.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public enum BorderRadiusSingleValue {
    /// Defines the shape of the corners. Default value is 0. Read about length units
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

/// A shorthand property for border-width, border-style and border-color

public struct Border: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Border {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Border {
}
