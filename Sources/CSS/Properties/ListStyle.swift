public struct ListStyle: Property {
    public enum Value: Sendable {
        /// list-style-type    Specifies the type of list-item marker. Default value is "disc"
        /// list-style-position    Specifies where to place the list-item marker. Default value is "outside"
        /// list-style-image    Specifies the type of list-item marker. Default value is "none"
        case values(
            ListStyleType.Value,
            ListStylePosition.Value,
            ListStyleImage.Value
        )
        /// Sets this property to its default value. Read about initial
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit

        var rawValue: String {
            switch self {
            case .values(let type, let position, let image):
                return [type.rawValue, position.rawValue, image.rawValue]
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

    /// Sets all the properties for a list in one declaration
    public init(
        _ value: Value
    ) {
        self.name = "list-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
