public struct PageBreakInside: Property {
    public enum Value: String, Sendable {
        /// Default. Automatic page-breaks
        case auto
        /// Avoid page-break inside the element (if possible)
        case avoid
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the page-break behavior inside an element
    public init(
        _ value: Value = .auto
    ) {
        self.name = "page-break-inside"
        self.value = value.rawValue
        self.isImportant = false
    }
}
