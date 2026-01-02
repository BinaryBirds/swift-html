import SGML

public protocol FormActionAttributeModifier {
    associatedtype FormActionAttributeValueType: AttributeValueRepresentable =
        String
}

extension FormActionAttributeModifier where Self: Attributes & Mutable {

    public func formAction(
        _ value: FormActionAttributeValueType?
    ) -> Self {
        setAttribute(key: .formaction, value: value?.attributeValue)
    }
}
