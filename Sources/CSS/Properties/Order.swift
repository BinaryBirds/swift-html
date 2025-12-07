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

public func Order(_ value: String) -> Property {
    Property(name: "order", value: value)
}

/// Sets the order of the flexible item, relative to the rest
public func Order(_ value: OrderValue = .number(1)) -> Property {
    Order(value.rawValue)
}

/// Sets the order of the flexible item, relative to the rest
public func Order(_ value: Int = 1) -> Property {
    Order(.number(1))
}
