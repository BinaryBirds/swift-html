import SGML

public protocol SrcLangAttributeModifier {
    associatedtype SrcLangAttributeValueType: AttributeValueRepresentable =
        String
}

extension SrcLangAttributeModifier where Self: Attributes & Mutable {

    public func srcLang(

        _ value: SrcLangAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.srclang,
            value: value?.attributeValue
        )
    }
}
