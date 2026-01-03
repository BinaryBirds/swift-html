import SGML

public protocol AutoCapitalizeAttributeModifier {
    associatedtype
        AutoCapitalizeAttributeValueType: AttributeValueRepresentable = String
}

extension AutoCapitalizeAttributeModifier where Self: Attributes & Mutable {

    public func autoCapitalize(
        _ value: AutoCapitalizeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.autocapitalize,
            value: value?.attributeValue
        )
    }
}
