//
//  FontVariantEastAsian.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantEastAsianValue: String {
    case normal
    case ruby
    case jis78
    case jis83
    case jis90
    case jis04
    case simplified
    case traditional
    case fullWidth = "full-width"
    case proportionalWidth = "proportional-width"
    case rubyFullWidthJis83 = "ruby full-width jis83"
    case inherit
    case initial
    case revert
    case unset
}

public func FontVariantEastAsian(_ value: String) -> Property {
    Property(name: "font-variant-east-asian", value: value)
}

/// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
public func FontVariantEastAsian(_ value: FontVariantEastAsianValue = .normal)
    -> Property
{
    FontVariantEastAsian(value.rawValue)
}
