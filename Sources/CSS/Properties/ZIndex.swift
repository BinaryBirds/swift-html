public struct ZIndex: Property {
    public enum Value: String, Sendable {
        /// Sets the stack order equal to its parents. This is default
        case auto
        /// Sets the stack order of the element. Negative numbers are allowed
        case number
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the stack order of a positioned element
    public init(
        _ value: Value = .auto
    ) {
        self.name = "z-index"
        self.value = value.rawValue
        self.isImportant = false
    }
}
