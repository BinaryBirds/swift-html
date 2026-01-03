import SGML

public protocol MaxLengthAttributeModifier {
    associatedtype MaxLengthAttributeValueType: AttributeValueRepresentable =
        Int
}

extension MaxLengthAttributeModifier where Self: Attributes & Mutable {

    public func maxLength(
        _ value: MaxLengthAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.maxlength,
            value: value?.attributeValue
        )
    }
}
