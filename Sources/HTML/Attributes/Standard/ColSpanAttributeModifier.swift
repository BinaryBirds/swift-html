import SGML

public protocol ColSpanAttributeModifier {
    associatedtype ColSpanAttributeValueType: AttributeValueRepresentable = Int
}

extension ColSpanAttributeModifier where Self: Attributes & Mutable {

    public func colSpan(
        _ value: ColSpanAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.colspan,
            value: value?.attributeValue
        )
    }
}
