//
//  AnimationDuration.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// Specifies the length of time an animation should take to complete one cycle.
/// This can be specified in seconds or milliseconds.
/// Default value is 0, which means that no animation will occur
public enum AnimationDurationValue {
    /// 0
    case zero
    /// s
    case seconds(Double)
    /// ms
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

public func AnimationDuration(_ value: String) -> Property {
    Property(name: "animation-duration", value: value)
}

/// Specifies how long an animation should take to complete one cycle
public func AnimationDuration(_ value: AnimationDurationValue = .zero)
    -> Property
{
    AnimationDuration(value.rawValue)
}
