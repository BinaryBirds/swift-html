import SGML

public protocol MinLengthAttributeModifier {
    associatedtype MinLengthAttributeValueType: AttributeValueRepresentable =
        Int
}

extension MinLengthAttributeModifier where Self: Attributes & Mutable {

    public func minLength(
        _ value: MinLengthAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.minlength,
            value: value?.attributeValue
        )
    }
}
