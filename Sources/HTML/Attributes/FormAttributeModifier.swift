import SGML

public protocol FormAttributeModifier {
    associatedtype FormAttributeValue: AttributeValueRepresentable = String
}

extension FormAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Form attribute.
    public func form(
        _ value: FormAttributeValue?
    ) -> Self {
        setAttribute(key: .form, value: value?.attributeValue)
    }
}
