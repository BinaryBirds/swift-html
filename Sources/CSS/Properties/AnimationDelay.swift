public struct AnimationDelay: Property {
    public enum Value: Sendable {
        case zero
        case seconds(Double)
        case milliseconds(Double)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .zero:
                return "0"
            case .seconds(let value):
                guard value != 0 else {
                    return "0"
                }
                return "\(value)s"
            case .milliseconds(let value):
                guard value != 0 else {
                    return "0"
                }
                return "\(value)ms"
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

    /// Specifies a delay for the start of an animation
    public init(
        _ value: Value = .zero
    ) {
        self.name = "animation-delay"
        self.value = value.rawValue
        self.isImportant = false
    }
}
