import SGML

public protocol DatetimeAttributeModifier {
    associatedtype DatetimeAttributeValue: AttributeValueRepresentable = String
}

extension DatetimeAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Datetime attribute.
    public func datetime(
        _ value: DatetimeAttributeValue?
    ) -> Self {
        setAttribute(key: .datetime, value: value?.attributeValue)
    }
}
