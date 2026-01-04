//
//  FontSizeAdjust.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontSizeAdjustValue {
    /// Defines the aspect value to use
    case number(Double)
    /// Default value. No font size adjustment
    case none
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .number(let value):
            return String(value)
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct FontSizeAdjust: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-size-adjust" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontSizeAdjust {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontSizeAdjust {

    /// Preserves the readability of text when font fallback occurs
    public init(_ value: FontSizeAdjustValue = .none) {
        self.init(value.rawValue)
    }
}
