public struct FontVariant: Property {
    public enum Value: String, Sendable {
        /// The browser displays a normal font. This is default
        case normal
        /// The browser displays a small-caps font
        case smallCaps = "small-caps"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not a text should be displayed in a small-caps font
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-variant"
        self.value = value.rawValue
        self.isImportant = false
    }
}
