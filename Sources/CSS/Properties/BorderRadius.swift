//
//  BorderRadius.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderRadiusValue {
    /// Defines the shape of the corners. Default value is 0. Read about length units
    case length(Unit, Unit?, Unit?, Unit?)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let a, let b, let c, let d):
            return [
                a.rawValue,
                b?.rawValue,
                c?.rawValue,
                d?.rawValue,
            ]
            .compactMap { $0 }.joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func BorderRadius(_ value: String) -> Property {
    Property(name: "border-radius", value: value)
}

/// A shorthand property for the four border-*-radius properties
public func BorderRadius(_ value: BorderRadiusValue) -> Property {
    BorderRadius(value.rawValue)
}

// @TODO: better API for all value cases
// https://www.w3schools.com/cssref/css3_pr_border-radius.asp
