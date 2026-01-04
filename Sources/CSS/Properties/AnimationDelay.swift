//
//  AnimationDelay.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// Defines the number of seconds (s) or milliseconds (ms) to wait before the animation will start.
/// Default value is 0.
/// Negative values are allowed.
/// If you use negative values, the animation will start as if it had already been playing for N seconds/milliseconds.
public enum AnimationDelayValue {
    case zero
    case seconds(Double)
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

public struct AnimationDelay: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "animation-delay" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AnimationDelay {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AnimationDelay {

    /// Specifies a delay for the start of an animation
    public init(_ value: AnimationDelayValue = .zero) {
        self.init(value.rawValue)
    }
}
