//
//  FontFamily.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontFamilyValue {
    /// A prioritized list of font family names and/or generic family names
    case family(String)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .family(let value):
            return value
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct FontFamily: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-family" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontFamily {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontFamily {

    /// Specifies the font family for text
    public init(_ value: FontFamilyValue) {
        self.init(value.rawValue)
    }
}
