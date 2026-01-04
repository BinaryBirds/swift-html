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

public struct TransitionDelay: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "transition-delay" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TransitionDelay {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TransitionDelay {

    /// Specifies when the transition effect will start
    public init(_ value: TransitionDelayValue = .zero) {
        self.init(value.rawValue)
    }
}
