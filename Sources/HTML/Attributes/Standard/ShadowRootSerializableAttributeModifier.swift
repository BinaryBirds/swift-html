import SGML

public protocol ShadowRootSerializableAttributeModifier {
    associatedtype
        ShadowRootSerializableAttributeValueType: AttributeValueRepresentable =
        String
}

extension ShadowRootSerializableAttributeModifier
where Self: Attributes & Mutable {

    public func shadowRootSerializable(
        _ value: ShadowRootSerializableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shadowrootserializable,
            value: value?.attributeValue
        )
    }
}
