//
//  CounterIncrement.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum CounterIncrementValue {
    /// Default value. No counters will be incremented
    case none
    /// The id defines which counter to increment.
    /// The number sets how much the counter will increment on each occurrence of the selector.
    /// The default increment is 1.
    /// Negative values are allowed.
    /// If id refers to a counter that has not been initialized by counter-reset, the default initial value is 0
    case id(Int)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .id(let value):
            return String(value)
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func CounterIncrement(_ value: String) -> Property {
    Property(name: "counter-increment", value: value)
}

/// Increases or decreases the value of one or more CSS counters
public func CounterIncrement(
    _ name: String,
    _ value: CounterIncrementValue = .none
) -> Property {
    CounterIncrement(name + " " + value.rawValue)
}
