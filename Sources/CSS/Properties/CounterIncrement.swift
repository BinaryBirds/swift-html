/// Increases or decreases the value of one or more CSS counters

public struct CounterIncrement: Property {
    public enum Value: Sendable {
        /// Default value. No counters will be incremented
        case none
        /// The id defines which counter to increment.
        /// The number sets how much the counter will increment on each occurrence of the selector.
        /// The default increment is 1.
        /// Negative values are allowed.
        /// If id refers to a counter that has not been initialized by counter-reset, the default initial value is 0
        case id(Int)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .id(let value):
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

    public init(
        _ value: Value = .none
    ) {
        self.name = "counter-increment"
        self.value = value.rawValue
        self.isImportant = false
    }
}
