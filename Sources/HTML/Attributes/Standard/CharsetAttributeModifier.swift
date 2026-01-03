import SGML

public protocol CharsetAttributeModifier {
    associatedtype CharsetAttributeValueType: AttributeValueRepresentable =
        String
}

extension CharsetAttributeModifier where Self: Attributes & Mutable {

    public func charset(

        _ value: CharsetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.charset,
            value: value?.attributeValue
        )
    }
}
