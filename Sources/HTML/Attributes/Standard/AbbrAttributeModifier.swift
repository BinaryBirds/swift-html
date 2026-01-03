import SGML

public protocol AbbrAttributeModifier {
    associatedtype AbbrAttributeValueType: AttributeValueRepresentable = String
}

extension AbbrAttributeModifier where Self: Attributes & Mutable {

    public func abbr(
        _ value: AbbrAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.abbr,
            value: value?.attributeValue
        )
    }
}
