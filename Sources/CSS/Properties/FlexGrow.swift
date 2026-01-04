public struct FlexGrow: Property {
    public enum Value: Sendable {

        /// A number specifying how much the item will grow relative to the rest of the flexible items. Default value is 0
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

    /// Specifies how much the item will grow relative to the rest
    public init(
        _ value: Value = .number(0)
    ) {
        self.name = "flex-grow"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies how much the item will grow relative to the rest
    public init(_ value: Int = 0) {
        self.init(.number(value))
    }
}
