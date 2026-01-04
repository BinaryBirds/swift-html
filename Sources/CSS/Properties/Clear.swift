public struct Clear: Property {
    public enum Value: String, Sendable {
        /// Default. The element is not pushed below left or right floated elements
        case none
        /// The element is pushed below left floated elements
        case left
        /// The element is pushed below right floated elements
        case right
        /// The element is pushed below both left and right floated elements
        case both
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies what should happen with the element that is next to a floating element
    public init(
        _ value: Value
    ) {
        self.name = "clear"
        self.value = value.rawValue
        self.isImportant = false
    }
}
