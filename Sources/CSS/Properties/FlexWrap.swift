//
//  FlexWrap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexWrapValue: String {
    /// Default value. Specifies that the flexible items will not wrap
    case nowrap
    /// Specifies that the flexible items will wrap if necessary
    case wrap
    /// Specifies that the flexible items will wrap, if necessary, in reverse order
    case wrapReverse = "wrap-reverse"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func FlexWrap(_ value: String) -> Property {
    Property(name: "flex-wrap", value: value)
}

/// Specifies whether the flexible items should wrap or not
public func FlexWrap(_ value: FlexWrapValue = .nowrap) -> Property {
    FlexWrap(value.rawValue)
}
