public struct TextAlignLast: Property {
    public enum Value: String, Sendable {
        /// Default value. The last line is justified and aligned left    Play it »
        case auto
        /// The last line is aligned to the left    Play it »
        case left
        /// The last line is aligned to the right    Play it »
        case right
        /// The last line is center-aligned    Play it »
        case center
        /// The last line is justified as the rest of the lines    Play it »
        case justify
        /// The last line is aligned at the beginning of the line (left if the text-direction is left-to-right, and right is the text-direction is right-to-left)    Play it »
        case start
        /// The last line is aligned at the end of the line (right if the text-direction is left-to-right, and left is the text-direction is right-to-left)    Play it »
        case end
        /// Sets this property to its default value. Read about initial    Play it »
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    public init(
        _ value: Value = .auto
    ) {
        self.name = "text-align-last"
        self.value = value.rawValue
        self.isImportant = false
    }
}
