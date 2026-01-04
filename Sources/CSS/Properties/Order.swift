//
//  Order.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OrderValue {
    /// Default value 0. Specifies the order for the flexible item
    case number(Int)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .number(let value):
            return String(value)
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Order: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "order" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Order {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Order {

    /// Sets the order of the flexible item, relative to the rest
    public init(_ value: OrderValue = .number(1)) {
        self.init(value.rawValue)
    }

    /// Sets the order of the flexible item, relative to the rest
    public init(_ value: Int = 1) {
        self.init(.number(1))
    }
}
