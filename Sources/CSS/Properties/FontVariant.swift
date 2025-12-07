//
//  FontVariant.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantValue: String {
    /// The browser displays a normal font. This is default
    case normal
    /// The browser displays a small-caps font
    case smallCaps = "small-caps"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func FontVariant(_ value: String) -> Property {
    Property(name: "font-variant", value: value)
}

/// Specifies whether or not a text should be displayed in a small-caps font
public func FontVariant(_ value: FontVariantValue = .normal) -> Property {
    FontVariant(value.rawValue)
}
