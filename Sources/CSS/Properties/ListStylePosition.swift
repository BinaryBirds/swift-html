public struct ListStylePosition: Property {
    public enum Value: String, Sendable {
        /// The bullet points will be inside the list item
        case inside
        /// The bullet points will be outside the list item. This is default
        case outside
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the position of the list-item markers (bullet points)
    public init(
        _ value: Value = .outside
    ) {
        self.name = "list-style-position"
        self.value = value.rawValue
        self.isImportant = false
    }
}
