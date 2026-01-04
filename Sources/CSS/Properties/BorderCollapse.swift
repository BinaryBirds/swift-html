public struct BorderCollapse: Property {
    public enum Value: String, Sendable {
        /// Borders are separated; each cell will display its own borders. This is default.    Play it »
        case separate
        /// Borders are collapsed into a single border when possible (border-spacing and empty-cells properties have no effect)    Play it »
        case collapse
        /// Sets this property to its default value. Read about initial    Play it »
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets whether table borders should collapse into a single border or be separated
    public init(
        _ value: Value = .separate
    ) {
        self.name = "border-collapse"
        self.value = value.rawValue
        self.isImportant = false
    }
}
