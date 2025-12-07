//
//  WordWrap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WordWrapValue: String {
    /// Break words only at allowed break points
    case normal
    /// Allows unbreakable words to be broken
    case breakWord = "break-word"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func WordWrap(_ value: String) -> Property {
    Property(name: "word-wrap", value: value)
}

/// Allows long, unbreakable words to be broken and wrap to the next line
public func WordWrap(_ value: WordWrapValue = .normal) -> Property {
    WordWrap(value.rawValue)
}
