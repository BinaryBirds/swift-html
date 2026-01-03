import SGML

public protocol FormEncTypeAttributeModifier {
    associatedtype FormEncTypeAttributeValueType: AttributeValueRepresentable =
        EncTypeAttributeValue
}

extension FormEncTypeAttributeModifier where Self: Attributes & Mutable {

    public func formEncType(
        _ value: FormEncTypeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.formenctype,
            value: value?.attributeValue
        )
    }
}
