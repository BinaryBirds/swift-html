import SGML

public protocol ReversedAttributeModifier {
    associatedtype ReversedAttributeValueType: AttributeValueRepresentable =
        String
}

extension ReversedAttributeModifier where Self: Attributes & Mutable {

    public func reversed(

        _ value: ReversedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.reversed,
            value: value?.attributeValue
        )
    }
}
