import SGML

public protocol SrcAttributeModifier {
    associatedtype SrcAttributeValueType: AttributeValueRepresentable = String
}

extension SrcAttributeModifier where Self: Attributes & Mutable {

    public func src(
        _ value: SrcAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.src,
            value: value?.attributeValue
        )
    }
}
