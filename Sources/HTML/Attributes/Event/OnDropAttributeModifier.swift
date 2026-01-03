import SGML

public protocol OnDropAttributeModifier {
    associatedtype OnDropAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDropAttributeModifier where Self: Attributes & Mutable {

    public func onDrop(
        _ value: OnDropAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.drop, value: value?.attributeValue)
    }
}
