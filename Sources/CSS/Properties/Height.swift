//
//  Height.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum HeightValue {
    /// The browser calculates the height. This is default
    case auto
    /// Defines the height in px, cm, etc.
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

public struct Height: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "height" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Height {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Height {

    /// Sets the height of an element
    public init(_ value: HeightValue = .auto) {
        self.init(value.rawValue)
    }

    /// Sets the height of an element
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
