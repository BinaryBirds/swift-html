public struct TextTransform: Property {
    public enum Value: String, Sendable {
        /// No capitalization. The text renders as it is. This is default    Play it »
        case none
        /// Transforms the first character of each word to uppercase    Play it »
        case capitalize
        /// Transforms all characters to uppercase    Play it »
        case uppercase
        /// Transforms all characters to lowercase    Play it »
        case lowercase
        /// Sets this property to its default value. Read about initial    Play it »
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls the capitalization of text
    public init(
        _ value: Value
    ) {
        self.name = "text-transform"
        self.value = value.rawValue
        self.isImportant = false
    }
}
