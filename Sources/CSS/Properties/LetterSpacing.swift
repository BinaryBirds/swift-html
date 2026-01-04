public struct LetterSpacing: Property {
    public enum Value: Sendable {
        /// No extra space between characters. This is default
        case normal
        /// Defines an extra space between characters (negative values are allowed). Read about length units
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

    /// Increases or decreases the space between characters in a text
    public init(
        _ value: Value
    ) {
        self.name = "letter-spacing"
        self.value = value.rawValue
        self.isImportant = false
    }
}
