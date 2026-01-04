public struct ColumnRule: Property {
    public enum Value: Sendable {
        case values(
            ColumnRuleWidth.Value,
            ColumnRuleStyle.Value,
            ColumnRuleColor.Value
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

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for all the column-rule-* properties
    public init(
        _ value: Value
    ) {
        self.name = "column-rule"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for all the column-rule-* properties
    public init(
        _ width: ColumnRuleWidth.Value,
        _ style: ColumnRuleStyle.Value,
        _ color: ColumnRuleColor.Value
    ) {
        self.init(.values(width, style, color))
    }
}
