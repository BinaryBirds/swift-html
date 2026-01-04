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

public struct ColumnRuleWidth: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "column-rule-width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ColumnRuleWidth {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ColumnRuleWidth {

    /// Specifies the width of the rule between columns
    public init(_ value: ColumnRuleWidthValue = .medium) {
        self.init(value.rawValue)
    }
}
