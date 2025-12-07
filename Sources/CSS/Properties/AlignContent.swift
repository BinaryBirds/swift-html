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

public func AlignContent(
    _ value: String
) -> Property {
    Property(name: "align-content", value: value)
}

/// Specifies the alignment between the lines inside a flexible container when the items do not use all available space
public func AlignContent(
    _ value: AlignContentValue = .stretch
) -> Property {
    AlignContent(value.rawValue)
}
