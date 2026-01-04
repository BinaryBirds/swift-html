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

public struct FlexBasis: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "flex-basis" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FlexBasis {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FlexBasis {

    /// Specifies the initial length of a flexible item
    public init(_ value: FlexBasisValue = .auto) {
        self.init(value.rawValue)
    }

    /// Specifies the initial length of a flexible item
    public init(_ value: Unit) {
        self.init(.number(value))
    }
}
