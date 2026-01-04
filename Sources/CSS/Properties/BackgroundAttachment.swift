public struct BackgroundAttachment: Property {
    public enum Value: String, Sendable {
        /// The background image will scroll with the page. This is default
        case scroll
        /// The background image will not scroll with the page
        case fixed
        /// The background image will scroll with the element's contents
        case local
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets whether a background image scrolls with the rest of the page, or is fixed
    public init(
        _ value: Value = .scroll
    ) {
        self.name = "background-attachment"
        self.value = value.rawValue
        self.isImportant = false
    }
}
