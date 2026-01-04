public struct Flex: Property {
    public enum Value: Sendable {
        case values(FlexGrow.Value, FlexShrink.Value, FlexBasis.Value)
        /// Same as 1 1 auto.
        case auto
        /// Same as 0 0 auto.
        case none
        /// Same as 0 1 auto. Read about initial
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit

        var rawValue: String {
            switch self {
            case .values(let grow, let shrink, let basis):
                return [grow.rawValue, shrink.rawValue, basis.rawValue]
                    .joined(separator: " ")
            case .auto:
                return "auto"
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

    /// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    public init(
        _ value: Value
    ) {
        self.name = "flex"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    public init(
        _ grow: FlexGrow.Value,
        _ shrink: FlexShrink.Value,
        _ basis: FlexBasis.Value
    ) {
        self.init(.values(grow, shrink, basis))
    }
}
