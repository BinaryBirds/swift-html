public struct AnimationName: Property {
    public enum Value: ExpressibleByStringLiteral, Sendable {

        /// Specifies the name of the keyframe you want to bind to the selector
        case keyframename(String)
        /// Default value. Specifies that there will be no animation (can be used to override animations coming from the cascade)
        case none
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        public init(stringLiteral value: StringLiteralType) {
            self = .keyframename(value)
        }

        var rawValue: String {
            switch self {
            case .keyframename(let value):
                return value
            case .none:
                return "none"
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

    /// Specifies a name for the @keyframes animation
    public init(
        _ value: Value = .none
    ) {
        self.name = "animation-name"
        self.value = value.rawValue
        self.isImportant = false
    }
}
