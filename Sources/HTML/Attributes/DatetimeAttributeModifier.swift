import SGML

public protocol DatetimeAttributeModifier {
    associatedtype DatetimeAttributeValueType: AttributeValueRepresentable = String
}

extension DatetimeAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Datetime attribute.
    public func datetime(
        _ value: DatetimeAttributeValueType?
    ) -> Self {
        setAttribute(key: .datetime, value: value?.attributeValue)
    }
}
