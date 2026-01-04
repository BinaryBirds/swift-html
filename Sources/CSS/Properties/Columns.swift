public struct Columns: Property {
    public enum Value: Sendable {
        /// Default value. Sets both the column-width and column-count to "auto"
        case auto
        case values(ColumnWidth.Value, ColumnCount.Value)
        /// Sets this property to its default value. Read about initial
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .values(let width, let count):
                return [width.rawValue, count.rawValue].joined(separator: " ")
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for column-width and column-count
    public init(
        _ value: Value = .auto
    ) {
        self.name = "columns"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for column-width and column-count
    public init(_ width: ColumnWidth.Value, _ count: ColumnCount.Value) {
        self.init(.values(width, count))
    }
}
