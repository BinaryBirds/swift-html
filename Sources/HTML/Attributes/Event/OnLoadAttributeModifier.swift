import SGML

public protocol OnLoadAttributeModifier {
    associatedtype OnLoadAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnLoadAttributeModifier where Self: Attributes & Mutable {

    public func onLoad(
        _ value: OnLoadAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.load, value: value?.attributeValue)
    }
}
