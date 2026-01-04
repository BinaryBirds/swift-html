/// Creates or resets one or more CSS counters

public struct CounterReset: Property {
    public enum Value: Sendable {
        /// Default value. No counters will be reset
        case none
        /// The id defines which counter to reset.
        /// The number sets the value the counter is reset to on each occurrence of the selector.
        /// The default number value is 0
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
        _ value: Value = .none,
    ) {
        self.name = "counter-reset"
        self.value = value.rawValue
        self.isImportant = false
    }
}
