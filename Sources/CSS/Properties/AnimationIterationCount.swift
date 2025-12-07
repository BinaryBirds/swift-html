//
//  AnimationIterationCount.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AnimationIterationCountValue: ExpressibleByIntegerLiteral {

    /// A number that defines how many times an animation should be played. Default value is 1
    case number(Int)
    /// Specifies that the animation should be played infinite times (for ever)
    case infinite
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    public init(integerLiteral value: IntegerLiteralType) {
        self = .number(value)
    }

    var rawValue: String {
        switch self {
        case .number(let value):
            return String(value)
        case .infinite:
            return "infinite"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func AnimationIterationCount(_ value: String) -> Property {
    Property(name: "animation-iteration-count", value: value)
}

/// Specifies the number of times an animation should be played
public func AnimationIterationCount(_ value: AnimationIterationCountValue = 1)
    -> Property
{
    AnimationIterationCount(value.rawValue)
}
