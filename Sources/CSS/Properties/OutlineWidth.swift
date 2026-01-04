public struct OutlineWidth: Property {
    public enum Value: Sendable {
        /// Specifies a medium outline. This is default
        case medium
        /// Specifies a thin outline
        case thin
        /// Specifies a thick outline
        case thick
        /// Allows you to define the thickness of the outline. Read about length units
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

    /// Sets the width of an outline
    public init(
        _ value: Value = .medium
    ) {
        self.name = "outline-width"
        self.value = value.rawValue
        self.isImportant = false
    }
}
