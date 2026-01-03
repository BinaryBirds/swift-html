import SGML

public protocol NoValidateAttributeModifier {
    associatedtype NoValidateAttributeValueType: AttributeValueRepresentable =
        String
}

extension NoValidateAttributeModifier where Self: Attributes & Mutable {

    public func noValidate(

        _ value: NoValidateAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.novalidate,
            value: value?.attributeValue
        )
    }
}
