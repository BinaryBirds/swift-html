public struct TextAlign: Property {
    public enum Value: String, Sendable {
        /// Aligns the text to the left    Play it »
        case left
        /// Aligns the text to the right    Play it »
        case right
        /// Centers the text    Play it »
        case center
        /// Stretches the lines so that each line has equal width (like in newspapers and magazines)    Play it »
        case justify
        /// Sets this property to its default value. Read about initial    Play it »
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the horizontal alignment of text
    public init(
        _ value: Value
    ) {
        self.name = "text-align"
        self.value = value.rawValue
        self.isImportant = false
    }
}
