import SGML

public protocol OnCanPlayAttributeModifier {
    associatedtype OnCanPlayAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnCanPlayAttributeModifier where Self: Attributes & Mutable {

    public func onCanPlay(
        _ value: OnCanPlayAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.canPlay,
            value: value?.attributeValue
        )
    }
}
