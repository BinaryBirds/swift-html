//
//  ColumnGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnGapValue {

    /// A specified length that will set the gap between the columns
    case length(Unit)
    /// Default value. Specifies a normal gap between the columns. W3C suggests a value of 1em
    case normal
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        case .normal:
            return "normal"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct ColumnGap: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "column-gap" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ColumnGap {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ColumnGap {

    /// Specifies the gap between the columns
    public init(_ value: ColumnGapValue) {
        self.init(value.rawValue)
    }

    /// Specifies the gap between the columns
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
