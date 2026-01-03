import SGML

public protocol HrefLangAttributeModifier {
    associatedtype HrefLangAttributeValueType: AttributeValueRepresentable =
        String
}

extension HrefLangAttributeModifier where Self: Attributes & Mutable {

    public func hrefLang(
        _ value: HrefLangAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.hreflang,
            value: value?.attributeValue
        )
    }
}
