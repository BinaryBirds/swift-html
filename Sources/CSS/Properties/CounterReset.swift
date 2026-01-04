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

/// Creates or resets one or more CSS counters
public struct CounterReset: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "counter-reset" }

    public init(_ value: CounterResetValue = .none, isImportant: Bool = false) {
        self.value = value.rawValue
        self.isImportant = isImportant
    }
}
