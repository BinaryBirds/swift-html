public struct OutlineColor: Property {
    public enum Value: Sendable {
        /// Performs a color inversion. This ensures that the outline is visible, regardless of color background. This is default
        case invert
        /// Specifies the color of the outline. Look at CSS Color Values for a complete list of possible color values.
        case color(CSSColor)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .invert:
                return "invert"
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

    /// Sets the color of an outline
    public init(
        _ value: Value = .invert
    ) {
        self.name = "outline-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
