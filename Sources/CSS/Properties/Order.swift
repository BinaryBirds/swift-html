public struct Order: Property {
    public enum Value: Sendable {
        /// Default value 0. Specifies the order for the flexible item
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

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the order of the flexible item, relative to the rest
    public init(
        _ value: Value = .number(1)
    ) {
        self.name = "order"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the order of the flexible item, relative to the rest
    public init(_ value: Int = 1) {
        self.init(.number(1))
    }
}
