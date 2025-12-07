//
//  FlexShrink.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexShrinkValue {

    /// A number specifying how much the item will shrink relative to the rest of the flexible items. Default value is 1
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

public func FlexShrink(_ value: String) -> Property {
    Property(name: "flex-shrink", value: value)
}

/// Specifies how the item will shrink relative to the rest
public func FlexShrink(_ value: FlexShrinkValue = .number(1)) -> Property {
    FlexShrink(value.rawValue)
}

/// Specifies how the item will shrink relative to the rest
public func FlexShrink(_ value: Int = 1) -> Property {
    FlexShrink(.number(value))
}
