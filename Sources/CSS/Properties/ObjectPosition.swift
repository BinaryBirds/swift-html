//
//  ObjectPosition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ObjectPositionValue {

    /// Specifies the position of the image or video inside its content box.
    /// First value controls the x-axis and the second value controls the y-axis.
    /// Can be a string (left, center or right), or a number (in px or %).
    /// Negative values are allowed
    case position(Unit, Unit?)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .position(let x, let y):
            return "\(x.rawValue) \(y?.rawValue ?? "50%")"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func ObjectPosition(_ value: String) -> Property {
    Property(name: "object-position", value: value)
}

/// Specifies the alignment of the replaced element inside its box
public func ObjectPosition(
    _ value: ObjectPositionValue = .position(.percent(50), .percent(50))
) -> Property {
    ObjectPosition(value.rawValue)
}
