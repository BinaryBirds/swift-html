public struct OutlineOffset: Property {
    public enum Value: Sendable {
        /// The distance the outline is outset from the border edge. Default value is 0
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

    /// Offsets an outline, and draws it beyond the border edge
    public init(
        _ value: Value = .length(0)
    ) {
        self.name = "outline-offset"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Offsets an outline, and draws it beyond the border edge
    public init(_ value: UnitRepresentable = 0) {
        self.init(.length(value))
    }
}
