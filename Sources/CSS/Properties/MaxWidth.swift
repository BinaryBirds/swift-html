public struct MaxWidth: Property {
    public enum Value: Sendable {
        /// No maximum width. This is default
        case none
        /// Defines the maximum width in px, cm, etc. Read about length units
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
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

    /// Sets the maximum width of an element
    public init(
        _ value: Value = .none
    ) {
        self.name = "max-width"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the maximum width of an element
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
