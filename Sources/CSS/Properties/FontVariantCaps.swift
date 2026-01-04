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

public struct FontVariantCaps: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-variant-caps" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontVariantCaps {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontVariantCaps {

    /// Controls the usage of alternate glyphs for capital letters
    public init(_ value: FontVariantCapsValue = .normal) {
        self.init(value.rawValue)
    }
}
