public struct WordSpacing: Property {
    public enum Value: Sendable {
        /// Defines normal space between words (0.25em) . This is default
        case normal
        /// Defines an additional space between words (in px, pt, cm, em, etc). Negative values are allowed. Read about length units
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .normal:
                return "normal"
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

    /// Increases or decreases the space between words in a text
    public init(
        _ value: Value = .normal
    ) {
        self.name = "word-spacing"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Increases or decreases the space between words in a text
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
