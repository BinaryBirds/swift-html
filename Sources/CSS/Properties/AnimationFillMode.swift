//
//  AnimationFillMode.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AnimationFillModeValue: String {
    /// Default value. Animation will not apply any styles to the element before or after it is executing
    case none
    /// The element will retain the style values that is set by the last keyframe (depends on animation-direction and animation-iteration-count)
    case forwards
    /// The element will get the style values that is set by the first keyframe (depends on animation-direction), and retain this during the animation-delay period
    case backwards
    /// The animation will follow the rules for both forwards and backwards, extending the animation properties in both directions
    case both
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func AnimationFillMode(_ value: String) -> Property {
    Property(name: "animation-fill-mode", value: value)
}

/// Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
public func AnimationFillMode(_ value: AnimationFillModeValue = .none)
    -> Property
{
    AnimationFillMode(value.rawValue)
}
