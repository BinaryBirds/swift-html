public struct PointerEvents: Property {
    public enum Value: String, Sendable {
        /// The element reacts to pointer events, like :hover and click. This is default
        case auto
        /// The element does not react to pointer events
        case none
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines whether or not an element reacts to pointer events
    public init(
        _ value: Value = .auto
    ) {
        self.name = "pointer-events"
        self.value = value.rawValue
        self.isImportant = false
    }
}
