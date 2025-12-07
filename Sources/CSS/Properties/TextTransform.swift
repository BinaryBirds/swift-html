//
//  TextTransform.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextTransformValue: String {
    /// No capitalization. The text renders as it is. This is default    Play it »
    case none
    /// Transforms the first character of each word to uppercase    Play it »
    case capitalize
    /// Transforms all characters to uppercase    Play it »
    case uppercase
    /// Transforms all characters to lowercase    Play it »
    case lowercase
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public func TextTransform(_ value: String) -> Property {
    Property(name: "text-transform", value: value)
}

/// Controls the capitalization of text
public func TextTransform(_ value: TextTransformValue) -> Property {
    TextTransform(value.rawValue)
}
