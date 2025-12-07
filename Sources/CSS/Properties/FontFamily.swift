//
//  FontFamily.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontFamilyValue {
    /// A prioritized list of font family names and/or generic family names
    case family(String)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .family(let value):
            return value
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func FontFamily(_ value: String) -> Property {
    Property(name: "font-family", value: value)
}

/// Specifies the font family for text
public func FontFamily(_ value: FontFamilyValue) -> Property {
    FontFamily(value.rawValue)
}
