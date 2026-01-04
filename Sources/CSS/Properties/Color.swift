public struct Color: Property {
    public enum Value: Sendable {
        /// Specifies the text color.
        case color(CSSColor)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .color(let value):
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

    /// Sets the color of text
    public init(
        _ value: Value
    ) {
        self.name = "color"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the color of text
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
