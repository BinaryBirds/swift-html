//
//  FlexFlow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexFlowValue {
    case values(FlexDirectionValue, FlexWrapValue)
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let direction, let wrap):
            return [direction.rawValue, wrap.rawValue].joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct FlexFlow: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "flex-flow" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FlexFlow {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FlexFlow {

    /// A shorthand property for the flex-direction and the flex-wrap properties
    public init(_ value: FlexFlowValue) {
        self.init(value.rawValue)
    }

    /// A shorthand property for the flex-direction and the flex-wrap properties
    public init(_ direction: FlexDirectionValue, _ wrap: FlexWrapValue) {
        self.init(.values(direction, wrap))
    }
}
