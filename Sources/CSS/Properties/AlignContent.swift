public struct AlignContent: Property {

    public enum Value: String, Sendable {
        /// Default value. Lines stretch to take up the remaining space
        case stretch
        /// Lines are packed toward the center of the flex container
        case center
        /// Lines are packed toward the start of the flex container
        case flexStart = "flex-start"
        /// Lines are packed toward the end of the flex container
        case flexEnd = "flex-end"
        /// Lines are evenly distributed in the flex container
        case spaceBetween = "space-between"
        /// Lines are evenly distributed in the flex container, with half-size spaces on either end
        case spaceAround = "space-around"
        /// Lines are evenly distributed in the flex container, with equal space around them
        case spaceEvenly = "space-evenly"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    public init(
        _ value: Value = .stretch
    ) {
        self.name = "align-content"
        self.value = value.rawValue
        self.isImportant = false
    }
}
