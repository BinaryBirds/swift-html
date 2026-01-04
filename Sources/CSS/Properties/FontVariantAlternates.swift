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

public struct FontVariantAlternates: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-variant-alternates" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontVariantAlternates {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontVariantAlternates {

    /// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    public init(_ value: FontVariantAlternatesValue = .normal) {
        self.init(value.rawValue)
    }
}
