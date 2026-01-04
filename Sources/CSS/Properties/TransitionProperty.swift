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

public struct TransitionProperty: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "transition-property" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TransitionProperty {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TransitionProperty {

    /// Specifies the name of the CSS property the transition effect is for
    public init(_ value: TransitionPropertyValue = .all) {
        self.init(value.rawValue)
    }

    public init(_ value: [String]) {
        self.init(.properties(value))
    }
}
