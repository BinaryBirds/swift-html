//
//  BorderImageSource.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderImageSourceValue {
    /// No image will be used
    case none
    /// The path to the image to be used as a border
    case image(String)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .image(let value):
            return "url('\(value)')"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func BorderImageSource(_ value: String) -> Property {
    Property(name: "border-image-source", value: value)
}

/// Specifies the path to the image to be used as a border
public func BorderImageSource(_ value: BorderImageSourceValue) -> Property {
    BorderImageSource(value.rawValue)
}
