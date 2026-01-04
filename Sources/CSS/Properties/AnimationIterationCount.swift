public struct AnimationIterationCount: Property {
    public enum Value: ExpressibleByIntegerLiteral, Sendable {

        /// A number that defines how many times an animation should be played. Default value is 1
        case number(Int)
        /// Specifies that the animation should be played infinite times (for ever)
        case infinite
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
                return String(value)
            case .infinite:
                return "infinite"
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

    /// Specifies the number of times an animation should be played
    public init(
        _ value: Value = 1
    ) {
        self.name = "animation-iteration-count"
        self.value = value.rawValue
        self.isImportant = false
    }
}
