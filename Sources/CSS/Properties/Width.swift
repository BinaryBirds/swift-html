//
//  Width.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WidthValue {
    /// Default value. The browser calculates the width
    case auto
    /// Defines the width in px, cm, etc. Read about length units
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

public struct Width: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Width {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Width {

    /// Sets the width of an element
    public init(_ value: WidthValue = .auto) {
        self.init(value.rawValue)
    }

    /// Sets the width of an element
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
