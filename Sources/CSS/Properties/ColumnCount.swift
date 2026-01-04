public struct ColumnCount: Property {
    public enum Value: ExpressibleByIntegerLiteral, Sendable {

        /// The optimal number of columns into which the content of the element will be flowed
        case number(Int)
        /// Default value. The number of columns will be determined by other properties, like e.g. "column-width"
        case auto
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        public init(integerLiteral value: IntegerLiteralType) {
            self = .number(value)
        }

        var rawValue: String {
            switch self {
            case .number(let value):
                return "\(value)"
            case .auto:
                return "auto"
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

    /// Specifies the number of columns an element should be divided into
    public init(
        _ value: Value = .auto
    ) {
        self.name = "column-count"
        self.value = value.rawValue
        self.isImportant = false
    }
}
