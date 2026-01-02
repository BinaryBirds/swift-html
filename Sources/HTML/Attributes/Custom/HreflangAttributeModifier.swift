import SGML

public protocol HreflangAttributeModifier {
    associatedtype HreflangAttributeValueType: AttributeValueRepresentable =
        String
}

extension HreflangAttributeModifier where Self: Attributes & Mutable {

    public func hreflang(
        _ value: HreflangAttributeValueType?
    ) -> Self {
        setAttribute(key: .hreflang, value: value?.attributeValue)
    }
}
