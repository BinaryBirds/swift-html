//
//  AnimationName.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AnimationNameValue: ExpressibleByStringLiteral {

    /// Specifies the name of the keyframe you want to bind to the selector
    case keyframename(String)
    /// Default value. Specifies that there will be no animation (can be used to override animations coming from the cascade)
    case none
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    public init(stringLiteral value: StringLiteralType) {
        self = .keyframename(value)
    }

    var rawValue: String {
        switch self {
        case .keyframename(let value):
            return value
        case .none:
            return "none"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct AnimationName: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "animation-name" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AnimationName {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AnimationName {

    /// Specifies a name for the @keyframes animation
    public init(_ value: AnimationNameValue = .none) {
        self.init(value.rawValue)
    }
}
