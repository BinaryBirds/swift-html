public struct PageBreakAfter: Property {
    public enum Value: String, Sendable {
        /// Default. Automatic page-break
        case auto
        /// Always insert a page-break after the element
        case always
        /// Avoid a page-break after the element (if possible)
        case avoid
        /// Insert page-break after the element so that the next page is formatted as a left page
        case left
        /// Insert page-break after the element so that the next page is formatted as a right page
        case right
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the page-break behavior after an element
    public init(
        _ value: Value = .auto
    ) {
        self.name = "page-break-after"
        self.value = value.rawValue
        self.isImportant = false
    }
}
