//
//  Transition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TransitionValue {
    /// transition-property    Specifies the name of the CSS property the transition effect is for
    /// transition-duration    Specifies how many seconds or milliseconds the transition effect takes to complete
    /// transition-timing-function    Specifies the speed curve of the transition effect
    /// transition-delay    Defines when the transition effect will start
    case values(
        TransitionPropertyValue,
        TransitionDurationValue,
        TransitionTimingFunctionValue,
        TransitionDelayValue
    )
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let property, let duration, let timingFunction, let delay):
            return [
                property.rawValue, duration.rawValue, timingFunction.rawValue,
                delay.rawValue,
            ]
            .joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Transition(_ value: String) -> Property {
    Property(name: "transition", value: value)
}

/// A shorthand property for all the transition-* properties
public func Transition(_ value: TransitionValue) -> Property {
    Transform(value.rawValue)
}
