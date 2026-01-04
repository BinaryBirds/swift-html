public struct WordWrap: Property {
    public enum Value: String, Sendable {
        /// Break words only at allowed break points
        case normal
        /// Allows unbreakable words to be broken
        case breakWord = "break-word"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Allows long, unbreakable words to be broken and wrap to the next line
    public init(
        _ value: Value = .normal
    ) {
        self.name = "word-wrap"
        self.value = value.rawValue
        self.isImportant = false
    }
}
