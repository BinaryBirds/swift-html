public struct AnimationFillMode: Property {
    public enum Value: String, Sendable {
        /// Default value. Animation will not apply any styles to the element before or after it is executing
        case none
        /// The element will retain the style values that is set by the last keyframe (depends on animation-direction and animation-iteration-count)
        case forwards
        /// The element will get the style values that is set by the first keyframe (depends on animation-direction), and retain this during the animation-delay period
        case backwards
        /// The animation will follow the rules for both forwards and backwards, extending the animation properties in both directions
        case both
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    public init(
        _ value: Value = .none
    ) {
        self.name = "animation-fill-mode"
        self.value = value.rawValue
        self.isImportant = false
    }
}
