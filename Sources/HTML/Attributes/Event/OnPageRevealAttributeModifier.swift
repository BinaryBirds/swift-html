import SGML

public protocol OnPageRevealAttributeModifier {
    associatedtype OnPageRevealAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPageRevealAttributeModifier where Self: Attributes & Mutable {

    public func onPageReveal(
        _ value: OnPageRevealAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pageReveal,
            value: value?.attributeValue
        )
    }
}
