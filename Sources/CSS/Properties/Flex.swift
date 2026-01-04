//
//  Flex.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexValue {
    case values(FlexGrowValue, FlexShrinkValue, FlexBasisValue)
    /// Same as 1 1 auto.
    case auto
    /// Same as 0 0 auto.
    case none
    /// Same as 0 1 auto. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let grow, let shrink, let basis):
            return [grow.rawValue, shrink.rawValue, basis.rawValue]
                .joined(separator: " ")
        case .auto:
            return "auto"
        case .none:
            return "none"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Flex: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "flex" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Flex {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Flex {

    /// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    public init(_ value: FlexValue) {
        self.init(value.rawValue)
    }

    /// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    public init(
        _ grow: FlexGrowValue,
        _ shrink: FlexShrinkValue,
        _ basis: FlexBasisValue
    ) {
        self.init(.values(grow, shrink, basis))
    }
}
