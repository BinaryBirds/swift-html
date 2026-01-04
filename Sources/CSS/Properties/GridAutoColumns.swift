public struct GridAutoColumns: Property {
    public enum Value: Sendable {
        /// Default value. The size of the columns is determined by the size of the container
        case auto
        // @TODO: implemnet min-max & fit content
        //    case fit-content()
        /// Sets the size of each column depending on the largest item in the column
        case maxContent
        /// Sets the size of each column depending on the smallest item in the column
        case minContent
        /// Sets a size range greater than or equal to min and less than or equal to max
        //    case minmax(min.max)
        ///     Sets the size of the columns, by using a legal length value.
        case length(UnitRepresentable)

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .maxContent:
                return "max-content"
            case .minContent:
                return "min-content"
            case .length(let value):
                return value.rawValue
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies a default column size
    public init(
        _ value: Value = .auto
    ) {
        self.name = "grid-auto-columns"
        self.value = value.rawValue
        self.isImportant = false
    }
}
