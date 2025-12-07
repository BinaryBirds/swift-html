//
//  BackgroundOrigin.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackgroundOriginValue: String {
    /// Default value. The background image starts from the upper left corner of the padding edge
    case paddingBox = "padding-box"
    /// The background image starts from the upper left corner of the border
    case borderBox = "border-box"
    /// The background image starts from the upper left corner of the content
    case contentBox = "content-box"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func BackgroundOrigin(_ value: String) -> Property {
    Property(name: "background-origin", value: value)
}

/// Specifies the origin position of a background image
public func BackgroundOrigin(_ value: BackgroundOriginValue = .paddingBox)
    -> Property
{
    BackgroundOrigin(value.rawValue)
}
