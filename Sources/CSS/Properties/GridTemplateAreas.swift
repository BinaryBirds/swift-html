public struct GridTemplateAreas: Property {
    public enum Value: Sendable {
        /// Default value. No named grid areas
        case none
        /// A sequence that specifies how each columns and row should display
        case names([String])

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .names(let values):
                return values.map { "'" + $0 + "'" }.joined(separator: " ")
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how to display columns and rows, using named grid items
    public init(
        _ value: Value = .none
    ) {
        self.name = "grid-template-areas"
        self.value = value.rawValue
        self.isImportant = false
    }
}
