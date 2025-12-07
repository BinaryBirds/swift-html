//
//  FontStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontStyleValue: String {
    /// The browser displays a normal font style. This is default
    case normal
    /// The browser displays an italic font style
    case italic
    /// The browser displays an oblique font style
    case oblique
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func FontStyle(_ value: String) -> Property {
    Property(name: "font-style", value: value)
}

/// Specifies the font style for text
public func FontStyle(_ value: FontStyleValue = .normal) -> Property {
    FontStyle(value.rawValue)
}
