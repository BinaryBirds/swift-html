public struct WordBreak: Property {
    public enum Value: String, Sendable {
        /// Default value. Uses default line break rules
        case normal
        /// To prevent overflow, word may be broken at any character
        case breakAll = "break-all"
        /// Word breaks should not be used for Chinese/Japanese/Korean (CJK) text. Non-CJK text behavior is the same as value "normal"
        case keepAll = "keep-all"
        /// To prevent overflow, word may be broken at arbitrary points
        case breakWord = "break-word"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how words should break when reaching the end of a line
    public init(
        _ value: Value = .normal
    ) {
        self.name = "word-break"
        self.value = value.rawValue
        self.isImportant = false
    }
}
