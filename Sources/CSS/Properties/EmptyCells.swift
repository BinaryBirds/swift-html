public struct EmptyCells: Property {
    public enum Value: String, Sendable {
        /// Display borders on empty cells. This is default
        case show
        /// Hide borders on empty cells
        case hide
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not to display borders and background on empty cells in a table
    public init(
        _ value: Value = .show
    ) {
        self.name = "empty-cells"
        self.value = value.rawValue
        self.isImportant = false
    }
}
