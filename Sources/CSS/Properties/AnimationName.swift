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

public func AnimationName(_ value: String) -> Property {
    Property(name: "animation-name", value: value)
}

/// Specifies a name for the @keyframes animation
public func AnimationName(_ value: AnimationNameValue = .none) -> Property {
    AnimationName(value.rawValue)
}
