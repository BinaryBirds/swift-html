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

public struct FontVariantEastAsian: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-variant-east-asian" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontVariantEastAsian {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontVariantEastAsian {

    /// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    public init(_ value: FontVariantEastAsianValue = .normal) {
        self.init(value.rawValue)
    }
}
