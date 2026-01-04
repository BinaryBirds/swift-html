public struct AnimationDirection: Property {
    public enum Value: String, Sendable {
        /// Default value. The animation is played as normal (forwards)
        case normal
        /// The animation is played in reverse direction (backwards)
        case reverse
        /// The animation is played forwards first, then backwards
        case alternate
        /// The animation is played backwards first, then forwards
        case alternateReverse = "alternate-reverse"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether an animation should be played forwards, backwards or in alternate cycles
    public init(
        _ value: Value = .normal
    ) {
        self.name = "animation-direction"
        self.value = value.rawValue
        self.isImportant = false
    }
}
