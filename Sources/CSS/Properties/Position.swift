public struct Position: Property {
    public enum Value: String, Sendable {
        /// Default value. Elements render in order, as they appear in the document flow
        case `static`
        /// The element is positioned relative to its first positioned (not static) ancestor element
        case absolute
        /// The element is positioned relative to the browser window
        case fixed
        /// The element is positioned relative to its normal position, so "left:20px" adds 20 pixels to the element's LEFT position
        case relative
        /// The element is positioned based on the user's scroll position
        /// A sticky element toggles between relative and fixed, depending on the scroll position.
        /// It is positioned relative until a given offset position is met in the viewport - then it "sticks" in place (like position:fixed).
        /// Note: Not supported in IE/Edge 15 or earlier. Supported in Safari from version 6.1 with a -webkit- prefix.
        case sticky
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
    public init(
        _ value: Value = .static
    ) {
        self.name = "position"
        self.value = value.rawValue
        self.isImportant = false
    }
}
