public struct Direction: Property {
    public enum Value: String, Sendable {
        /// Text direction goes from left-to-right. This is default
        case ltr
        /// Text direction goes from right-to-left
        case rtl
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the text direction/writing direction
    public init(
        _ value: Value = .ltr
    ) {
        self.name = "direction"
        self.value = value.rawValue
        self.isImportant = false
    }
}
