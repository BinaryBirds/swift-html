public struct AnimationPlayState: Property {
    public enum Value: String, Sendable {
        /// Specifies that the animation is paused
        case paused
        /// Default value. Specifies that the animation is running
        case running
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether the animation is running or paused
    public init(
        _ value: Value = .running
    ) {
        self.name = "animation-play-state"
        self.value = value.rawValue
        self.isImportant = false
    }
}
