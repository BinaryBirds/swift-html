public struct BackgroundOrigin: Property {
    public enum Value: String, Sendable {
        /// Default value. The background image starts from the upper left corner of the padding edge
        case paddingBox = "padding-box"
        /// The background image starts from the upper left corner of the border
        case borderBox = "border-box"
        /// The background image starts from the upper left corner of the content
        case contentBox = "content-box"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the origin position of a background image
    public init(
        _ value: Value = .paddingBox
    ) {
        self.name = "background-origin"
        self.value = value.rawValue
        self.isImportant = false
    }
}
