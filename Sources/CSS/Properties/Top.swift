//
//  Top.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TopValue {
    /// Lets the browser calculate the top edge position. This is default
    case auto
    /// Sets the bottom edge position in px, cm, etc. Negative values are allowed. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Top: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "top" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Top {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Top {

    /// Specifies the top position of a positioned element
    public init(_ value: TopValue = .auto) {
        self.init(value.rawValue)
    }

    /// Specifies the top position of a positioned element
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
