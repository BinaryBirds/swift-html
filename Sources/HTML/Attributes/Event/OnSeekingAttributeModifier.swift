import SGML

public protocol OnSeekingAttributeModifier {
    associatedtype OnSeekingAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSeekingAttributeModifier where Self: Attributes & Mutable {

    public func onSeeking(
        _ value: OnSeekingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.seeking,
            value: value?.attributeValue
        )
    }
}
