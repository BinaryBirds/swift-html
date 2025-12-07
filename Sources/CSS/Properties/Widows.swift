//
//  Widows.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WidowsValue {
    /// An integer that specifies the minimum number of visible lines. Negative values are not allowed. The default value is 2
    case number(Int)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .number(let value):
            return String(value)
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Widows(_ value: String) -> Property {
    Property(name: "widows", value: value)
}

/// Sets the minimum number of lines that must be left at the top of a page when a page break occurs inside an element
public func Widows(_ value: WidowsValue = .number(2)) -> Property {
    Widows(value.rawValue)
}
