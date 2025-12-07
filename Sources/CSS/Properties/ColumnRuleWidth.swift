//
//  ColumnRuleWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnRuleWidthValue {
    /// Default value. Defines a medium rule
    case medium
    /// Defines a thin rule
    case thin
    /// Defines a thick rule
    case thick
    /// Specifies the width of the rule
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .medium:
            return "medium"
        case .thin:
            return "thin"
        case .thick:
            return "thick"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func ColumnRuleWidth(_ value: String) -> Property {
    Property(name: "column-rule-width", value: value)
}

/// Specifies the width of the rule between columns
public func ColumnRuleWidth(_ value: ColumnRuleWidthValue = .medium) -> Property
{
    ColumnRuleWidth(value.rawValue)
}
