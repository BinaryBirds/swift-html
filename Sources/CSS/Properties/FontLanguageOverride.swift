//
//  FontLanguageOverride.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontLanguageOverrideValue {
    case normal
    case value(String)
    case initial
    case inherit
    case unset

    var rawValue: String {
        switch self {
        case .normal:
            return "normal"
        case .value(let value):
            return value
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        case .unset:
            return "unset"
        }
    }
}

public func FontLanguageOverride(_ value: String) -> Property {
    Property(name: "font-language-override", value: value)
}

/// Controls the usage of language-specific glyphs in a typeface
public func FontLanguageOverride(_ value: FontLanguageOverrideValue = .normal)
    -> Property
{
    FontLanguageOverride(value.rawValue)
}
