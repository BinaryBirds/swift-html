//
//  TextDecoration.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextDecorationValue {
    /// text-decoration-line    Sets the kind of text decoration to use (like underline, overline, line-through)
    /// text-decoration-color    Sets the color of the text decoration
    /// text-decoration-style    Sets the style of the text decoration (like solid, wavy, dotted, dashed, double)
    case values(
        TextDecorationLineValue,
        TextDecorationColorValue,
        TextDecorationStyleValue
    )
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let line, let color, let style):
            return [line.rawValue, color.rawValue, style.rawValue]
                .joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }

}

public func TextDecoration(_ value: String) -> Property {
    Property(name: "text-decoration", value: value)
}

/// Specifies the decoration added to text
public func TextDecoration(_ value: TextDecorationValue) -> Property {
    TextDecoration(value.rawValue)
}
