public struct LineHeight: Property {
    public enum Value: Sendable {
        /// A normal line height. This is default
        case normal
        /// A number that will be multiplied with the current font-size to set the line height
        case number(Double)
        /// A fixed line height in px, pt, cm, etc.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .normal:
                return "normal"
            case .number(let value):
                return String(value)
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

    /// Sets the line height
    public init(
        _ value: Value = .normal
    ) {
        self.name = "line-height"
        self.value = value.rawValue
        self.isImportant = false
    }
}
