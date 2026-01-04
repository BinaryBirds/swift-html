public struct Isolation: Property {
    public enum Value: String, Sendable {
        /// Default. A new stacking context is created only if one of the properties applied to the element requires it
        case auto
        /// A new stacking context must be created
        case isolate
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines whether an element must create a new stacking content
    public init(
        _ value: Value = .auto
    ) {
        self.name = "isolation"
        self.value = value.rawValue
        self.isImportant = false
    }
}
