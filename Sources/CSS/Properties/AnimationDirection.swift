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

public func AnimationDirection(_ value: String) -> Property {
    Property(name: "animation-direction", value: value)
}

/// Specifies whether an animation should be played forwards, backwards or in alternate cycles
public func AnimationDirection(_ value: AnimationDirectionValue = .normal)
    -> Property
{
    AnimationDirection(value.rawValue)
}
