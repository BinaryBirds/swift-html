//
//  ScrollBehavior.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ScrollBehaviorValue: String {
    /// Allows a straight jump "scroll effect" between elements within the scrolling box. This is default
    case auto
    /// Allows a smooth animated "scroll effect" between elements within the scrolling box.
    case smooth
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func ScrollBehavior(_ value: String) -> Property {
    Property(name: "scroll-behavior", value: value)
}

/// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
public func ScrollBehavior(_ value: ScrollBehaviorValue = .auto) -> Property {
    ScrollBehavior(value.rawValue)
}
