public struct Gap: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the row-gap and the column-gap properties
    public init(_ row: RowGap.Value, _ col: ColumnGap.Value) {
        self.name = "gap"
        self.value = [row.rawValue, col.rawValue].joined(separator: " ")
        self.isImportant = false
    }
}
