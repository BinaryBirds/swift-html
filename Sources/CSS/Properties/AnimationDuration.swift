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

public struct AnimationDuration: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "animation-duration" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AnimationDuration {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AnimationDuration {

    /// Specifies how long an animation should take to complete one cycle
    public init(_ value: AnimationDurationValue = .zero) {
        self.init(value.rawValue)
    }
}
