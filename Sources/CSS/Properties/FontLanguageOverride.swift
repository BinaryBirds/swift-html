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

public struct FontLanguageOverride: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-language-override" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontLanguageOverride {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontLanguageOverride {

    /// Controls the usage of language-specific glyphs in a typeface
    public init(_ value: FontLanguageOverrideValue = .normal) {
        self.init(value.rawValue)
    }
}
