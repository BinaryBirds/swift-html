import SGML

public protocol AriaAtomicAttributeModifier {
    associatedtype AriaAtomicAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaAtomicAttributeModifier where Self: Attributes & Mutable {

    public func ariaAtomic(
        _ value: AriaAtomicAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.atomic, value: value?.attributeValue)
    }
}
