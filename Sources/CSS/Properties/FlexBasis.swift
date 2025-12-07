//
//  FlexBasis.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexBasisValue {
    /// Default value. The length is equal to the length of the flexible item. If the item has no length specified, the length will be according to its content
    case auto
    /// A length unit, or percentage, specifying the initial length of the flexible item(s)
    case number(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .number(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func FlexBasis(_ value: String) -> Property {
    Property(name: "flex-basis", value: value)
}

/// Specifies the initial length of a flexible item
public func FlexBasis(_ value: FlexBasisValue = .auto) -> Property {
    FlexBasis(value.rawValue)
}

/// Specifies the initial length of a flexible item
public func FlexBasis(_ value: Unit) -> Property {
    FlexBasis(.number(value))
}
