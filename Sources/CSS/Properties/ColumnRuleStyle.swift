//
//  ColumnRuleStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnRuleStyleValue: String {
    /// Default value. Defines no rule
    case none
    /// Defines a hidden rule
    case hidden
    /// Defines a dotted rule
    case dotted
    /// Defines a dashed rule
    case dashed
    /// Defines a solid rule
    case solid
    /// Defines a double rule
    case double
    /// Specifies a 3D grooved rule. The effect depends on the width and color values
    case groove
    /// Specifies a 3D ridged rule. The effect depends on the width and color values
    case ridge
    /// Specifies a 3D inset rule. The effect depends on the width and color values
    case inset
    /// Specifies a 3D outset rule. The effect depends on the width and color values
    case outset
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct ColumnRuleStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "column-rule-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ColumnRuleStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ColumnRuleStyle {

    /// Specifies the style of the rule between columns
    public init(_ value: ColumnRuleStyleValue = .none) {
        self.init(value.rawValue)
    }
}
