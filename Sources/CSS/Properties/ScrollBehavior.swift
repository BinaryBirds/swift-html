public struct ScrollBehavior: Property {
    public enum Value: String, Sendable {
        /// Allows a straight jump "scroll effect" between elements within the scrolling box. This is default
        case auto
        /// Allows a smooth animated "scroll effect" between elements within the scrolling box.
        case smooth
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    public init(
        _ value: Value = .auto
    ) {
        self.name = "scroll-behavior"
        self.value = value.rawValue
        self.isImportant = false
    }
}
