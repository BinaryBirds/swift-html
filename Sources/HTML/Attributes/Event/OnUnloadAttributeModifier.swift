import SGML

public protocol OnUnloadAttributeModifier {
    associatedtype OnUnloadAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnUnloadAttributeModifier where Self: Attributes & Mutable {

    public func onUnload(
        _ value: OnUnloadAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.unload,
            value: value?.attributeValue
        )
    }
}
