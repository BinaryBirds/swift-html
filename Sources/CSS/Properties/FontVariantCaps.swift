//
//  FontVariantCaps.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantCapsValue: String {
    /// Deactivates the use of alternate glyphs
    case normal
    /// Displays small capitals
    case smallCaps = "small-caps"
    /// Displays small capitals for both upper and lowercase letters
    case allSmallCaps = "all-small-caps"
    /// Displays petite capitals
    case petiteCaps = "petite-caps"
    /// Displays petite capitals for both upper and lowercase letters
    case allPetiteCaps = "all-petite-caps"
    /// Displays a mix of small capitals for uppercase letters with normal lowercase letters
    case unicase
    /// Displays titling capitals
    case titlingCaps = "titling-caps"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
    /// unset
    case unset
}

public func FontVariantCaps(_ value: String) -> Property {
    Property(name: "font-variant-caps", value: value)
}

/// Controls the usage of alternate glyphs for capital letters
public func FontVariantCaps(_ value: FontVariantCapsValue = .normal) -> Property
{
    FontVariantCaps(value.rawValue)
}
