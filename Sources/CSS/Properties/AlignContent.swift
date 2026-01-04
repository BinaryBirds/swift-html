public enum AlignContentValue: String {
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

public struct AlignContent: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "align-content" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AlignContent {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AlignContent {
    public init(
        _ value: String
    ) {
        self.init(value)
    }

    /// Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    public init(
        _ value: AlignContentValue = .stretch
    ) {
        self.init(value.rawValue)
    }
}
