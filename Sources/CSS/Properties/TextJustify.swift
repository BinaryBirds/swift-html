//
//  TextJustify.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextJustifyValue: String {
    /// The browser determines the justification algorithm    Play it »
    case auto
    /// Increases/Decreases the space between words    Play it »
    case interWord = "inter-word"
    /// Increases/Decreases the space between characters    Play it »
    case interCharacter = "inter-character"
    /// Disables justification methods    Play it »
    case none
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public func TextJustify(_ value: String) -> Property {
    Property(name: "text-justify", value: value)
}

/// Specifies the justification method used when text-align is "justify"
public func TextJustify(_ value: TextJustifyValue = .auto) -> Property {
    TextJustify(value.rawValue)
}
