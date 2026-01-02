import SGML

public protocol KindAttributeModifier {
    associatedtype KindAttributeValueType: AttributeValueRepresentable = String
}

extension KindAttributeModifier where Self: Attributes & Mutable {

    public func kind(

        _ value: KindAttributeValueType?
    ) -> Self {
        setAttribute(key: StandardAttributeKey.kind, value: value?.attributeValue)
    }
}
