public struct BoxSizing: Property {
    public enum Value: String, Sendable {
        /// Default. The width and height properties (and min/max properties) includes only the content. Border and padding are not included
        case contentBox = "content-box"
        /// The width and height properties (and min/max properties) includes content, padding and border
        case borderBox = "border-box"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines how the width and height of an element are calculated: should they include padding and borders, or not
    public init(
        _ value: Value = .contentBox
    ) {
        self.name = "box-sizing"
        self.value = value.rawValue
        self.isImportant = false
    }
}
