public struct TextDecoration: Property {
    public enum Value: Sendable {
        /// text-decoration-line    Sets the kind of text decoration to use (like underline, overline, line-through)
        /// text-decoration-color    Sets the color of the text decoration
        /// text-decoration-style    Sets the style of the text decoration (like solid, wavy, dotted, dashed, double)
        case values(
            TextDecorationLine.Value,
            TextDecorationColor.Value,
            TextDecorationStyle.Value
        )
        /// Sets this property to its default value. Read about initial
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit

        var rawValue: String {
            switch self {
            case .values(let line, let color, let style):
                return [line.rawValue, color.rawValue, style.rawValue]
                    .joined(separator: " ")
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

    /// Specifies the decoration added to text
    public init(
        _ value: Value
    ) {
        self.name = "text-decoration"
        self.value = value.rawValue
        self.isImportant = false
    }
}
