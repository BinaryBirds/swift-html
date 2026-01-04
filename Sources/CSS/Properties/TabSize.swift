public struct TabSize: Property {
    public enum Value: Sendable {
        /// The number of space-characters to be displayed for each tab-character. Default value is 8    Play it »
        case number(Int)
        /// The length of a tab-character. This property value is not supported in any of the major browsers
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
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

    /// Specifies the width of a tab character
    public init(
        _ value: Value = .number(8)
    ) {
        self.name = "tab-size"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the width of a tab character
    public init(_ value: Int = 8) {
        self.init(.number(value))
    }

    /// Specifies the width of a tab character
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
