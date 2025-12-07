//
//  BackfaceVisibility.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackfaceVisibilityValue: String {
    /// Default value. The backside is visible
    case visible
    /// The backside is not visible
    case hidden
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func BackfaceVisibility(_ value: String) -> Property {
    Property(name: "backface-visibility", value: value)
}

/// Defines whether or not the back face of an element should be visible when facing the user
public func BackfaceVisibility(_ value: BackfaceVisibilityValue = .visible)
    -> Property
{
    BackfaceVisibility(value.rawValue)
}
