//
//  FlexGrow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexGrowValue {

    /// A number specifying how much the item will grow relative to the rest of the flexible items. Default value is 0
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

public struct FlexGrow: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "flex-grow" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FlexGrow {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FlexGrow {

    /// Specifies how much the item will grow relative to the rest
    public init(_ value: FlexGrowValue = .number(0)) {
        self.init(value.rawValue)
    }

    /// Specifies how much the item will grow relative to the rest
    public init(_ value: Int = 0) {
        self.init(.number(value))
    }
}
