public struct BorderBottomLeftRadius: Property {
    public enum Value: Sendable {
        /// Defines the shape of the corners. Default value is 0. Read about length units
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

    /// Defines the radius of the border of the bottom-left corner
    public init(
        _ value: Value
    ) {
        self.name = "border-bottom-left-radius"
        self.value = value.rawValue
        self.isImportant = false
    }
}
