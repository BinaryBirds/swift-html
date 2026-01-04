public struct TextDecorationStyle: Property {
    public enum Value: String, Sendable {
        /// Default value. The line will display as a single line    Play it »
        case solid
        /// The line will display as a double line    Play it »
        case double
        /// The line will display as a dotted line    Play it »
        case dotted
        /// The line will display as a dashed line    Play it »
        case dashed
        /// The line will display as a wavy line    Play it »
        case wavy
        /// Sets this property to its default value. Read about initial    Play it »
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the style of the line in a text decoration
    public init(
        _ value: Value = .solid
    ) {
        self.name = "text-decoration-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
