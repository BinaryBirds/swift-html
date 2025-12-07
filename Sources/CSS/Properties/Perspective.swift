//
//  Perspective.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum PerspectiveValue {
    /// How far the element is placed from the view
    case length(Unit)
    /// Default value. Same as 0. The perspective is not set
    case none
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Perspective(_ value: String) -> Property {
    Property(name: "perspective", value: value)
}

/// Gives a 3D-positioned element some perspective
public func Perspective(_ value: PerspectiveValue = .none) -> Property {
    Perspective(value.rawValue)
}

/// Gives a 3D-positioned element some perspective
public func Perspective(_ value: Unit = .zero) -> Property {
    Perspective(.length(value))
}
