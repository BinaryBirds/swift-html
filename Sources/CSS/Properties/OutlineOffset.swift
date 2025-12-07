//
//  OutlineOffset.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OutlineOffsetValue {
    /// The distance the outline is outset from the border edge. Default value is 0
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func OutlineOffset(_ value: String) -> Property {
    Property(name: "outline-offset", value: value)
}

/// Offsets an outline, and draws it beyond the border edge
public func OutlineOffset(_ value: OutlineOffsetValue = .length(.zero))
    -> Property
{
    OutlineOffset(value.rawValue)
}

/// Offsets an outline, and draws it beyond the border edge
public func OutlineOffset(_ value: Unit = .zero) -> Property {
    OutlineOffset(.length(value))
}
