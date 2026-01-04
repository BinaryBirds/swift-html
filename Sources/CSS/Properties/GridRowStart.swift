public struct GridRowStart: Property {
    public enum Value: Sendable {
        /// Default value. The item will be placed by following the flow.
        case auto
        /// Specifies on which row to end the display of the item.
        case rowLine(Int)

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .rowLine(let value):
                return String(value)
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies where to start the grid item
    public init(
        _ value: Value = .auto
    ) {
        self.name = "grid-row-start"
        self.value = value.rawValue
        self.isImportant = false
    }
}
