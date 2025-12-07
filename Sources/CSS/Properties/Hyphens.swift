//
//  Hyphens.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum HyphensValue: String {
    /// Words are not hyphenated
    case none
    /// Default. Words are only hyphenated at &hyphen; or &shy; (if needed)
    case manual
    /// Words are hyphenated where the algorithm is deciding (if needed)
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func Hyphens(_ value: String) -> Property {
    Property(name: "hyphens", value: value)
}

/// Sets how to split words to improve the layout of paragraphs
public func Hyphens(_ value: HyphensValue = .manual) -> Property {
    Hyphens(value.rawValue)
}
