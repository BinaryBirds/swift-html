//
//  BackgroundImage.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackgroundImageValue {
    /// The URL to the image. To specify more than one image, separate the URLs with a comma
    case url(String)
    /// No background image will be displayed. This is default
    case none
    // @TODO: add gradient support
    //    case linear-gradient()    Sets a linear gradient as the background image. Define at least two colors (top to bottom)
    //    case radial-gradient()    Sets a radial gradient as the background image. Define at least two colors (center to edges)
    //    case repeating-linear-gradient()    Repeats a linear gradient
    //    case repeating-radial-gradient()    Repeats a radial gradient
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .url(let value):
            return "url('\(value)')"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func BackgroundImage(_ value: String) -> Property {
    Property(name: "background-image", value: value)
}

/// Specifies one or more background images for an element
public func BackgroundImage(_ value: BackgroundImageValue) -> Property {
    BackgroundImage(value.rawValue)
}
