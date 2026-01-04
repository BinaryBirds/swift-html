//
//  FontStretch.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontStretchValue: String {
    /// Makes the text as narrow as it gets
    case ultraCondensed = "ultra-condensed"
    /// Makes the text narrower than condensed, but not as narrow as ultra-condensed
    case extraCondensed = "extra-condensed"
    /// Makes the text narrower than semi-condensed, but not as narrow as extra-condensed
    case condensed
    /// Makes the text narrower than normal, but not as narrow as condensed
    case semiCondensed = "semi-condensed"
    /// Default value. No font stretching
    case normal
    /// Makes the text wider than normal, but not as wide as expanded
    case semiExpanded = "semi-expanded"
    /// Makes the text wider than semi-expanded, but not as wide as extra-expanded
    case expanded
    /// Makes the text wider than expanded, but not as wide as ultra-expanded
    case extraExpanded = "extra-expanded"
    /// Makes the text as wide as it gets
    case ultraExpanded = "ultra-expanded"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct FontStretch: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-stretch" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontStretch {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontStretch {

    /// Selects a normal, condensed, or expanded face from a font family
    public init(_ value: FontStretchValue = .normal) {
        self.init(value.rawValue)
    }
}
