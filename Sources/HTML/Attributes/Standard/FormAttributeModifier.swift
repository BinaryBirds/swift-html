import SGML

public protocol FormAttributeModifier {
    associatedtype FormAttributeValueType: AttributeValueRepresentable = String
}

extension FormAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Form attribute.
    public func form(
        _ value: FormAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.form,
            value: value?.attributeValue
        )
    }
}
