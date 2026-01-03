import SGML

public protocol DeferAttributeModifier {
    associatedtype DeferAttributeValueType: AttributeValueRepresentable = String
}

extension DeferAttributeModifier where Self: Attributes & Mutable {

    public func `defer`(
        _ value: DeferAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.defer,
            value: value?.attributeValue
        )
    }
}
