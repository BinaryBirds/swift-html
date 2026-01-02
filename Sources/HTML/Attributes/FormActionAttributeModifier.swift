import SGML

public protocol FormActionAttributeModifier {
    associatedtype FormActionAttributeValue: AttributeValueRepresentable = String
}

extension FormActionAttributeModifier where Self: Attributes & Mutable {

    public func formAction(
        _ value: FormActionAttributeValue?
    ) -> Self {
        setAttribute(key: .formaction, value: value?.attributeValue)
    }
}
