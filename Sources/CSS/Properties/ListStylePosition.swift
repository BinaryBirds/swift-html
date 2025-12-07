//
//  ListStylePosition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ListStylePositionValue: String {
    /// The bullet points will be inside the list item
    case inside
    /// The bullet points will be outside the list item. This is default
    case outside
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func ListStylePosition(_ value: String) -> Property {
    Property(name: "list-style-position", value: value)
}

/// Specifies the position of the list-item markers (bullet points)
public func ListStylePosition(_ value: ListStylePositionValue = .outside)
    -> Property
{
    ListStylePosition(value.rawValue)
}
