import SGML

public protocol DateTimeAttributeModifier {
    associatedtype DateTimeAttributeValueType: AttributeValueRepresentable =
        String
}

extension DateTimeAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Datetime attribute.
    public func dateTime(
        _ value: DateTimeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.datetime,
            value: value?.attributeValue
        )
    }
}
