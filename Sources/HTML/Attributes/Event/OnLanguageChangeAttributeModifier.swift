import SGML

public protocol OnLanguageChangeAttributeModifier {
    associatedtype
        OnLanguageChangeAttributeValueType: AttributeValueRepresentable = String
}

extension OnLanguageChangeAttributeModifier where Self: Attributes & Mutable {

    public func onLanguageChange(
        _ value: OnLanguageChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.languageChange,
            value: value?.attributeValue
        )
    }
}
