public struct FontStyle: Property {
    public enum Value: String, Sendable {
        /// The browser displays a normal font style. This is default
        case normal
        /// The browser displays an italic font style
        case italic
        /// The browser displays an oblique font style
        case oblique
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the font style for text
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
