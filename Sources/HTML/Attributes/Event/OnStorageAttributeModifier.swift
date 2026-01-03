import SGML

public protocol OnStorageAttributeModifier {
    associatedtype OnStorageAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnStorageAttributeModifier where Self: Attributes & Mutable {

    public func onStorage(
        _ value: OnStorageAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.storage,
            value: value?.attributeValue
        )
    }
}
