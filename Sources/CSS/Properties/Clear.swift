//
//  Clear.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ClearValue: String {
    /// Default. The element is not pushed below left or right floated elements
    case none
    /// The element is pushed below left floated elements
    case left
    /// The element is pushed below right floated elements
    case right
    /// The element is pushed below both left and right floated elements
    case both
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func Clear(_ value: String) -> Property {
    Property(name: "clear", value: value)
}

/// Specifies what should happen with the element that is next to a floating element
public func Clear(_ value: ClearValue) -> Property {
    Clear(value.rawValue)
}
