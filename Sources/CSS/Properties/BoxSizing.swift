//
//  BoxSizing.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BoxSizingValue: String {
    /// Default. The width and height properties (and min/max properties) includes only the content. Border and padding are not included
    case contentBox = "content-box"
    /// The width and height properties (and min/max properties) includes content, padding and border
    case borderBox = "border-box"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func BoxSizing(_ value: String) -> Property {
    Property(name: "box-sizing", value: value)
}

/// Defines how the width and height of an element are calculated: should they include padding and borders, or not
public func BoxSizing(_ value: BoxSizingValue = .contentBox) -> Property {
    BoxSizing(value.rawValue)
}
