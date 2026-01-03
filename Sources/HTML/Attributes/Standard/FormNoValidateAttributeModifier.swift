import SGML

public protocol FormNoValidateAttributeModifier {
    associatedtype
        FormNoValidateAttributeValueType: AttributeValueRepresentable = String
}

extension FormNoValidateAttributeModifier where Self: Attributes & Mutable {

    public func formNoValidate(
        _ value: FormNoValidateAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.formnovalidate,
            value: value?.attributeValue
        )
    }
}
