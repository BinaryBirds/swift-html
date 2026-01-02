import SGML

public protocol MinLengthAttributeModifier {
    associatedtype MinLengthAttributeValueType: AttributeValueRepresentable = String
}

extension MinLengthAttributeModifier where Self: Attributes & Mutable {

    public func minLength(

        _ value: MinLengthAttributeValueType?
    ) -> Self {
        setAttribute(key: StandardAttributeKey.minlength, value: value?.attributeValue)
    }
}
