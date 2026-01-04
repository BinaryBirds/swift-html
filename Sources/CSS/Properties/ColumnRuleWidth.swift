public struct ColumnRuleWidth: Property {
    public enum Value: Sendable {
        /// Default value. Defines a medium rule
        case medium
        /// Defines a thin rule
        case thin
        /// Defines a thick rule
        case thick
        /// Specifies the width of the rule
        case length(UnitRepresentable)
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

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the width of the rule between columns
    public init(
        _ value: Value = .medium
    ) {
        self.name = "column-rule-width"
        self.value = value.rawValue
        self.isImportant = false
    }
}
