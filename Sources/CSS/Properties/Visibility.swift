public struct Visibility: Property {
    public enum Value: String, Sendable {
        /// Default value. The element is visible
        case visible
        /// The element is hidden (but still takes up space)
        case hidden
        /// Only for table rows (<tr>), row groups (<tbody>), columns (<col>), column groups (<colgroup>).
        /// This value removes a row or column, but it does not affect the table layout.
        /// The space taken up by the row or column will be available for other content.
        /// If collapse is used on other elements, it renders as "hidden"
        case collapse
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not an element is visible
    public init(
        _ value: Value = .visible
    ) {
        self.name = "visibility"
        self.value = value.rawValue
        self.isImportant = false
    }
}
