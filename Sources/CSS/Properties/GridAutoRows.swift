/// Specifies a default row size

public struct GridAutoRows: Property {
    public enum Value: Sendable {
        /// Default value. The size of the rows is determined by the size of the largest item in the row
        case auto
        /// Sets the size of each row to depend on the largest item in the row
        case maxContent
        /// Sets the size of each row to depend on the largest item in the row
        case minContent
        /// Sets the size of the rows, by using a legal length value.
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

    /// Specifies a default row size
    public init(
        _ value: Value = .auto
    ) {
        self.name = "grid-auto-rows"
        self.value = value.rawValue
        self.isImportant = false
    }
}
