//
//  Outline.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OutlineValue {
    /// outline-width    Specifies the width of outline
    /// outline-style    Specifies the style of the outline
    /// outline-color    Specifies the color of the outline
    case values(OutlineWidthValue, OutlineStyleValue, OutlineColorValue)
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let width, let style, let color):
            return [width.rawValue, style.rawValue, color.rawValue]
                .joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Outline(_ value: String) -> Property {
    Property(name: "outline", value: value)
}

/// A shorthand property for the outline-width, outline-style, and the outline-color properties
public func Outline(_ value: OutlineValue) -> Property {
    Outline(value.rawValue)
}
