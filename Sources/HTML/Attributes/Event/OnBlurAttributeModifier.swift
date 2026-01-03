import SGML

public protocol OnBlurAttributeModifier {
    associatedtype OnBlurAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnBlurAttributeModifier where Self: Attributes & Mutable {

    public func onBlur(
        _ value: OnBlurAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.blur, value: value?.attributeValue)
    }
}
