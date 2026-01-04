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

public struct ColumnRule: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "column-rule" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ColumnRule {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ColumnRule {

    /// A shorthand property for all the column-rule-* properties
    public init(_ value: ColumnRuleValue) {
        self.init(value.rawValue)
    }

    /// A shorthand property for all the column-rule-* properties
    public init(
        _ width: ColumnRuleWidthValue,
        _ style: ColumnRuleStyleValue,
        _ color: ColumnRuleColorValue
    ) {
        self.init(.values(width, style, color))
    }
}
