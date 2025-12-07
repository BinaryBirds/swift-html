//
//  BoxDecorationBreak.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BoxDecorationBreakValue: String {
    /// Default. Box decorations are applied to the element as a whole and break at the edges of the element fragments
    case slice
    /// Box decorations apply to each fragment of the element as if the fragments were individual elements. Borders wrap the four edges of each fragment of the element, and backgrounds are redrawn in full for each fragment
    case clone
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func BoxDecorationBreak(_ value: String) -> Property {
    Property(name: "box-decoration-break", value: value)
}

/// Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
public func BoxDecorationBreak(_ value: BoxDecorationBreakValue = .slice)
    -> Property
{
    BoxDecorationBreak(value.rawValue)
}
