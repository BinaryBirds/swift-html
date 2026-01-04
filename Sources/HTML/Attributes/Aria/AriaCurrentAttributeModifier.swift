import SGML

public enum AriaCurrentAttributeValue: String, AttributeValueRepresentable {
    /// Represents the current page within a set of pages.
    case page
    /// Represents the current step within a process.
    case step
    /// Represents the current location within an environment or context.
    case location
    /// Represents the current date within a collection of dates.
    case date
    /// Represents the current time within a set of times.
    case time
    /// Represents the current item within a set.
    case `true` = "true"
    /// Does not represent the current item within a set.
    case `false` = "false"
}

public protocol AriaCurrentAttributeModifier {
    associatedtype AriaCurrentAttributeValueType: AttributeValueRepresentable =
        AriaCurrentAttributeValue
}

extension AriaCurrentAttributeModifier where Self: Attributes & Mutable {

    public func ariaCurrent(
        _ value: AriaCurrentAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.current,
            value: value?.attributeValue
        )
    }
}
