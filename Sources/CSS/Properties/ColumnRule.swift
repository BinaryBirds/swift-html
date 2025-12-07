//
//  ColumnRule.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnRuleValue {
    case values(
        ColumnRuleWidthValue,
        ColumnRuleStyleValue,
        ColumnRuleColorValue
    )
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let width, let style, let color):
            return [width.rawValue, style.rawValue, color.rawValue]
                .joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func ColumnRule(_ value: String) -> Property {
    Property(name: "column-rule", value: value)
}

/// A shorthand property for all the column-rule-* properties
public func ColumnRule(_ value: ColumnRuleValue) -> Property {
    ColumnRule(value.rawValue)
}

/// A shorthand property for all the column-rule-* properties
public func ColumnRule(
    _ width: ColumnRuleWidthValue,
    _ style: ColumnRuleStyleValue,
    _ color: ColumnRuleColorValue
) -> Property {
    ColumnRule(.values(width, style, color))
}
