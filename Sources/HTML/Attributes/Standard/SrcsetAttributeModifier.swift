import SGML

public protocol SrcSetAttributeModifier {
    associatedtype SrcSetAttributeValueType: AttributeValueRepresentable =
        String
}

extension SrcSetAttributeModifier where Self: Attributes & Mutable {

    public func srcSet(
        _ value: SrcSetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.srcset,
            value: value?.attributeValue
        )
    }
}
