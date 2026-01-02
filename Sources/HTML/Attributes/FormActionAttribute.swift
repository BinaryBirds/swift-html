import SGML

public protocol FormActionAttributeModifier {
    associatedtype FormActionAttributeValue: AttributeValueRepresentable = String
}

extension FormActionAttributeModifier where Self: Attributes & Mutable {

    public func formAction(
        _ value: FormActionAttributeValue?
    ) -> Self {
        setAttribute(name: "formaction", value: value?.attributeValue)
    }
}
