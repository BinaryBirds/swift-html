import SGML

public protocol IdAttributeModifier {
    associatedtype IdAttributeValueType: AttributeValueRepresentable = String
}

extension IdAttributeModifier where Self: Attributes & Mutable {

    /// Sets an id attribute.
    public func id(
        _ value: IdAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.id, value: value?.attributeValue)
    }
}
