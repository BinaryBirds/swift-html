import SGML

public protocol TabIndexAttributeModifier {
    associatedtype TabIndexAttributeValueType: AttributeValueRepresentable = Int
}

extension TabIndexAttributeModifier where Self: Attributes & Mutable {

    public func tabIndex(
        _ value: TabIndexAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.tabindex,
            value: value?.attributeValue
        )
    }
}
