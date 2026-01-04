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

public struct ColumnCount: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "column-count" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ColumnCount {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ColumnCount {

    /// Specifies the number of columns an element should be divided into
    public init(_ value: ColumnCountValue = .auto) {
        self.init(value.rawValue)
    }
}
