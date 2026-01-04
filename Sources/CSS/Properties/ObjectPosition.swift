public struct ObjectPosition: Property {
    public enum Value: Sendable {

        /// Specifies the position of the image or video inside its content box.
        /// First value controls the x-axis and the second value controls the y-axis.
        /// Can be a string (left, center or right), or a number (in px or %).
        /// Negative values are allowed
        case position(UnitRepresentable, UnitRepresentable?)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .position(let x, let y):
                return "\(x.rawValue) \(y?.rawValue ?? "50%")"
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

    /// Specifies the alignment of the replaced element inside its box
    public init(
        _ value: Value = .position(50.percent, 50.percent)
    ) {
        self.name = "object-position"
        self.value = value.rawValue
        self.isImportant = false
    }
}
