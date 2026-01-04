public struct BorderWidth: Property {
    public enum Value: Sendable {
        /// Specifies a medium bottom border. This is default
        case medium
        /// Specifies a thin bottom border
        case thin
        /// Specifies a thick bottom border
        case thick
        /// Allows you to define the thickness of the bottom border.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .medium:
                return "medium"
            case .thin:
                return "thin"
            case .thick:
                return "thick"
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

    /// Sets the width of the four borders
    public init(
        _ value: Value = .medium
    ) {
        self.name = "border-width"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the width of the four borders
    public init(_ value: UnitRepresentable) {
        self.init(.length(value))
    }
}
