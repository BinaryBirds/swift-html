public struct RowGap: Property {
    public enum Value: Sendable {
        /// A specified length or % that will set the gap between the rows
        case length(UnitRepresentable)
        /// Default value. Specifies a normal gap between the rows
        case normal
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .length(let value):
                return value.rawValue
            case .normal:
                return "normal"
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

    /// Specifies the gap between the grid rows
    public init(
        _ value: Value = .normal
    ) {
        self.name = "row-gap"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the gap between the grid rows
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
