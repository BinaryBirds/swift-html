//
//  TextDecorationStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextDecorationStyleValue: String {
    /// Default value. The line will display as a single line    Play it »
    case solid
    /// The line will display as a double line    Play it »
    case double
    /// The line will display as a dotted line    Play it »
    case dotted
    /// The line will display as a dashed line    Play it »
    case dashed
    /// The line will display as a wavy line    Play it »
    case wavy
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public func TextDecorationStyle(_ value: String) -> Property {
    Property(name: "text-decoration-style", value: value)
}

/// Specifies the style of the line in a text decoration
public func TextDecorationStyle(_ value: TextDecorationStyleValue = .solid)
    -> Property
{
    TextDecorationStyle(value.rawValue)
}
