//
//  MaxHeight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MaxHeightValue {
    /// No maximum height. This is default
    case none
    /// Defines the maximum height in px, cm, etc. Read about length units
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

public struct MaxHeight: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "max-height" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> MaxHeight {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension MaxHeight {

    /// Sets the maximum height of an element
    public init(_ value: MaxHeightValue = .none) {
        self.init(value.rawValue)
    }

    /// Sets the maximum height of an element
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
