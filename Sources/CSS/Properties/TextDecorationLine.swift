//
//  TextDecorationLine.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextDecorationLineValue: String {
    /// Default value. Specifies no line for the text-decoration    Play it »
    case none
    /// Specifies that a line will be displayed under the text    Play it »
    case underline
    /// Specifies that a line will be displayed over the text    Play it »
    case overline
    /// Specifies that a line will be displayed through the text    Play it »
    case lineThrough = "line-through"
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public func TextDecorationLine(_ value: String) -> Property {
    Property(name: "text-decoration-line", value: value)
}

/// Specifies the type of line in a text-decoration
public func TextDecorationLine(_ value: TextDecorationLineValue = .none)
    -> Property
{
    TextDecorationLine(value.rawValue)
}
