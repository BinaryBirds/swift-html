//
//  ColumnCount.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnCountValue: ExpressibleByIntegerLiteral {

    /// The optimal number of columns into which the content of the element will be flowed
    case number(Int)
    /// Default value. The number of columns will be determined by other properties, like e.g. "column-width"
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    public init(integerLiteral value: IntegerLiteralType) {
        self = .number(value)
    }

    var rawValue: String {
        switch self {
        case .number(let value):
            return "\(value)"
        case .auto:
            return "auto"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func ColumnCount(_ value: String) -> Property {
    Property(name: "column-count", value: value)
}

/// Specifies the number of columns an element should be divided into
public func ColumnCount(_ value: ColumnCountValue = .auto) -> Property {
    ColumnCount(value.rawValue)
}
