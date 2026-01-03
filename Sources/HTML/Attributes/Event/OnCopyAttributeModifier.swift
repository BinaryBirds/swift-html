import SGML

public protocol OnCopyAttributeModifier {
    associatedtype OnCopyAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnCopyAttributeModifier where Self: Attributes & Mutable {

    public func onCopy(
        _ value: OnCopyAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.copy, value: value?.attributeValue)
    }
}
