public struct GridGap: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public init(_ row: GridRowGap.Value, _ col: GridColumnGap.Value) {
        self.name = "grid-gap"
        self.value = row.rawValue + " " + col.rawValue
        self.isImportant = false
    }

    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public init(
        _ row: UnitRepresentable,
        _ col: UnitRepresentable
    ) {
        self.name = "grid-gap"
        self.value = row.rawValue + " " + col.rawValue
        self.isImportant = false
    }
}
