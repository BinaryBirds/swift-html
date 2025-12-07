//
//  TransitionDuration.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TransitionDurationValue {
    case zero
    /// Specifies how many seconds a transition effect takes to complete. Default value is 0s, meaning there will be no effect
    case seconds(Double)
    /// Specifies how many milliseconds a transition effect takes to complete. Default value is 0s, meaning there will be no effect
    case milliseconds(Double)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .zero:
            return "0"
        case .seconds(let value):
            guard value != 0 else {
                return "0"
            }
            return "\(value)s"
        case .milliseconds(let value):
            guard value != 0 else {
                return "0"
            }
            return "\(value)ms"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func TransitionDuration(_ value: String) -> Property {
    Property(name: "transition-duration", value: value)
}

/// Specifies how many seconds or milliseconds a transition effect takes to complete
public func TransitionDuration(_ value: TransitionDurationValue = .zero)
    -> Property
{
    TransitionDuration(value.rawValue)
}
