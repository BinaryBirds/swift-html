public struct AnimationDuration: Property {
    public enum Value: Sendable {
        /// 0
        case zero
        /// s
        case seconds(Double)
        /// ms
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

    /// Specifies how long an animation should take to complete one cycle
    public init(
        _ value: Value = .zero
    ) {
        self.name = "animation-duration"
        self.value = value.rawValue
        self.isImportant = false
    }
}
