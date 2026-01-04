public struct BorderImageOutset: Property {
    public enum Value: Sendable {
        /// A length unit specifying how far from the edges the border-image will appear. Default value is 0
        case length(UnitRepresentable)
        /// Represent multiples of the corresponding border-width
        case number(Double)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .length(let value):
                return value.rawValue
            case .number(let value):
                return String(value)
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

    /// Specifies the amount by which the border image area extends beyond the border box
    public init(
        _ value: Value
    ) {
        self.name = "border-image-outset"
        self.value = value.rawValue
        self.isImportant = false
    }
}
