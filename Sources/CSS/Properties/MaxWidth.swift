//
//  MaxWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MaxWidthValue {
    /// No maximum width. This is default
    case none
    /// Defines the maximum width in px, cm, etc. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct MaxWidth: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "max-width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> MaxWidth {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension MaxWidth {

    /// Sets the maximum width of an element
    public init(_ value: MaxWidthValue = .none) {
        self.init(value.rawValue)
    }

    /// Sets the maximum width of an element
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
