public struct TransformStyle: Property {
    public enum Value: String, Sendable {
        /// Specifies that child elements will NOT preserve its 3D position. This is default
        case flat
        /// Specifies that child elements will preserve its 3D position
        case preserve3d = "preserve-3d"
        /// Sets this property to its default value. Read about initial
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how nested elements are rendered in 3D space
    public init(
        _ value: Value = .flat
    ) {
        self.name = "transform-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
