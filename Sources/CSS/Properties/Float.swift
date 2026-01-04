public struct Float: Property {
    public enum Value: String, Sendable {
        /// The element does not float, (will be displayed just where it occurs in the text). This is default
        case none
        /// The element floats to the left of its container
        case left
        /// The element floats the right of its container
        case right
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether an element should float to the left, right, or not at all
    public init(
        _ value: Value = .none
    ) {
        self.name = "float"
        self.value = value.rawValue
        self.isImportant = false
    }
}
