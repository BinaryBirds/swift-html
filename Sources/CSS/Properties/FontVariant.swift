//
//  FontVariant.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantValue: String {
    /// The browser displays a normal font. This is default
    case normal
    /// The browser displays a small-caps font
    case smallCaps = "small-caps"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct FontVariant: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-variant" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontVariant {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontVariant {

    /// Specifies whether or not a text should be displayed in a small-caps font
    public init(_ value: FontVariantValue = .normal) {
        self.init(value.rawValue)
    }
}
