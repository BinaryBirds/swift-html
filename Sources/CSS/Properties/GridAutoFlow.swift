public struct GridAutoFlow: Property {
    public enum Value: String, Sendable {
        /// Default value. Places items by filling each row
        case row
        /// Places items by filling each column
        case column
        /// Place items to fill any holes in the grid
        case dense
        /// Places items by filling each row, and fill any holes in the grid
        case rowDense = "row dense"
        /// Places items by filling each column, and fill any holes in the grid
        case columnDense = "column dense"
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how auto-placed items are inserted in the grid
    public init(
        _ value: Value
    ) {
        self.name = "grid-auto-flow"
        self.value = value.rawValue
        self.isImportant = false
    }
}
