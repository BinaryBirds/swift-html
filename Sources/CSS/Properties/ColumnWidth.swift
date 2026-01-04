public struct ColumnWidth: Property {
    public enum Value: Sendable {
        /// Default value. The column width will be determined by the browser
        case auto
        /// A length that specifies the width of the columns. The number of columns will be the minimum number of columns needed to show all the content across the element.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .length(let value):
                return value.rawValue
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

    /// Specifies the column width
    public init(
        _ value: Value = .auto
    ) {
        self.name = "column-width"
        self.value = value.rawValue
        self.isImportant = false
    }
}
