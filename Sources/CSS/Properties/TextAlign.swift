//
//  TextAlign.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextAlignValue: String {
    /// Aligns the text to the left    Play it »
    case left
    /// Aligns the text to the right    Play it »
    case right
    /// Centers the text    Play it »
    case center
    /// Stretches the lines so that each line has equal width (like in newspapers and magazines)    Play it »
    case justify
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public func TextAlign(_ value: String) -> Property {
    Property(name: "text-align", value: value)
}

/// Specifies the horizontal alignment of text
public func TextAlign(_ value: TextAlignValue) -> Property {
    TextAlign(value.rawValue)
}
