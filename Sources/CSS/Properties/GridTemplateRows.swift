public struct GridTemplateRows: Property {
    public enum Value: Sendable {
        /// No size is set. Rows are created if needed
        case none
        /// The size of the rows is determined by the size of the container, and on the size of the content of the items in the row
        case auto
        /// Sets the size of each row to depend on the largest item in the row
        case maxContent
        /// Sets the size of each row to depend on the smallest item in the row
        case minContent
        /// Sets the size of the rows, by using a legal length value.
        case length(UnitRepresentable)

        var rawValue: String {
            switch self {
            case .none:
                return "none"
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

    /// Specifies the size of the rows in a grid layout
    public init(
        _ value: Value = .none
    ) {
        self.name = "grid-template-rows"
        self.value = value.rawValue
        self.isImportant = false
    }
}
