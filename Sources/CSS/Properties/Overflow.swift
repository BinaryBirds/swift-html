public struct Overflow: Property {
    public enum Value: String, Sendable {
        /// The overflow is not clipped. It renders outside the element's box. This is default
        case visible
        /// The overflow is clipped, and the rest of the content will be invisible
        case hidden
        /// The overflow is clipped, but a scroll-bar is added to see the rest of the content
        case scroll
        /// If overflow is clipped, a scroll-bar should be added to see the rest of the content
        case auto
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies what happens if content overflows an element's box
    public init(
        _ value: Value = .visible
    ) {
        self.name = "overflow"
        self.value = value.rawValue
        self.isImportant = false
    }
}
