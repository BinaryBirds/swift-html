//
//  CounterReset.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum CounterResetValue {
    /// Default value. No counters will be reset
    case none
    /// The id defines which counter to reset.
    /// The number sets the value the counter is reset to on each occurrence of the selector.
    /// The default number value is 0
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

public func CounterReset(_ value: String) -> Property {
    Property(name: "counter-reset", value: value)
}

/// Creates or resets one or more CSS counters
public func CounterReset(_ name: String, _ value: CounterResetValue = .none)
    -> Property
{
    CounterReset(name + " " + value.rawValue)
}
