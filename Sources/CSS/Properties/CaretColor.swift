public struct CaretColor: Property {
    public enum Value: Sendable {
        /// Default. Browsers uses the currentColor for the caret
        case auto
        /// Specifies a color to use for the caret. All legal color values can be used (rgb, hex, named-color, etc). For more information on legal values, read our CSS Colors Tutorial
        case color(CSSColor)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
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

    /// Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    public init(
        _ value: Value = .auto
    ) {
        self.name = "caret-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
