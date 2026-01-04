public struct GridColumnGap: Property {
    public enum Value: Sendable {
        /// Any legal length value, like px or %. 0 is the default value. Read about length units
        case length(UnitRepresentable)

        var rawValue: String {
            switch self {
            case .length(let value):
                return value.rawValue
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the size of the gap between columns
    public init(
        _ value: Value
    ) {
        self.name = "grid-column-gap"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the size of the gap between columns
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
