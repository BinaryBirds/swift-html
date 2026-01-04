public struct FlexWrap: Property {
    public enum Value: String, Sendable {
        /// Default value. Specifies that the flexible items will not wrap
        case nowrap
        /// Specifies that the flexible items will wrap if necessary
        case wrap
        /// Specifies that the flexible items will wrap, if necessary, in reverse order
        case wrapReverse = "wrap-reverse"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether the flexible items should wrap or not
    public init(
        _ value: Value = .nowrap
    ) {
        self.name = "flex-wrap"
        self.value = value.rawValue
        self.isImportant = false
    }
}
