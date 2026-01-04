public struct GridArea: Property {
    public enum Value: Sendable {
        case name(String)
        case values(
            GridRowStart.Value,
            GridColumnStart.Value,
            GridRowEnd.Value,
            GridColumnEnd.Value
        )

        var rawValue: String {
            switch self {
            case .name(let value):
                return value
            case .values(let rowStart, let colStart, let rowEnd, let colEnd):
                return [
                    rowStart.rawValue, colStart.rawValue, rowEnd.rawValue,
                    colEnd.rawValue,
                ]
                .joined(separator: " / ")
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Either specifies a name for the grid item, or this property is a shorthand property for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    public init(
        _ value: Value
    ) {
        self.name = "grid-area"
        self.value = value.rawValue
        self.isImportant = false
    }
}
