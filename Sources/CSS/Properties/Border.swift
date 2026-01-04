/// A shorthand property for border-width, border-style and border-color

public struct Border: Property {
    public enum Value: Sendable {
        case values(BorderWidth.Value, BorderStyle.Value, CSSColor)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .values(let width, let style, let color):
                return width.rawValue + " " + style.rawValue + " "
                    + color.rawValue
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

    /// A shorthand property for border-width, border-style and border-color
    public init(
        _ value: Value
    ) {
        self.name = "border"
        self.value = value.rawValue
        self.isImportant = false
    }
}
