public struct TextDecorationLine: Property {
    public enum Value: String, Sendable {
        /// Default value. Specifies no line for the text-decoration    Play it »
        case none
        /// Specifies that a line will be displayed under the text    Play it »
        case underline
        /// Specifies that a line will be displayed over the text    Play it »
        case overline
        /// Specifies that a line will be displayed through the text    Play it »
        case lineThrough = "line-through"
        /// Sets this property to its default value. Read about initial    Play it »
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the type of line in a text-decoration
    public init(
        _ value: Value = .none
    ) {
        self.name = "text-decoration-line"
        self.value = value.rawValue
        self.isImportant = false
    }
}
