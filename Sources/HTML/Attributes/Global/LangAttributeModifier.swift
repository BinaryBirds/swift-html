import SGML

public protocol LangAttributeModifier {
    associatedtype LangAttributeValueType: AttributeValueRepresentable = String
}

extension LangAttributeModifier where Self: Attributes & Mutable {

    public func lang(
        _ value: LangAttributeValueType?
    ) -> Self {
        setAttribute(key: .lang, value: value?.attributeValue)
    }
}
