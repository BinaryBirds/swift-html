import SGML

public protocol AsyncAttributeModifier {
    associatedtype AsyncAttributeValueType: AttributeValueRepresentable = String
}

extension AsyncAttributeModifier where Self: Attributes & Mutable {

    public func `async`(
        _ value: AsyncAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.`async`,
            value: value?.attributeValue
        )
    }
}
