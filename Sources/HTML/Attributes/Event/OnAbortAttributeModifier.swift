import SGML

public protocol OnAbortAttributeModifier {
    associatedtype OnAbortAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnAbortAttributeModifier where Self: Attributes & Mutable {

    public func onAbort(
        _ value: OnAbortAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.abort, value: value?.attributeValue)
    }
}
