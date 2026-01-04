public struct Perspective: Property {
    public enum Value: Sendable {
        /// How far the element is placed from the view
        case length(UnitRepresentable)
        /// Default value. Same as 0. The perspective is not set
        case none
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
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

    /// Gives a 3D-positioned element some perspective
    public init(
        _ value: Value = .none
    ) {
        self.name = "perspective"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Gives a 3D-positioned element some perspective
    public init(_ value: UnitRepresentable = 0) {
        self.init(.length(value))
    }
}
