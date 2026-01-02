import SGML

public protocol AccesskeyAttributeModifier {
    associatedtype AccesskeyAttributeValueType: AttributeValueRepresentable = String
}

extension AccesskeyAttributeModifier where Self: Attributes & Mutable {

    public func accesskey(
        _ value: AccesskeyAttributeValueType?
    ) -> Self {
        setAttribute(key: .accesskey, value: value?.attributeValue)
    }
}
