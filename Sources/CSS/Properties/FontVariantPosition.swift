//
//  FontVariantPosition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantpositionValue: String {
    case normal
    case sub
    case `super`
    case inherit
    case initial
    case revert
    case unset
}

public struct FontVariantPosition: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-variant-position" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontVariantPosition {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontVariantPosition {

    /// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    public init(_ value: FontVariantpositionValue = .normal) {
        self.init(value.rawValue)
    }
}
