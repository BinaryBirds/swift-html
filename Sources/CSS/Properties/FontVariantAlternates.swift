//
//  FontVariantAlternates.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantAlternatesValue {
    case normal
    case stylistic(String)
    case historicalForms
    case styleset(String)
    case characterVariant(String)
    case swash(String)
    case cswh(String)
    case ornaments(String)
    case annotation(String)
    case initial
    case inherit
    case unset

    var rawValue: String {
        switch self {
        case .normal:
            return "normal"
        case .stylistic(let value):
            return "salt \(value)"
        case .historicalForms:
            return "hist"
        case .styleset(let value):
            return "ss\(value)"
        case .characterVariant(let value):
            return "cv\(value)"
        case .swash(let value):
            return "swsh \(value)"
        case .cswh(let value):
            return "cswh \(value)"
        case .ornaments(let value):
            return "ornm \(value)"
        case .annotation(let value):
            return "nalt \(value)"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        case .unset:
            return "unset"
        }
    }
}

public func FontVariantAlternates(_ value: String) -> Property {
    Property(name: "font-variant-alternates", value: value)
}

/// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
public func FontVariantAlternates(_ value: FontVariantAlternatesValue = .normal)
    -> Property
{
    FontVariantAlternates(value.rawValue)
}
