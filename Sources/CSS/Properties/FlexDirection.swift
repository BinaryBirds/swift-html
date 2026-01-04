public struct FlexDirection: Property {
    public enum Value: String, Sendable {
        /// Default value. The flexible items are displayed horizontally, as a row
        case row
        /// Same as row, but in reverse order
        case rowReverse = "row-reverse"
        /// The flexible items are displayed vertically, as a column
        case column
        /// Same as column, but in reverse order
        case columnReverse = "column-reverse"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the direction of the flexible items
    public init(
        _ value: Value = .row
    ) {
        self.name = "flex-direction"
        self.value = value.rawValue
        self.isImportant = false
    }
}
