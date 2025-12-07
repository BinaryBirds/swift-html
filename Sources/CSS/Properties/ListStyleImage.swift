//
//  ListStyleImage.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ListStyleImageValue {
    /// A normal line height. This is default
    case none
    /// A number that will be multiplied with the current font-size to set the line height
    case url(String)
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

public func ListStyleImage(_ value: String) -> Property {
    Property(name: "list-style-image", value: value)
}

/// Specifies an image as the list-item marker
public func ListStyleImage(_ value: ListStyleImageValue) -> Property {
    ListStyleImage(value.rawValue)
}
