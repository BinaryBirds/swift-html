//
//  Direction.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum DirectionValue: String {
    /// Text direction goes from left-to-right. This is default
    case ltr
    /// Text direction goes from right-to-left
    case rtl
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func Direction(_ value: String) -> Property {
    Property(name: "direction", value: value)
}

/// Specifies the text direction/writing direction
public func Direction(_ value: DirectionValue = .ltr) -> Property {
    Direction(value.rawValue)
}
