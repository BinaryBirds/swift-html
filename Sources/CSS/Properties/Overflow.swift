//
//  Overflow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OverflowValue: String {
    /// The overflow is not clipped. It renders outside the element's box. This is default
    case visible
    /// The overflow is clipped, and the rest of the content will be invisible
    case hidden
    /// The overflow is clipped, but a scroll-bar is added to see the rest of the content
    case scroll
    /// If overflow is clipped, a scroll-bar should be added to see the rest of the content
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func Overflow(_ value: String) -> Property {
    Property(name: "overflow", value: value)
}

/// Specifies what happens if content overflows an element's box
public func Overflow(_ value: OverflowValue = .visible) -> Property {
    Overflow(value.rawValue)
}
