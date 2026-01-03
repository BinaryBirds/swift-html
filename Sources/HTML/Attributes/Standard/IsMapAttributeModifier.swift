import SGML

public protocol IsMapAttributeModifier {
    associatedtype IsMapAttributeValueType: AttributeValueRepresentable = String
}

extension IsMapAttributeModifier where Self: Attributes & Mutable {

    public func isMap(

        _ value: IsMapAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.ismap,
            value: value?.attributeValue
        )
    }
}
