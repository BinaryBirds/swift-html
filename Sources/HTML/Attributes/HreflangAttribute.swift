import SGML

public protocol HreflangAttributeModifier {
    associatedtype HreflangAttributeValue: AttributeValueRepresentable = String
}

extension HreflangAttributeModifier where Self: Attributes & Mutable {

    public func hreflang(
        _ value: HreflangAttributeValue?
    ) -> Self {
        setAttribute(name: "hreflang", value: value?.attributeValue)
    }
}
