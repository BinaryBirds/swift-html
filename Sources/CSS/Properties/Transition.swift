public struct Transition: Property {
    public enum Value: Sendable {
        /// transition-property    Specifies the name of the CSS property the transition effect is for
        /// transition-duration    Specifies how many seconds or milliseconds the transition effect takes to complete
        /// transition-timing-function    Specifies the speed curve of the transition effect
        /// transition-delay    Defines when the transition effect will start
        case values(
            TransitionProperty.Value,
            TransitionDuration.Value,
            TransitionTimingFunction.Value,
            TransitionDelay.Value
        )
        /// Sets this property to its default value. Read about initial
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit

        var rawValue: String {
            switch self {
            case .values(
                let property,
                let duration,
                let timingFunction,
                let delay
            ):
                return [
                    property.rawValue, duration.rawValue,
                    timingFunction.rawValue,
                    delay.rawValue,
                ]
                .joined(separator: " ")
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
        _ value: Value
    ) {
        self.name = "transition"
        self.value = value.rawValue
        self.isImportant = false
    }
}
