//
//  CaptionSide.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum CaptionSideValue: String {
    /// Puts the caption above the table. This is default
    case top
    /// Puts the caption below the table
    case bottom
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func CaptionSide(_ value: String) -> Property {
    Property(name: "caption-side", value: value)
}

/// Specifies the placement of a table caption
public func CaptionSide(_ value: CaptionSideValue) -> Property {
    CaptionSide(value.rawValue)
}
