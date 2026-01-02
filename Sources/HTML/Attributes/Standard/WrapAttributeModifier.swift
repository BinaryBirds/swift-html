import SGML

public protocol WrapAttributeModifier {
    associatedtype WrapAttributeValueType: AttributeValueRepresentable = String
}

extension WrapAttributeModifier where Self: Attributes & Mutable {

    public func wrap(

        _ value: WrapAttributeValueType?
    ) -> Self {
        setAttribute(key: StandardAttributeKey.wrap, value: value?.attributeValue)
    }
}
