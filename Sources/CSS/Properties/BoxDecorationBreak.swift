public struct BoxDecorationBreak: Property {
    public enum Value: String, Sendable {
        /// Default. Box decorations are applied to the element as a whole and break at the edges of the element fragments
        case slice
        /// Box decorations apply to each fragment of the element as if the fragments were individual elements. Borders wrap the four edges of each fragment of the element, and backgrounds are redrawn in full for each fragment
        case clone
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
    public init(
        _ value: Value = .slice
    ) {
        self.name = "box-decoration-break"
        self.value = value.rawValue
        self.isImportant = false
    }
}
