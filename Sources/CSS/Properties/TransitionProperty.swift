public struct TransitionProperty: Property {
    public enum Value: Sendable {
        /// No property will get a transition effect
        case none
        /// Default value. All properties will get a transition effect
        case all
        /// Defines a comma separated list of CSS property names the transition effect is for
        case properties([String])
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .all:
                return "all"
            case .properties(let value):
                return value.joined(separator: ",")
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

    /// Specifies the name of the CSS property the transition effect is for
    public init(
        _ value: Value = .all
    ) {
        self.name = "transition-property"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: [String]) {
        self.init(.properties(value))
    }
}
