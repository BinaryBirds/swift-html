public struct Animation: Property {
    public enum Value: Sendable {

        case values(
            String,
            AnimationDuration.Value?,
            AnimationTimingFunction.Value?,
            AnimationDelay.Value?,
            AnimationIterationCount.Value?,
            AnimationDirection.Value?,
            AnimationFillMode.Value?,
            AnimationPlayState.Value?
        )

        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .values(
                let name,
                let duration,
                let timingFunction,
                let delay,
                let iterationCount,
                let direction,
                let fillMode,
                let playState
            ):
                return name
                    + [
                        duration?.rawValue,
                        timingFunction?.rawValue,
                        delay?.rawValue,
                        iterationCount?.rawValue,
                        direction?.rawValue,
                        fillMode?.rawValue,
                        playState?.rawValue,
                    ]
                    .compactMap { $0 }.joined(separator: " ")
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

    /// A shorthand property for all the animation-* properties
    public init(
        _ value: Value
    ) {
        self.name = "animation"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for all the animation-* properties
    public init(
        _ name: String,
        duration: AnimationDuration.Value? = nil,
        timingFunction: AnimationTimingFunction.Value? = nil,
        delay: AnimationDelay.Value? = nil,
        iterationCount: AnimationIterationCount.Value? = nil,
        direction: AnimationDirection.Value? = nil,
        fillMode: AnimationFillMode.Value? = nil,
        playState: AnimationPlayState.Value?
    ) {
        self.init(
            .values(
                name,
                duration,
                timingFunction,
                delay,
                iterationCount,
                direction,
                fillMode,
                playState
            )
        )
    }
}
