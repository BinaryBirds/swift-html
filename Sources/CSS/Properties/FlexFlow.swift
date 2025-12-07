//
//  FlexFlow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexFlowValue {
    case values(FlexDirectionValue, FlexWrapValue)
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let direction, let wrap):
            return [direction.rawValue, wrap.rawValue].joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func FlexFlow(_ value: String) -> Property {
    Property(name: "flex-flow", value: value)
}

/// A shorthand property for the flex-direction and the flex-wrap properties
public func FlexFlow(_ value: FlexFlowValue) -> Property {
    FlexFlow(value.rawValue)
}

/// A shorthand property for the flex-direction and the flex-wrap properties
public func FlexFlow(_ direction: FlexDirectionValue, _ wrap: FlexWrapValue)
    -> Property
{
    FlexFlow(.values(direction, wrap))
}
