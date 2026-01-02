import SGML

public protocol IsAttributeModifier {
    associatedtype IsAttributeValueType: AttributeValueRepresentable = String
}

extension IsAttributeModifier where Self: Attributes & Mutable {

    public func `is`(
        _ value: IsAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.`is`, value: value?.attributeValue)
    }
}
