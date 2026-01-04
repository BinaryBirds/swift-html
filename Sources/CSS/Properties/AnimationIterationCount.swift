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

public struct AnimationIterationCount: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "animation-iteration-count" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AnimationIterationCount {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AnimationIterationCount {

    /// Specifies the number of times an animation should be played
    public init(_ value: AnimationIterationCountValue = 1) {
        self.init(value.rawValue)
    }
}
