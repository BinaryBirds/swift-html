//
//  RowGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum RowGapValue {
    /// A specified length or % that will set the gap between the rows
    case length(Unit)
    /// Default value. Specifies a normal gap between the rows
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

public struct RowGap: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "row-gap" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> RowGap {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension RowGap {

    /// Specifies the gap between the grid rows
    public init(_ value: RowGapValue = .normal) {
        self.init(value.rawValue)
    }

    /// Specifies the gap between the grid rows
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
