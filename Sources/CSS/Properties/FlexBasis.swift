public struct FlexBasis: Property {

    public enum Value: Sendable {
        /// Default value. The length is equal to the length of the flexible item. If the item has no length specified, the length will be according to its content
        case auto
        /// A length unit, or percentage, specifying the initial length of the flexible item(s)
        case number(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .number(let value):
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

    /// Specifies the initial length of a flexible item
    public init(
        _ value: Value = .auto
    ) {
        self.name = "flex-basis"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the initial length of a flexible item
    public init(_ value: UnitRepresentable) {
        self.init(.number(value))
    }
}
