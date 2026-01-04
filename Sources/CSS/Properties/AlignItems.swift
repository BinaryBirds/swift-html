public struct AlignItems: Property {
    public enum Value: String, Sendable {
        /// Default. Items are stretched to fit the container
        case stretch
        /// Items are positioned at the center of the container
        case center
        /// Items are positioned at the beginning of the container
        case flexStart = "flex-start"
        /// Items are positioned at the end of the container
        case flexEnd = "flex-end"
        /// Items are positioned at the baseline of the container
        case baseline
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the alignment for items inside a flexible container
    public init(
        _ value: Value = .stretch
    ) {
        self.name = "align-items"
        self.value = value.rawValue
        self.isImportant = false
    }
}
