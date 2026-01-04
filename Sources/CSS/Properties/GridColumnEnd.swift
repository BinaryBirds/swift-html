public struct GridColumnEnd: Property {
    public enum Value: Sendable {
        /// Default value. The item will span one column
        case auto
        /// Specifies the number of columns the item will span
        case span(Int)
        /// Specifies on which column to end the display of the item
        case columnLine(Int)

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .span(let value):
                return "span \(value)"
            case .columnLine(let value):
                return String(value)
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies where to end the grid item
    public init(
        _ value: Value
    ) {
        self.name = "grid-column-end"
        self.value = value.rawValue
        self.isImportant = false
    }
}
