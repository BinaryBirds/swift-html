public struct TextIndent: Property {
    public enum Value: Sendable {
        /// Defines a fixed indentation in px, pt, cm, em, etc. Default value is 0. Read about length units
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
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

    /// Specifies the indentation of the first line in a text-block
    public init(
        _ value: Value
    ) {
        self.name = "text-indent"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the indentation of the first line in a text-block
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
