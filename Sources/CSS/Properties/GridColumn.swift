public struct GridColumn: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the grid-column-start and the grid-column-end properties
    public init(_ start: GridColumnStart.Value, _ end: GridColumnEnd.Value) {
        self.name = "grid-column"
        self.value = start.rawValue + " / " + end.rawValue
        self.isImportant = false
    }
}
