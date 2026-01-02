import SGML

public protocol TabindexAttributeModifier {
    associatedtype TabindexAttributeValueType: AttributeValueRepresentable = Int
}

extension TabindexAttributeModifier where Self: Attributes & Mutable {

    public func tabindex(
        _ value: TabindexAttributeValueType?
    ) -> Self {
        setAttribute(key: .tabindex, value: value?.attributeValue)
    }
}
