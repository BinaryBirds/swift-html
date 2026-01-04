//
//  FontStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontStyleValue: String {
    /// The browser displays a normal font style. This is default
    case normal
    /// The browser displays an italic font style
    case italic
    /// The browser displays an oblique font style
    case oblique
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct FontStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontStyle {

    /// Specifies the font style for text
    public init(_ value: FontStyleValue = .normal) {
        self.init(value.rawValue)
    }
}
