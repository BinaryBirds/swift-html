import SGML

public protocol OnStorageAttributeModifier {
    associatedtype OnStorageAttributeValueType: AttributeValueRepresentable = String
}

extension OnStorageAttributeModifier where Self: Attributes & Mutable {

    public func onStorage(
        _ value: OnStorageAttributeValueType?
    ) -> Self {
        setAttribute(key: .onstorage, value: value?.attributeValue)
    }
}
