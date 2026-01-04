public struct BackfaceVisibility: Property {
    public enum Value: String, Sendable {
        /// Default value. The backside is visible
        case visible
        /// The backside is not visible
        case hidden
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines whether or not the back face of an element should be visible when facing the user
    public init(
        _ value: Value = .visible
    ) {
        self.name = "backface-visibility"
        self.value = value.rawValue
        self.isImportant = false
    }
}
