//
//  Float.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FloatValue: String {
    /// The element does not float, (will be displayed just where it occurs in the text). This is default
    case none
    /// The element floats to the left of its container
    case left
    /// The element floats the right of its container
    case right
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func Float(_ value: String) -> Property {
    Property(name: "float", value: value)
}

/// Specifies whether an element should float to the left, right, or not at all
public func Float(_ value: FloatValue = .none) -> Property {
    Float(value.rawValue)
}
