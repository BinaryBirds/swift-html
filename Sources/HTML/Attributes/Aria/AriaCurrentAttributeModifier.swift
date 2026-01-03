import SGML

public protocol AriaCurrentAttributeModifier {
    associatedtype AriaCurrentAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaCurrentAttributeModifier where Self: Attributes & Mutable {

    public func ariaCurrent(
        _ value: AriaCurrentAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.current,
            value: value?.attributeValue
        )
    }
}
