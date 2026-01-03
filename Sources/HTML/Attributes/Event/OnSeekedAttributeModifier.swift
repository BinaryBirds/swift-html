import SGML

public protocol OnSeekedAttributeModifier {
    associatedtype OnSeekedAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSeekedAttributeModifier where Self: Attributes & Mutable {

    public func onSeeked(
        _ value: OnSeekedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.seeked,
            value: value?.attributeValue
        )
    }
}
