//
//  FontVariantPosition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantpositionValue: String {
    case normal
    case sub
    case `super`
    case inherit
    case initial
    case revert
    case unset
}

public func FontVariantPosition(_ value: String) -> Property {
    Property(name: "font-variant-position", value: value)
}

/// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
public func FontVariantPosition(_ value: FontVariantpositionValue = .normal)
    -> Property
{
    FontVariantPosition(value.rawValue)
}
