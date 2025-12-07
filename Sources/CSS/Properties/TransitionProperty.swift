//
//  TransitionProperty.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TransitionPropertyValue {
    /// No property will get a transition effect
    case none
    /// Default value. All properties will get a transition effect
    case all
    /// Defines a comma separated list of CSS property names the transition effect is for
    case properties([String])
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .all:
            return "all"
        case .properties(let value):
            return value.joined(separator: ",")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func TransitionProperty(_ value: String) -> Property {
    Property(name: "transition-property", value: value)
}

/// Specifies the name of the CSS property the transition effect is for
public func TransitionProperty(_ value: TransitionPropertyValue = .all)
    -> Property
{
    TransitionProperty(value.rawValue)
}

public func TransitionProperty(_ value: [String]) -> Property {
    TransitionProperty(.properties(value))
}
