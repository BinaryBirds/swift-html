public struct GridRowEnd: Property {
    public enum Value: Sendable {
        /// Default value. The item will span one row.
        case auto
        /// Specifies the number of rows the item will span.
        case span(Int)
        /// Specifies on which row to end the display of the item.
        case rowLine(Int)

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .span(let value):
                return "span \(value)"
            case .rowLine(let value):
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
        self.name = "grid-row-end"
        self.value = value.rawValue
        self.isImportant = false
    }
}
