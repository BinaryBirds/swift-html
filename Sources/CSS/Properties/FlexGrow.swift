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

public func FlexGrow(_ value: String) -> Property {
    Property(name: "flex-grow", value: value)
}

/// Specifies how much the item will grow relative to the rest
public func FlexGrow(_ value: FlexGrowValue = .number(0)) -> Property {
    FlexGrow(value.rawValue)
}

/// Specifies how much the item will grow relative to the rest
public func FlexGrow(_ value: Int = 0) -> Property {
    FlexGrow(.number(value))
}
