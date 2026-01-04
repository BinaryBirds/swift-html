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

public struct BorderRadius: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-radius" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderRadius {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderRadius {

    /// A shorthand property for the four border-*-radius properties
    public init(_ value: BorderRadiusValue) {
        self.init(value.rawValue)
    }

    // @TODO: better API for all value cases
    // https://www.w3schools.com/cssref/css3_pr_border-radius.asp
}
