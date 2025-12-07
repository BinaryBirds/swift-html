//
//  ColumnRuleColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnRuleColorValue {
    /// Specifies the color of the rule.
    case color(CSSColor)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .color(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func ColumnRuleColor(_ value: String) -> Property {
    Property(name: "column-rule-color", value: value)
}

/// Specifies the color of the rule between columns
public func ColumnRuleColor(_ value: ColumnRuleColorValue) -> Property {
    ColumnRuleColor(value.rawValue)
}

/// Specifies the color of the rule between columns
public func ColumnRuleColor(_ value: CSSColor) -> Property {
    ColumnRuleColor(.color(value))
}
