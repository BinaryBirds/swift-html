//
//  TransitionDelay.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TransitionDelayValue {
    case zero
    /// Specifies the number of seconds to wait before the transition effect will start
    case seconds(Double)
    /// Specifies the number of milliseconds to wait before the transition effect will start
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

public func TransitionDelay(_ value: String) -> Property {
    Property(name: "transition-delay", value: value)
}

/// Specifies when the transition effect will start
public func TransitionDelay(_ value: TransitionDelayValue = .zero) -> Property {
    TransitionDelay(value.rawValue)
}
