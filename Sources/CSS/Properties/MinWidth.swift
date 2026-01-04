public struct MinWidth: Property {
    public enum Value: Sendable {
        /// Default value is 0. Defines the minimum width in px, cm, etc. Read about length units
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
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

    /// Sets the minimum width of an element
    public init(
        _ value: Value = .length(0)
    ) {
        self.name = "min-width"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the minimum width of an element
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
