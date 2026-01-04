public struct ColumnSpan: Property {
    public enum Value: String, Sendable {
        /// Default value. The element should span across one column
        case none
        /// The element should span across all columns
        case all
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how many columns an element should span across
    public init(
        _ value: Value = .none
    ) {
        self.name = "column-span"
        self.value = value.rawValue
        self.isImportant = false
    }
}
