//
//  Flex.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexValue {
    case values(FlexGrowValue, FlexShrinkValue, FlexBasisValue)
    /// Same as 1 1 auto.
    case auto
    /// Same as 0 0 auto.
    case none
    /// Same as 0 1 auto. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let grow, let shrink, let basis):
            return [grow.rawValue, shrink.rawValue, basis.rawValue]
                .joined(separator: " ")
        case .auto:
            return "auto"
        case .none:
            return "none"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Flex(_ value: String) -> Property {
    Property(name: "flex", value: value)
}

/// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
public func Flex(_ value: FlexValue) -> Property {
    Flex(value.rawValue)
}

/// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
public func Flex(
    _ grow: FlexGrowValue,
    _ shrink: FlexShrinkValue,
    _ basis: FlexBasisValue
) -> Property {
    Flex(.values(grow, shrink, basis))
}
