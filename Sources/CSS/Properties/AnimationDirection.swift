//
//  AnimationDirection.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AnimationDirectionValue: String {
    /// Default value. The animation is played as normal (forwards)
    case normal
    /// The animation is played in reverse direction (backwards)
    case reverse
    /// The animation is played forwards first, then backwards
    case alternate
    /// The animation is played backwards first, then forwards
    case alternateReverse = "alternate-reverse"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct AnimationDirection: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "animation-direction" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AnimationDirection {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AnimationDirection {

    /// Specifies whether an animation should be played forwards, backwards or in alternate cycles
    public init(_ value: AnimationDirectionValue = .normal) {
        self.init(value.rawValue)
    }
}
