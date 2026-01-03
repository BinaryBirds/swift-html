import SGML

public protocol OnPlayAttributeModifier {
    associatedtype OnPlayAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPlayAttributeModifier where Self: Attributes & Mutable {

    public func onPlay(
        _ value: OnPlayAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.play, value: value?.attributeValue)
    }
}
