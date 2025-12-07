//
//  OutlineWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OutlineWidthValue {
    /// Specifies a medium outline. This is default
    case medium
    /// Specifies a thin outline
    case thin
    /// Specifies a thick outline
    case thick
    /// Allows you to define the thickness of the outline. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .medium:
            return "medium"
        case .thin:
            return "thin"
        case .thick:
            return "thick"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func OutlineWidth(_ value: String) -> Property {
    Property(name: "outline-width", value: value)
}

/// Sets the width of an outline
public func OutlineWidth(_ value: OutlineWidthValue = .medium) -> Property {
    OutlineWidth(value.rawValue)
}
