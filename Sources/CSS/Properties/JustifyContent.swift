//
//  JustifyContent.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum JustifyContentValue: String {
    /// Default value. Items are positioned at the beginning of the container
    case flexStart = "flex-start"
    /// Items are positioned at the end of the container
    case flexEnd = "flex-end"
    /// Items are positioned in the center of the container
    case center
    /// Items will have space between them
    case spaceBetween = "space-between"
    /// Items will have space before, between, and after them
    case spaceAround = "space-around"
    /// Items will have equal space around them
    case spaceEvenly = "space-evenly"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func JustifyContent(_ value: String) -> Property {
    Property(name: "justify-content", value: value)
}

/// Specifies the alignment between the items inside a flexible container when the items do not use all available space
public func JustifyContent(_ value: JustifyContentValue = .flexStart)
    -> Property
{
    JustifyContent(value.rawValue)
}
