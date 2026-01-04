public struct Widows: Property {
    public enum Value: Sendable {
        /// An integer that specifies the minimum number of visible lines. Negative values are not allowed. The default value is 2
        case number(Int)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .number(let value):
                return String(value)
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

    /// Sets the minimum number of lines that must be left at the top of a page when a page break occurs inside an element
    public init(
        _ value: Value = .number(2)
    ) {
        self.name = "widows"
        self.value = value.rawValue
        self.isImportant = false
    }
}
