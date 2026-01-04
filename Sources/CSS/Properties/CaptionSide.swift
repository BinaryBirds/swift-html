public struct CaptionSide: Property {
    public enum Value: String, Sendable {
        /// Puts the caption above the table. This is default
        case top
        /// Puts the caption below the table
        case bottom
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the placement of a table caption
    public init(
        _ value: Value
    ) {
        self.name = "caption-side"
        self.value = value.rawValue
        self.isImportant = false
    }
}
