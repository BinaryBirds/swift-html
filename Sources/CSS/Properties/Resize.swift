//
//  Resize.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ResizeValue: String {
    /// Default value. The user cannot resize the element
    case none
    /// The user can resize both the height and width of the element
    case both
    /// The user can resize the width of the element
    case horizontal
    /// The user can resize the height of the element
    case vertical
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func Resize(_ value: String) -> Property {
    Property(name: "resize", value: value)
}

/// Defines if (and how) an element is resizable by the user
public func Resize(_ value: ResizeValue = .none) -> Property {
    Resize(value.rawValue)
}
