//
//  MinWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MinWidthValue {
    /// Default value is 0. Defines the minimum width in px, cm, etc. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct MinWidth: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "min-width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> MinWidth {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension MinWidth {

    /// Sets the minimum width of an element
    public init(_ value: MinWidthValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    /// Sets the minimum width of an element
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
